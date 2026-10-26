import 'package:pulumi/pulumi.dart' as pulumi;

/// The workload type of the instances that will target this reservation.
enum AllocationAggregateReservationWorkloadType implements pulumi.PulumiEnum<String> {
  batch("BATCH"),
  serving("SERVING"),
  unspecified("UNSPECIFIED");

  const AllocationAggregateReservationWorkloadType(this.wireValue);
  @override
  final String wireValue;

  static AllocationAggregateReservationWorkloadType fromValue(String value) {
    for (final item in AllocationAggregateReservationWorkloadType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllocationAggregateReservationWorkloadType value: $value');
  }
}
