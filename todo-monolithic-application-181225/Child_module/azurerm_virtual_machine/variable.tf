variable "virtual_machine"{
    type=map(object({
        subnet_name=string
        location=string
        virtual_network_name=string
        resource_group_name=string
        pip_name=string
        nic_name=string
        vm_name=string
        size=string
        admin_username=string
        admin_password=string
        
    }))
}