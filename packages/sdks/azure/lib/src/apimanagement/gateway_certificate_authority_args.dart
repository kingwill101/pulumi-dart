// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_gateway_certificate_authority_gateway_certificate_authority_args_doc}
/// The set of arguments for GatewayCertificateAuthority.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_gateway_certificate_authority_gateway_certificate_authority_args_doc}
class GatewayCertificateAuthorityArgs {
  /// The ID of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiManagementId;
  /// The name of the API Management Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String> certificateName;
  /// The name of the API Management Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String> gatewayName;
  /// Whether the API Management Gateway Certificate Authority is trusted.
  final pulumi.Input<bool>? isTrusted;

  /// Creates a new [GatewayCertificateAuthorityArgs].
  /// [apiManagementId] The ID of the API Management Service. Changing this forces a new resource to be created.
  /// [certificateName] The name of the API Management Certificate. Changing this forces a new resource to be created.
  /// [gatewayName] The name of the API Management Gateway. Changing this forces a new resource to be created.
  /// [isTrusted] Whether the API Management Gateway Certificate Authority is trusted.
  GatewayCertificateAuthorityArgs({
    required pulumi.Output<String> apiManagementId,
    required pulumi.Output<String> certificateName,
    required pulumi.Output<String> gatewayName,
    pulumi.Output<bool>? isTrusted,
  }) :
      apiManagementId = pulumi.Input.asInput<String>(apiManagementId),
      certificateName = pulumi.Input.asInput<String>(certificateName),
      gatewayName = pulumi.Input.asInput<String>(gatewayName),
      isTrusted = pulumi.Input.asOptionalInput<bool>(isTrusted);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'certificateName': certificateName,
      'gatewayName': gatewayName,
      'isTrusted': ?isTrusted,
    };
  }

  factory GatewayCertificateAuthorityArgs.fromMap(Map<String, dynamic> map) {
    return GatewayCertificateAuthorityArgs(
      apiManagementId: pulumi.Output.create<String>(map['apiManagementId'] as String),
      certificateName: pulumi.Output.create<String>(map['certificateName'] as String),
      gatewayName: pulumi.Output.create<String>(map['gatewayName'] as String),
      isTrusted: map['isTrusted'] == null ? null : pulumi.Output.create<bool>(map['isTrusted'] as bool),
    );
  }
}

