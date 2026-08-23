/// Action to execute when ActionCondition is true. When RETRY_TASK is specified, we will retry failed tasks if we notice any exit code match and fail tasks if no match is found. Likewise, when FAIL_TASK is specified, we will fail tasks if we notice any exit code match and retry tasks if no match is found.
enum LifecyclePolicyAction {
  actionUnspecified("ACTION_UNSPECIFIED"),
  retryTask("RETRY_TASK"),
  failTask("FAIL_TASK");

  const LifecyclePolicyAction(this.wireValue);
  final String wireValue;

  static LifecyclePolicyAction fromValue(String value) {
    for (final item in LifecyclePolicyAction.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown LifecyclePolicyAction value: $value');
  }
}
