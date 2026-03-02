// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container identity information
class ContainerIdentityInfoResponse {
  /// Protection container identity - AAD Tenant
  final pulumi.Input<String>? aadTenantId;
  /// Protection container identity - Audience
  final pulumi.Input<String>? audience;
  /// Protection container identity - AAD Service Principal
  final pulumi.Input<String>? servicePrincipalClientId;
  /// Unique name of the container
  final pulumi.Input<String>? uniqueName;

  /// Creates a new [ContainerIdentityInfoResponse].
  /// [aadTenantId] Protection container identity - AAD Tenant
  /// [audience] Protection container identity - Audience
  /// [servicePrincipalClientId] Protection container identity - AAD Service Principal
  /// [uniqueName] Unique name of the container
  ContainerIdentityInfoResponse({
    this.aadTenantId,
    this.audience,
    this.servicePrincipalClientId,
    this.uniqueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadTenantId': ?aadTenantId,
      'audience': ?audience,
      'servicePrincipalClientId': ?servicePrincipalClientId,
      'uniqueName': ?uniqueName,
    };
  }

  factory ContainerIdentityInfoResponse.fromMap(Map<String, dynamic> map) {
    return ContainerIdentityInfoResponse(
      aadTenantId: map['aadTenantId'] == null ? null : (map['aadTenantId']! as String).input(),
      audience: map['audience'] == null ? null : (map['audience']! as String).input(),
      servicePrincipalClientId: map['servicePrincipalClientId'] == null ? null : (map['servicePrincipalClientId']! as String).input(),
      uniqueName: map['uniqueName'] == null ? null : (map['uniqueName']! as String).input(),
    );
  }
}

