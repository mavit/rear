# Provide the necessary variables to make NETFS use USB information

if [[ -z "$BACKUP_URL" ]]; then
    [[ "$USB_DEVICE" ]]
    StopIfError "You must specify either BACKUP_URL or USB_DEVICE !"

    BACKUP_URL="usb://$USB_DEVICE"
fi

USB_PREFIX="rear/$(uname -n)/$(date +%Y%m%d.%H%M)"
NETFS_PREFIX="$USB_PREFIX"
