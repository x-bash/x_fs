# shellcheck shell=sh disable=SC3043,SC2164

# author:       Li Junhao           l@x-cmd.com    edwinjhlee.github.io
# maintainer:   Li Junhao
# license:      GPLv3

# linux

case "$(os name)" in
    darwin)
        ___x_cmd_fs_ls_cpu(){
            sysctl -a | grep machdep.cpu
        }        

        ___x_cmd_fs_ls_mem(){
            memory_pressure
        }

        ___x_cmd_fs_ls_net(){
            memory_pressure
        }

        ;;
    *)
        ___x_cmd_fs_ls_cpu(){
            cat /proc/cpuinfo
        }

        ___x_cmd_fs_ls_mem(){
            free
        }

        ___x_cmd_fs_ls_net(){
            memory_pressure
        }
esac


___x_cmd_fs_ls_1(){
    if [ "$#" -eq 1 ]; then
        case "$1" in
            :*.zip)     ;;
            :cpu)       ___x_cmd_fs_ls_cpu ;;
            :mem)       ___x_cmd_fs_ls_mem ;;
            *)          return 1
        esac
    fi
    return 0
}

___x_cmd_ls(){
    ___x_cmd_fs_ls_1 "$@" || ls "$@"
}
