// ignore_for_file: unused_element, unnecessary_cast


class GetAccountKeyVaultReference {
  /// The Azure identifier of the Azure KeyVault reference.
  final String id;
  /// The HTTPS URL of the Azure KeyVault reference.
  final String url;

  /// Creates a new [GetAccountKeyVaultReference].
  /// [id] The Azure identifier of the Azure KeyVault reference.
  /// [url] The HTTPS URL of the Azure KeyVault reference.
  GetAccountKeyVaultReference({
    required this.id,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'url': url,
    };
  }

  factory GetAccountKeyVaultReference.fromMap(Map<String, dynamic> map) {
    return GetAccountKeyVaultReference(
      id: map['id'] as String,
      url: map['url'] as String,
    );
  }
}

