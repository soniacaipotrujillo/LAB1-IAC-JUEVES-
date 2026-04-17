resource"docker_containeer""api"{
    name="api-localhost
    image="lab/api"

ports{
    internal="80"
    external=var.api_port
}
 }