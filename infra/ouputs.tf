output "static_web_app" {
  value = module.static_web_app # FIXME: Either mark api_key as non-sensitive or only output default_host_name from this module
  description = "Outputs from static web app module"
}