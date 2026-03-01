// ignore_for_file: unused_element, unnecessary_cast


/// The properties of the Key Vault which hosts CMK
class CmkKeyVaultProperties {
  /// The key uri of the Customer Managed Key
  final String? keyUri;

  /// Creates a new [CmkKeyVaultProperties].
  /// [keyUri] The key uri of the Customer Managed Key
  CmkKeyVaultProperties({
    this.keyUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUri': ?keyUri,
    };
  }

  factory CmkKeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return CmkKeyVaultProperties(
      keyUri: map['keyUri'] == null ? null : map['keyUri'] as String,
    );
  }
}

