/// The workload type of the instances that will target this reservation.
enum AllocationAggregateReservationWorkloadType {
  batch("BATCH"),
  serving("SERVING"),
  unspecified("UNSPECIFIED");

  const AllocationAggregateReservationWorkloadType(this.wireValue);
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
