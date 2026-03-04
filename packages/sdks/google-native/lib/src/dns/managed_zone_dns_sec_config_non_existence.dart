/// Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
enum ManagedZoneDnsSecConfigNonExistence {
  nsec("nsec"),
  nsec3("nsec3");

  const ManagedZoneDnsSecConfigNonExistence(this.wireValue);
  final String wireValue;

  static ManagedZoneDnsSecConfigNonExistence fromValue(String value) {
    for (final item in ManagedZoneDnsSecConfigNonExistence.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError(
      'Unknown ManagedZoneDnsSecConfigNonExistence value: $value',
    );
  }
}
