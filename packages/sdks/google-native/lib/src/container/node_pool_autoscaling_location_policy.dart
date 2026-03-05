/// Location policy used when scaling up a nodepool.
enum NodePoolAutoscalingLocationPolicy {
  locationPolicyUnspecified("LOCATION_POLICY_UNSPECIFIED"),
  balanced("BALANCED"),
  any("ANY");

  const NodePoolAutoscalingLocationPolicy(this.wireValue);
  final String wireValue;

  static NodePoolAutoscalingLocationPolicy fromValue(String value) {
    for (final item in NodePoolAutoscalingLocationPolicy.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodePoolAutoscalingLocationPolicy value: $value');
  }
}

