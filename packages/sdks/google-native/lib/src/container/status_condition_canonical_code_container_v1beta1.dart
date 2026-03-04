/// Canonical code of the condition.
enum StatusConditionCanonicalCodeContainerV1beta1 {
  ok("OK"),
  cancelled("CANCELLED"),
  unknown("UNKNOWN"),
  invalidArgument("INVALID_ARGUMENT"),
  deadlineExceeded("DEADLINE_EXCEEDED"),
  notFound("NOT_FOUND"),
  alreadyExists("ALREADY_EXISTS"),
  permissionDenied("PERMISSION_DENIED"),
  unauthenticated("UNAUTHENTICATED"),
  resourceExhausted("RESOURCE_EXHAUSTED"),
  failedPrecondition("FAILED_PRECONDITION"),
  aborted("ABORTED"),
  outOfRange("OUT_OF_RANGE"),
  unimplemented("UNIMPLEMENTED"),
  internal("INTERNAL"),
  unavailable("UNAVAILABLE"),
  dataLoss("DATA_LOSS");

  const StatusConditionCanonicalCodeContainerV1beta1(this.wireValue);
  final String wireValue;

  static StatusConditionCanonicalCodeContainerV1beta1 fromValue(String value) {
    for (final item in StatusConditionCanonicalCodeContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown StatusConditionCanonicalCodeContainerV1beta1 value: $value',
    );
  }
}
