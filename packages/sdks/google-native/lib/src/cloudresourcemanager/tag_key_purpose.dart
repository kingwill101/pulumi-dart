/// Optional. A purpose denotes that this Tag is intended for use in policies of a specific policy engine, and will involve that policy engine in management operations involving this Tag. A purpose does not grant a policy engine exclusive rights to the Tag, and it may be referenced by other policy engines. A purpose cannot be changed once set.
enum TagKeyPurpose {
  purposeUnspecified("PURPOSE_UNSPECIFIED"),
  gceFirewall("GCE_FIREWALL"),
  dataGovernance("DATA_GOVERNANCE");

  const TagKeyPurpose(this.wireValue);
  final String wireValue;

  static TagKeyPurpose fromValue(String value) {
    for (final item in TagKeyPurpose.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown TagKeyPurpose value: $value');
  }
}
