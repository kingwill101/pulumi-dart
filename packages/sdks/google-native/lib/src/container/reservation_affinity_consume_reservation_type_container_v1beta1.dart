import 'package:pulumi/pulumi.dart' as pulumi;

/// Corresponds to the type of reservation consumption.
enum ReservationAffinityConsumeReservationTypeContainerV1beta1 implements pulumi.PulumiEnum<String> {
  unspecified("UNSPECIFIED"),
  noReservation("NO_RESERVATION"),
  anyReservation("ANY_RESERVATION"),
  specificReservation("SPECIFIC_RESERVATION");

  const ReservationAffinityConsumeReservationTypeContainerV1beta1(this.wireValue);
  @override
  final String wireValue;

  static ReservationAffinityConsumeReservationTypeContainerV1beta1 fromValue(String value) {
    for (final item in ReservationAffinityConsumeReservationTypeContainerV1beta1.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReservationAffinityConsumeReservationTypeContainerV1beta1 value: $value');
  }
}
