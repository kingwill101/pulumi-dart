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
    required this.apiManagementId,
    required this.certificateName,
    required this.gatewayName,
    this.isTrusted,
  });

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
      apiManagementId: (map['apiManagementId'] as String).input(),
      certificateName: (map['certificateName'] as String).input(),
      gatewayName: (map['gatewayName'] as String).input(),
      isTrusted: map['isTrusted'] == null ? null : (map['isTrusted']! as bool).input(),
    );
  }
}

