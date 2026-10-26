import 'package:pulumi/pulumi.dart' as pulumi;

/// Corresponds to the type of reservation consumption.
enum ReservationAffinityConsumeReservationType implements pulumi.PulumiEnum<String> {
  unspecified("UNSPECIFIED"),
  noReservation("NO_RESERVATION"),
  anyReservation("ANY_RESERVATION"),
  specificReservation("SPECIFIC_RESERVATION");

  const ReservationAffinityConsumeReservationType(this.wireValue);
  @override
  final String wireValue;

  static ReservationAffinityConsumeReservationType fromValue(String value) {
    for (final item in ReservationAffinityConsumeReservationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReservationAffinityConsumeReservationType value: $value');
  }
}
