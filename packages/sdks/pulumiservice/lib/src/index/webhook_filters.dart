enum WebhookFilters {
  stackCreated("stack_created"),
  stackDeleted("stack_deleted"),
  updateSucceeded("update_succeeded"),
  updateFailed("update_failed"),
  previewSucceeded("preview_succeeded"),
  previewFailed("preview_failed"),
  destroySucceeded("destroy_succeeded"),
  destroyFailed("destroy_failed"),
  refreshSucceeded("refresh_succeeded"),
  refreshFailed("refresh_failed"),
  deploymentQueued("deployment_queued"),
  deploymentStarted("deployment_started"),
  deploymentSucceeded("deployment_succeeded"),
  deploymentFailed("deployment_failed"),
  driftDetected("drift_detected"),
  driftDetectionSucceeded("drift_detection_succeeded"),
  driftDetectionFailed("drift_detection_failed"),
  driftRemediationSucceeded("drift_remediation_succeeded"),
  driftRemediationFailed("drift_remediation_failed"),
  environmentCreated("environment_created"),
  environmentDeleted("environment_deleted"),
  environmentRevisionCreated("environment_revision_created"),
  environmentRevisionRetracted("environment_revision_retracted"),
  environmentRevisionTagCreated("environment_revision_tag_created"),
  environmentRevisionTagDeleted("environment_revision_tag_deleted"),
  environmentRevisionTagUpdated("environment_revision_tag_updated"),
  environmentTagCreated("environment_tag_created"),
  environmentTagDeleted("environment_tag_deleted"),
  environmentTagUpdated("environment_tag_updated"),
  importedEnvironmentChanged("imported_environment_changed");

  const WebhookFilters(this.wireValue);
  final String wireValue;

  static WebhookFilters fromValue(String value) {
    for (final item in WebhookFilters.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WebhookFilters value: $value');
  }
}
