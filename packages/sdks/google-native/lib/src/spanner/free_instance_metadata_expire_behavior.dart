/// Specifies the expiration behavior of a free instance. The default of ExpireBehavior is `REMOVE_AFTER_GRACE_PERIOD`. This can be modified during or after creation, and before expiration.
enum FreeInstanceMetadataExpireBehavior {
  expireBehaviorUnspecified("EXPIRE_BEHAVIOR_UNSPECIFIED"),
  freeToProvisioned("FREE_TO_PROVISIONED"),
  removeAfterGracePeriod("REMOVE_AFTER_GRACE_PERIOD");

  const FreeInstanceMetadataExpireBehavior(this.wireValue);
  final String wireValue;

  static FreeInstanceMetadataExpireBehavior fromValue(String value) {
    for (final item in FreeInstanceMetadataExpireBehavior.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FreeInstanceMetadataExpireBehavior value: $value');
  }
}

