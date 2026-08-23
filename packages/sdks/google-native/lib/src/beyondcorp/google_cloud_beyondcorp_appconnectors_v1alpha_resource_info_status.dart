/// Overall health status. Overall status is derived based on the status of each sub level resources.
enum GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoStatus {
  healthStatusUnspecified("HEALTH_STATUS_UNSPECIFIED"),
  healthy("HEALTHY"),
  unhealthy("UNHEALTHY"),
  unresponsive("UNRESPONSIVE"),
  degraded("DEGRADED");

  const GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoStatus(this.wireValue);
  final String wireValue;

  static GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoStatus fromValue(String value) {
    for (final item in GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfoStatus value: $value');
  }
}
