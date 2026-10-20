import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the type of reservation from which this instance can consume resources: ANY_RESERVATION (default), SPECIFIC_RESERVATION, or NO_RESERVATION. See Consuming reserved instances for examples.
enum ReservationAffinityConsumeReservationTypeComputeV1 implements pulumi.PulumiEnum<String> {
  anyReservation("ANY_RESERVATION"),
  noReservation("NO_RESERVATION"),
  specificReservation("SPECIFIC_RESERVATION"),
  unspecified("UNSPECIFIED");

  const ReservationAffinityConsumeReservationTypeComputeV1(this.wireValue);
  @override
  final String wireValue;

  static ReservationAffinityConsumeReservationTypeComputeV1 fromValue(String value) {
    for (final item in ReservationAffinityConsumeReservationTypeComputeV1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReservationAffinityConsumeReservationTypeComputeV1 value: $value');
  }
}
