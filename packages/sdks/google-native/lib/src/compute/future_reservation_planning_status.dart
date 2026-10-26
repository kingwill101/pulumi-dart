import 'package:pulumi/pulumi.dart' as pulumi;

/// Planning state before being submitted for evaluation
enum FutureReservationPlanningStatus implements pulumi.PulumiEnum<String> {
  draft("DRAFT"),
  planningStatusUnspecified("PLANNING_STATUS_UNSPECIFIED"),
  submitted("SUBMITTED");

  const FutureReservationPlanningStatus(this.wireValue);
  @override
  final String wireValue;

  static FutureReservationPlanningStatus fromValue(String value) {
    for (final item in FutureReservationPlanningStatus.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown FutureReservationPlanningStatus value: $value');
  }
}
