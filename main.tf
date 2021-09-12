resource "kubernetes_cron_job" "vault_unseal" {
  metadata {
    name      = var.name
    namespace = var.namespace
  }
  spec {
    concurrency_policy            = "Replace"
    failed_jobs_history_limit     = 1
    schedule                      = var.schedule
    successful_jobs_history_limit = 1
    suspend                       = false
    job_template {
      metadata {}
      spec {
        template {
          metadata {}
          spec {
            container {
              name              = "vault-unseal-cronjob"
              image             = "ghcr.io/omegion/vault-unseal:v0.1.0"
              image_pull_policy = "IfNotPresent"
              args = [
                "unseal",
                "--address=${var.vault_address}",
                "--shard=${var.vault_shards[0]}",
                "--shard=${var.vault_shards[1]}",
                "--shard=${var.vault_shards[2]}",
              ]
            }
            dns_policy                       = "ClusterFirst"
            restart_policy                   = "OnFailure"
            termination_grace_period_seconds = 30
          }
        }
      }
    }
  }
}