// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_api_auth_samlargs_doc}
/// The set of arguments for SAML.
/// {@endtemplate}
/// {@macro pulumi_api_auth_samlargs_doc}
class SAMLArgs {
  /// The new IDP SSO descriptor XML for the SAML configuration.
  final pulumi.Input<String>? newIdpSsoDescriptor;
  /// The organization name
  final pulumi.Input<String> orgName;

  /// Creates a new [SAMLArgs].
  /// [newIdpSsoDescriptor] The new IDP SSO descriptor XML for the SAML configuration.
  /// [orgName] The organization name
  const SAMLArgs({
    this.newIdpSsoDescriptor,
    required this.orgName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newIdpSsoDescriptor': ?newIdpSsoDescriptor,
      'orgName': orgName,
    };
  }

  factory SAMLArgs.fromMap(Map<String, dynamic> map) {
    return SAMLArgs(
      newIdpSsoDescriptor: (() { final guardedValue = map['newIdpSsoDescriptor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgName: pulumi.Input.fromValue(map['orgName'] as String),
    );
  }
}
