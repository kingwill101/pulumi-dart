// ignore_for_file: unused_element, unnecessary_cast


class AccountKeyVaultReference {
  /// The Azure identifier of the Azure KeyVault to use.
  final String id;
  /// The HTTPS URL of the Azure KeyVault to use.
  final String url;

  /// Creates a new [AccountKeyVaultReference].
  /// [id] The Azure identifier of the Azure KeyVault to use.
  /// [url] The HTTPS URL of the Azure KeyVault to use.
  AccountKeyVaultReference({
    required this.id,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'url': url,
    };
  }

  factory AccountKeyVaultReference.fromMap(Map<String, dynamic> map) {
    return AccountKeyVaultReference(
      id: map['id'] as String,
      url: map['url'] as String,
    );
  }
}

