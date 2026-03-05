/// Canonical code of the condition.
enum StatusConditionCanonicalCode {
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

  const StatusConditionCanonicalCode(this.wireValue);
  final String wireValue;

  static StatusConditionCanonicalCode fromValue(String value) {
    for (final item in StatusConditionCanonicalCode.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown StatusConditionCanonicalCode value: $value');
  }
}

