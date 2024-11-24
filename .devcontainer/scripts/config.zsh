clean_sso() {
    rm -rf ~/.aws/cli
    rm -rf ~/.aws/sso
}

echo_env() {
    echo -e "\n$1"
    echo; env | grep -i aws
    echo; env | grep -i target
}

set_env() {
    export AWS_PROFILE=$1
    echo_env "Environment has been changed to: $AWS_PROFILE"
}

change_env() {
    PS3="Select the CMD Lab Environment: "

    select mantel_env in \
        mantel-sandpit1 \
        mantel-sandpit2 \
        Exit
    do
        case $mantel_env in
            "mantel-sandpit1")
                set_env "mantel-sandpit1"
                break;;
            "mantel-sandpit2")
                set_env "mantel-sandpit2"
                break;;       
            "Exit")
                echo "Exiting script."
                break;;
            *)
            echo "Invalid option $REPLY. Please try again.";;
        esac
    done
}

echo_env "Environment is set to: $AWS_PROFILE"
