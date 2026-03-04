// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccountKeyVaultReference {
  /// The Azure identifier of the Azure KeyVault reference.
  final pulumi.Input<String> id;

  /// The HTTPS URL of the Azure KeyVault reference.
  final pulumi.Input<String> url;

  /// Creates a new [GetAccountKeyVaultReference].
  /// [id] The Azure identifier of the Azure KeyVault reference.
  /// [url] The HTTPS URL of the Azure KeyVault reference.
  GetAccountKeyVaultReference({required this.id, required this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'url': url};
  }

  factory GetAccountKeyVaultReference.fromMap(Map<String, dynamic> map) {
    return GetAccountKeyVaultReference(
      id: pulumi.Input.fromValue(map['id'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
