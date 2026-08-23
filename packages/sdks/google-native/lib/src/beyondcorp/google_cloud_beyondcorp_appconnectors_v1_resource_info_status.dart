/// Overall health status. Overall status is derived based on the status of each sub level resources.
enum GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoStatus {
  healthStatusUnspecified("HEALTH_STATUS_UNSPECIFIED"),
  healthy("HEALTHY"),
  unhealthy("UNHEALTHY"),
  unresponsive("UNRESPONSIVE"),
  degraded("DEGRADED");

  const GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoStatus(this.wireValue);
  final String wireValue;

  static GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoStatus fromValue(String value) {
    for (final item in GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown GoogleCloudBeyondcorpAppconnectorsV1ResourceInfoStatus value: $value');
  }
}
