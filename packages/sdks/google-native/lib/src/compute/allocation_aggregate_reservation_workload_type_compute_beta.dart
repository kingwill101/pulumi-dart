import 'package:pulumi/pulumi.dart' as pulumi;

/// The workload type of the instances that will target this reservation.
enum AllocationAggregateReservationWorkloadTypeComputeBeta implements pulumi.PulumiEnum<String> {
  batch("BATCH"),
  serving("SERVING"),
  unspecified("UNSPECIFIED");

  const AllocationAggregateReservationWorkloadTypeComputeBeta(this.wireValue);
  @override
  final String wireValue;

  static AllocationAggregateReservationWorkloadTypeComputeBeta fromValue(String value) {
    for (final item in AllocationAggregateReservationWorkloadTypeComputeBeta.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AllocationAggregateReservationWorkloadTypeComputeBeta value: $value');
  }
}
