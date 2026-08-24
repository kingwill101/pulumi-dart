// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessGroupRequireSaml {
  /// The name of the SAML attribute.
  final pulumi.Input<String> attributeName;
  /// The SAML attribute value to look for.
  final pulumi.Input<String> attributeValue;
  /// The ID of your SAML identity provider.
  final pulumi.Input<String> identityProviderId;

  /// Creates a new [AccessGroupRequireSaml].
  /// [attributeName] The name of the SAML attribute.
  /// [attributeValue] The SAML attribute value to look for.
  /// [identityProviderId] The ID of your SAML identity provider.
  const AccessGroupRequireSaml({
    required this.attributeName,
    required this.attributeValue,
    required this.identityProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeName': attributeName,
      'attributeValue': attributeValue,
      'identityProviderId': identityProviderId,
    };
  }

  factory AccessGroupRequireSaml.fromMap(Map<String, dynamic> map) {
    return AccessGroupRequireSaml(
      attributeName: pulumi.Input.fromValue(map['attributeName'] as String),
      attributeValue: pulumi.Input.fromValue(map['attributeValue'] as String),
      identityProviderId: pulumi.Input.fromValue(map['identityProviderId'] as String),
    );
  }
}
