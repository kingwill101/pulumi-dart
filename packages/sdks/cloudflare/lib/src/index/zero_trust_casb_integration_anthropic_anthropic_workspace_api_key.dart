// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustCasbIntegrationAnthropicAnthropicWorkspaceApiKey {
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Anthropic Workspace API key. This value is write-only and is never persisted to Terraform state.
  final pulumi.Input<String> apiKey;
  /// Workspace ID, found in the Anthropic Console URL after /workspaces/.
  final pulumi.Input<String> tenantId;

  /// Creates a new [ZeroTrustCasbIntegrationAnthropicAnthropicWorkspaceApiKey].
  /// [apiKey] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [tenantId] Workspace ID, found in the Anthropic Console URL after /workspaces/.
  const ZeroTrustCasbIntegrationAnthropicAnthropicWorkspaceApiKey({
    required this.apiKey,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'tenantId': tenantId,
    };
  }

  factory ZeroTrustCasbIntegrationAnthropicAnthropicWorkspaceApiKey.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbIntegrationAnthropicAnthropicWorkspaceApiKey(
      apiKey: pulumi.Input.fromValue(map['apiKey'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
