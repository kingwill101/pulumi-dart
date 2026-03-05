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
      aadTenantId: (() { final guardedValue = map['aadTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audience: (() { final guardedValue = map['audience']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servicePrincipalClientId: (() { final guardedValue = map['servicePrincipalClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uniqueName: (() { final guardedValue = map['uniqueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

