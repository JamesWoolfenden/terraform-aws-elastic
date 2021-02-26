output "ElasticSearch_Endpoint" {
  value = aws_elasticsearch_domain.es1.endpoint
}

output "ElasticSearch_Kibana_Endpoint" {
  value = aws_elasticsearch_domain.es1.kibana_endpoint
}
