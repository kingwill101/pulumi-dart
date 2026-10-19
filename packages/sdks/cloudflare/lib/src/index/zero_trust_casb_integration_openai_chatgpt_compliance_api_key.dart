// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustCasbIntegrationOpenaiChatgptComplianceApiKey {
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// OpenAI Admin API key with api.management.read access. This value is write-only and is never persisted to Terraform state.
  final pulumi.Input<String> adminApiKey;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// OpenAI Compliance API key for audit logs. This value is write-only and is never persisted to Terraform state.
  final pulumi.Input<String> complianceApiKey;
  /// OpenAI Organization ID.
  final pulumi.Input<String> organizationId;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// OpenAI Project API key, used for DLP. This value is write-only and is never persisted to Terraform state.
  final pulumi.Input<String?>? projectApiKey;
  /// OpenAI Project ID, used for DLP.
  final pulumi.Input<String?>? projectId;
  /// OpenAI Workspace ID for compliance data.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [ZeroTrustCasbIntegrationOpenaiChatgptComplianceApiKey].
  /// [adminApiKey] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [complianceApiKey] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [organizationId] OpenAI Organization ID.
  /// [projectApiKey] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [projectId] OpenAI Project ID, used for DLP.
  /// [workspaceId] OpenAI Workspace ID for compliance data.
  const ZeroTrustCasbIntegrationOpenaiChatgptComplianceApiKey({
    required this.adminApiKey,
    required this.complianceApiKey,
    required this.organizationId,
    this.projectApiKey,
    this.projectId,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminApiKey': adminApiKey,
      'complianceApiKey': complianceApiKey,
      'organizationId': organizationId,
      'projectApiKey': ?projectApiKey,
      'projectId': ?projectId,
      'workspaceId': workspaceId,
    };
  }

  factory ZeroTrustCasbIntegrationOpenaiChatgptComplianceApiKey.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbIntegrationOpenaiChatgptComplianceApiKey(
      adminApiKey: pulumi.Input.fromValue(map['adminApiKey'] as String),
      complianceApiKey: pulumi.Input.fromValue(map['complianceApiKey'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      projectApiKey: (() { final guardedValue = map['projectApiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
