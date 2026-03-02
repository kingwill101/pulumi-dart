// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of the Key Vault which hosts CMK
class CmkKeyVaultPropertiesResponse {
  /// The key uri of the Customer Managed Key
  final pulumi.Input<String>? keyUri;

  /// Creates a new [CmkKeyVaultPropertiesResponse].
  /// [keyUri] The key uri of the Customer Managed Key
  CmkKeyVaultPropertiesResponse({
    this.keyUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUri': ?keyUri,
    };
  }

  factory CmkKeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CmkKeyVaultPropertiesResponse(
      keyUri: map['keyUri'] == null ? null : (map['keyUri'] as String).input(),
    );
  }
}

