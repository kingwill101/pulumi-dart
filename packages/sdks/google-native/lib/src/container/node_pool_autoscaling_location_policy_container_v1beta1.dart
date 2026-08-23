/// Location policy used when scaling up a nodepool.
enum NodePoolAutoscalingLocationPolicyContainerV1beta1 {
  locationPolicyUnspecified("LOCATION_POLICY_UNSPECIFIED"),
  balanced("BALANCED"),
  any("ANY");

  const NodePoolAutoscalingLocationPolicyContainerV1beta1(this.wireValue);
  final String wireValue;

  static NodePoolAutoscalingLocationPolicyContainerV1beta1 fromValue(String value) {
    for (final item in NodePoolAutoscalingLocationPolicyContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown NodePoolAutoscalingLocationPolicyContainerV1beta1 value: $value');
  }
}
