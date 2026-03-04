/// The allocation type for this traffic target.
enum GoogleCloudRunV2TrafficTargetType {
  trafficTargetAllocationTypeUnspecified(
    "TRAFFIC_TARGET_ALLOCATION_TYPE_UNSPECIFIED",
  ),
  trafficTargetAllocationTypeLatest("TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST"),
  trafficTargetAllocationTypeRevision(
    "TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION",
  );

  const GoogleCloudRunV2TrafficTargetType(this.wireValue);
  final String wireValue;

  static GoogleCloudRunV2TrafficTargetType fromValue(String value) {
    for (final item in GoogleCloudRunV2TrafficTargetType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown GoogleCloudRunV2TrafficTargetType value: $value',
    );
  }
}
