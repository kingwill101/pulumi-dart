/// Type of enclave requested on the elastic pool.
enum AlwaysEncryptedEnclaveType {
  valueDefault("Default"),
  valueVBS("VBS");

  const AlwaysEncryptedEnclaveType(this.wireValue);
  final String wireValue;

  static AlwaysEncryptedEnclaveType fromValue(String value) {
    for (final item in AlwaysEncryptedEnclaveType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown AlwaysEncryptedEnclaveType value: $value');
  }
}

