import 'package:pulumi/pulumi.dart' as pulumi;

/// Edition of the reservation.
enum ReservationEdition implements pulumi.PulumiEnum<String> {
  editionUnspecified("EDITION_UNSPECIFIED"),
  standard("STANDARD"),
  enterprise("ENTERPRISE"),
  enterprisePlus("ENTERPRISE_PLUS");

  const ReservationEdition(this.wireValue);
  @override
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
