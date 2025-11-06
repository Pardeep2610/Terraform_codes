variable "rgtinku"{
    type=map(object({
        rg_name=string
        location=string
    }))
}