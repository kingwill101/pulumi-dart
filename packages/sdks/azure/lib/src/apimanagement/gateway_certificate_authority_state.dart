// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GatewayCertificateAuthority resources.
class GatewayCertificateAuthorityState {
  /// The ID of the API Management Service. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementId;
  /// The name of the API Management Certificate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? certificateName;
  /// The name of the API Management Gateway. Changing this forces a new resource to be created.
  final pulumi.Input<String>? gatewayName;
  /// Whether the API Management Gateway Certificate Authority is trusted.
  final pulumi.Input<bool>? isTrusted;

  /// Creates a new [GatewayCertificateAuthorityState].
  /// [apiManagementId] The ID of the API Management Service. Changing this forces a new resource to be created.
  /// [certificateName] The name of the API Management Certificate. Changing this forces a new resource to be created.
  /// [gatewayName] The name of the API Management Gateway. Changing this forces a new resource to be created.
  /// [isTrusted] Whether the API Management Gateway Certificate Authority is trusted.
  GatewayCertificateAuthorityState({
    pulumi.Output<String>? apiManagementId,
    pulumi.Output<String>? certificateName,
    pulumi.Output<String>? gatewayName,
    pulumi.Output<bool>? isTrusted,
  }) :
      apiManagementId = pulumi.Input.asOptionalInput<String>(apiManagementId),
      certificateName = pulumi.Input.asOptionalInput<String>(certificateName),
      gatewayName = pulumi.Input.asOptionalInput<String>(gatewayName),
      isTrusted = pulumi.Input.asOptionalInput<bool>(isTrusted);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': ?apiManagementId,
      'certificateName': ?certificateName,
      'gatewayName': ?gatewayName,
      'isTrusted': ?isTrusted,
    };
  }

  factory GatewayCertificateAuthorityState.fromMap(Map<String, dynamic> map) {
    return GatewayCertificateAuthorityState(
      apiManagementId: map['apiManagementId'] == null ? null : pulumi.Output.create<String>(map['apiManagementId'] as String),
      certificateName: map['certificateName'] == null ? null : pulumi.Output.create<String>(map['certificateName'] as String),
      gatewayName: map['gatewayName'] == null ? null : pulumi.Output.create<String>(map['gatewayName'] as String),
      isTrusted: map['isTrusted'] == null ? null : pulumi.Output.create<bool>(map['isTrusted'] as bool),
    );
  }
}

