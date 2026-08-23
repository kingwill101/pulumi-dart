// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Service principal metadata.
class ServicePrincipalResponse {
  /// App id of service principal.
  final pulumi.Input<String> appId;
  /// Expiration time of service principal credentials.
  final pulumi.Input<String>? credentialsExpireOn;
  /// Id of service principal.
  final pulumi.Input<String> id;
  /// Tenant id of service principal.
  final pulumi.Input<String> tenantId;

  /// Creates a new [ServicePrincipalResponse].
  /// [appId] App id of service principal.
  /// [credentialsExpireOn] Expiration time of service principal credentials.
  /// [id] Id of service principal.
  /// [tenantId] Tenant id of service principal.
  const ServicePrincipalResponse({
    required this.appId,
    this.credentialsExpireOn,
    required this.id,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'credentialsExpireOn': ?credentialsExpireOn,
      'id': id,
      'tenantId': tenantId,
    };
  }

  factory ServicePrincipalResponse.fromMap(Map<String, dynamic> map) {
    return ServicePrincipalResponse(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      credentialsExpireOn: (() { final guardedValue = map['credentialsExpireOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
