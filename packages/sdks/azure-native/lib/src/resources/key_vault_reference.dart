// ignore_for_file: unused_element, unnecessary_cast


/// Azure Key Vault reference.
class KeyVaultReference {
  /// Azure Key Vault resourceId.
  final String id;

  /// Creates a new [KeyVaultReference].
  /// [id] Azure Key Vault resourceId.
  KeyVaultReference({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory KeyVaultReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultReference(
      id: map['id'] as String,
    );
  }
}

