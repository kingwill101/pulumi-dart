// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The managed instance's service principal configuration for a resource.
class ServicePrincipalResponse {
  /// The Azure Active Directory application client id.
  final pulumi.Input<String> clientId;
  /// The Azure Active Directory application object id.
  final pulumi.Input<String> principalId;
  /// The Azure Active Directory tenant id.
  final pulumi.Input<String> tenantId;
  /// Service principal type.
  final pulumi.Input<String>? type;

  /// Creates a new [ServicePrincipalResponse].
  /// [clientId] The Azure Active Directory application client id.
  /// [principalId] The Azure Active Directory application object id.
  /// [tenantId] The Azure Active Directory tenant id.
  /// [type] Service principal type.
  ServicePrincipalResponse({
    required this.clientId,
    required this.principalId,
    required this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
    };
  }

  factory ServicePrincipalResponse.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalResponse(
      clientId: (map['clientId'] as String).input(),
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

