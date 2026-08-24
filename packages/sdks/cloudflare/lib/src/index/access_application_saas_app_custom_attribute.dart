// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_application_saas_app_custom_attribute_source.dart';

class AccessApplicationSaasAppCustomAttribute {
  /// The SAML FriendlyName of the attribute.
  final pulumi.Input<String?>? friendlyName;
  /// The name of the attribute.
  final pulumi.Input<String?>? name;
  /// A globally unique name for an identity or service provider.
  /// Available values: "urn:oasis:names:tc:SAML:2.0:attrname-format:unspecified", "urn:oasis:names:tc:SAML:2.0:attrname-format:basic", "urn:oasis:names:tc:SAML:2.0:attrname-format:uri".
  final pulumi.Input<String?>? nameFormat;
  /// If the attribute is required when building a SAML assertion.
  final pulumi.Input<bool?>? required;
  final pulumi.Input<AccessApplicationSaasAppCustomAttributeSource?>? source;

  /// Creates a new [AccessApplicationSaasAppCustomAttribute].
  /// [friendlyName] The SAML FriendlyName of the attribute.
  /// [name] The name of the attribute.
  /// [nameFormat] A globally unique name for an identity or service provider.
  /// [required] If the attribute is required when building a SAML assertion.
  /// [source] Optional.
  const AccessApplicationSaasAppCustomAttribute({
    this.friendlyName,
    this.name,
    this.nameFormat,
    this.required,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'friendlyName': ?friendlyName,
      'name': ?name,
      'nameFormat': ?nameFormat,
      'required': ?required,
      'source': ?pulumi.Input.mapOptionalInputValue<AccessApplicationSaasAppCustomAttributeSource, Map<String, dynamic>>(source, (value) => value.toMap()),
    };
  }

  factory AccessApplicationSaasAppCustomAttribute.fromMap(Map<String, dynamic> map) {
    return AccessApplicationSaasAppCustomAttribute(
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameFormat: (() { final guardedValue = map['nameFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessApplicationSaasAppCustomAttributeSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
