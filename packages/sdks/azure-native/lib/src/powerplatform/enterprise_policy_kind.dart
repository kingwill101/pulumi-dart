/// The kind (type) of Enterprise Policy.
enum EnterprisePolicyKind {
  lockbox("Lockbox"),
  privateEndpoint("PrivateEndpoint"),
  encryption("Encryption"),
  networkInjection("NetworkInjection"),
  identity("Identity");

  const EnterprisePolicyKind(this.wireValue);
  final String wireValue;

  static EnterprisePolicyKind fromValue(String value) {
    for (final item in EnterprisePolicyKind.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown EnterprisePolicyKind value: $value');
  }
}
