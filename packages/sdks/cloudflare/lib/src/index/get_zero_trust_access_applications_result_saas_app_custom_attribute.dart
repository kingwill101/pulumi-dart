// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_access_applications_result_saas_app_custom_attribute_source.dart';

class GetZeroTrustAccessApplicationsResultSaasAppCustomAttribute {
  /// The SAML FriendlyName of the attribute.
  final pulumi.Input<String> friendlyName;
  /// The name of the attribute.
  final pulumi.Input<String> name;
  /// A globally unique name for an identity or service provider.
  /// Available values: "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified", "urn:oasis:names:tc:SAML:2.0:attrname-format:basic", "urn:oasis:names:tc:SAML:2.0:attrname-format:uri".
  final pulumi.Input<String> nameFormat;
  /// If the attribute is required when building a SAML assertion.
  final pulumi.Input<bool> required;
  final pulumi.Input<GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSource> source;

  /// Creates a new [GetZeroTrustAccessApplicationsResultSaasAppCustomAttribute].
  /// [friendlyName] The SAML FriendlyName of the attribute.
  /// [name] The name of the attribute.
  /// [nameFormat] A globally unique name for an identity or service provider.
  /// [required] If the attribute is required when building a SAML assertion.
  /// [source] Required.
  const GetZeroTrustAccessApplicationsResultSaasAppCustomAttribute({
    required this.friendlyName,
    required this.name,
    required this.nameFormat,
    required this.required,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friendlyName': friendlyName,
      'name': name,
      'nameFormat': nameFormat,
      'required': required,
      'source': pulumi.Input.mapInputValue<GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustAccessApplicationsResultSaasAppCustomAttribute.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultSaasAppCustomAttribute(
      friendlyName: pulumi.Input.fromValue(map['friendlyName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      nameFormat: pulumi.Input.fromValue(map['nameFormat'] as String),
      required: pulumi.Input.fromValue(map['required'] as bool),
      source: pulumi.Input.fromValue(GetZeroTrustAccessApplicationsResultSaasAppCustomAttributeSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
    );
  }
}
