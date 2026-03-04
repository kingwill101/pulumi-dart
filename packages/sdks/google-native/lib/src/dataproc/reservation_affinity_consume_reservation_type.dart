/// Optional. Type of reservation to consume
enum ReservationAffinityConsumeReservationType {
  typeUnspecified("TYPE_UNSPECIFIED"),
  noReservation("NO_RESERVATION"),
  anyReservation("ANY_RESERVATION"),
  specificReservation("SPECIFIC_RESERVATION");

  const ReservationAffinityConsumeReservationType(this.wireValue);
  final String wireValue;

  static ReservationAffinityConsumeReservationType fromValue(String value) {
    for (final item in ReservationAffinityConsumeReservationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ReservationAffinityConsumeReservationType value: $value',
    );
  }
}
