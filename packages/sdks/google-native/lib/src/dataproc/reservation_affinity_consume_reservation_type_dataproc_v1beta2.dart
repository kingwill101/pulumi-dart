/// Optional. Type of reservation to consume
enum ReservationAffinityConsumeReservationTypeDataprocV1beta2 {
  typeUnspecified("TYPE_UNSPECIFIED"),
  noReservation("NO_RESERVATION"),
  anyReservation("ANY_RESERVATION"),
  specificReservation("SPECIFIC_RESERVATION");

  const ReservationAffinityConsumeReservationTypeDataprocV1beta2(
    this.wireValue,
  );
  final String wireValue;

  static ReservationAffinityConsumeReservationTypeDataprocV1beta2 fromValue(
    String value,
  ) {
    for (final item
        in ReservationAffinityConsumeReservationTypeDataprocV1beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ReservationAffinityConsumeReservationTypeDataprocV1beta2 value: $value',
    );
  }
}
