enum WorkerPoolRegionsItem {
  regionUnspecified("REGION_UNSPECIFIED"),
  usCentral1("us-central1"),
  usWest1("us-west1"),
  usEast1("us-east1"),
  usEast4("us-east4");

  const WorkerPoolRegionsItem(this.wireValue);
  final String wireValue;

  static WorkerPoolRegionsItem fromValue(String value) {
    for (final item in WorkerPoolRegionsItem.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown WorkerPoolRegionsItem value: $value');
  }
}
