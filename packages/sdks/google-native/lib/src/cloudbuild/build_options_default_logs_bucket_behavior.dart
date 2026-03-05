/// Optional. Option to specify how default logs buckets are setup.
enum BuildOptionsDefaultLogsBucketBehavior {
  defaultLogsBucketBehaviorUnspecified("DEFAULT_LOGS_BUCKET_BEHAVIOR_UNSPECIFIED"),
  regionalUserOwnedBucket("REGIONAL_USER_OWNED_BUCKET");

  const BuildOptionsDefaultLogsBucketBehavior(this.wireValue);
  final String wireValue;

  static BuildOptionsDefaultLogsBucketBehavior fromValue(String value) {
    for (final item in BuildOptionsDefaultLogsBucketBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown BuildOptionsDefaultLogsBucketBehavior value: $value');
  }
}

