// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountKeyVaultReference {
  /// The Azure identifier of the Azure KeyVault to use.
  final pulumi.Input<String> id;

  /// The HTTPS URL of the Azure KeyVault to use.
  final pulumi.Input<String> url;

  /// Creates a new [AccountKeyVaultReference].
  /// [id] The Azure identifier of the Azure KeyVault to use.
  /// [url] The HTTPS URL of the Azure KeyVault to use.
  AccountKeyVaultReference({required this.id, required this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'url': url};
  }

  factory AccountKeyVaultReference.fromMap(Map<String, dynamic> map) {
    return AccountKeyVaultReference(
      id: pulumi.Input.fromValue(map['id'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
