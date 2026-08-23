/// Edition of the reservation.
enum ReservationEdition {
  editionUnspecified("EDITION_UNSPECIFIED"),
  standard("STANDARD"),
  enterprise("ENTERPRISE"),
  enterprisePlus("ENTERPRISE_PLUS");

  const ReservationEdition(this.wireValue);
  final String wireValue;

  static ReservationEdition fromValue(String value) {
    for (final item in ReservationEdition.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ReservationEdition value: $value');
  }
}
