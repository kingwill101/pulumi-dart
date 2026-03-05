/// Specifies the mechanism for authenticated denial-of-existence responses. Can only be changed while the state is OFF.
enum ManagedZoneDnsSecConfigNonExistenceDnsV1beta2 {
  nsec("nsec"),
  nsec3("nsec3");

  const ManagedZoneDnsSecConfigNonExistenceDnsV1beta2(this.wireValue);
  final String wireValue;

  static ManagedZoneDnsSecConfigNonExistenceDnsV1beta2 fromValue(String value) {
    for (final item in ManagedZoneDnsSecConfigNonExistenceDnsV1beta2.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ManagedZoneDnsSecConfigNonExistenceDnsV1beta2 value: $value');
  }
}

