// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Workload Identity Federation metadata.
class WorkloadIdentityFederationResponse {
  /// App id of Workload Identity Federation.
  final pulumi.Input<String> appId;
  /// Id of Workload Identity Federation.
  final pulumi.Input<String> id;
  /// Issuer of Workload Identity Federation.
  final pulumi.Input<String> issuer;
  /// Subject of Workload Identity Federation.
  final pulumi.Input<String> subject;
  /// Tenant id of Workload Identity Federation.
  final pulumi.Input<String> tenantId;

  /// Creates a new [WorkloadIdentityFederationResponse].
  /// [appId] App id of Workload Identity Federation.
  /// [id] Id of Workload Identity Federation.
  /// [issuer] Issuer of Workload Identity Federation.
  /// [subject] Subject of Workload Identity Federation.
  /// [tenantId] Tenant id of Workload Identity Federation.
  const WorkloadIdentityFederationResponse({
    required this.appId,
    required this.id,
    required this.issuer,
    required this.subject,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'id': id,
      'issuer': issuer,
      'subject': subject,
      'tenantId': tenantId,
    };
  }

  factory WorkloadIdentityFederationResponse.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityFederationResponse(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      subject: pulumi.Input.fromValue(map['subject'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
