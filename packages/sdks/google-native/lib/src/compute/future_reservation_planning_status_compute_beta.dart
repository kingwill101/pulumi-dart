/// Planning state before being submitted for evaluation
enum FutureReservationPlanningStatusComputeBeta {
  draft("DRAFT"),
  planningStatusUnspecified("PLANNING_STATUS_UNSPECIFIED"),
  submitted("SUBMITTED");

  const FutureReservationPlanningStatusComputeBeta(this.wireValue);
  final String wireValue;

  static FutureReservationPlanningStatusComputeBeta fromValue(String value) {
    for (final item in FutureReservationPlanningStatusComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FutureReservationPlanningStatusComputeBeta value: $value');
  }
}
