// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustCasbIntegrationOpenaiChatgptStandardApiKey {
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// OpenAI Admin API key with api.management.read access. This value is write-only and is never persisted to Terraform state.
  final pulumi.Input<String> adminApiKey;
  /// OpenAI Organization ID.
  final pulumi.Input<String> organizationId;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// OpenAI Project API key, used for DLP. This value is write-only and is never persisted to Terraform state.
  final pulumi.Input<String?>? projectApiKey;
  /// OpenAI Project ID, used for DLP.
  final pulumi.Input<String?>? projectId;

  /// Creates a new [ZeroTrustCasbIntegrationOpenaiChatgptStandardApiKey].
  /// [adminApiKey] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [organizationId] OpenAI Organization ID.
  /// [projectApiKey] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [projectId] OpenAI Project ID, used for DLP.
  const ZeroTrustCasbIntegrationOpenaiChatgptStandardApiKey({
    required this.adminApiKey,
    required this.organizationId,
    this.projectApiKey,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminApiKey': adminApiKey,
      'organizationId': organizationId,
      'projectApiKey': ?projectApiKey,
      'projectId': ?projectId,
    };
  }

  factory ZeroTrustCasbIntegrationOpenaiChatgptStandardApiKey.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbIntegrationOpenaiChatgptStandardApiKey(
      adminApiKey: pulumi.Input.fromValue(map['adminApiKey'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
      projectApiKey: (() { final guardedValue = map['projectApiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
