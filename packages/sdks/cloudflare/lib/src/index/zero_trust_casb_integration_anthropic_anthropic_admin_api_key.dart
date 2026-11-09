// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustCasbIntegrationAnthropicAnthropicAdminApiKey {
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Anthropic Admin API key. This value is write-only and is never persisted to Terraform state.
  final pulumi.Input<String> apiKey;
  /// Organization ID. Auto-extracted from the key if not provided.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [ZeroTrustCasbIntegrationAnthropicAnthropicAdminApiKey].
  /// [apiKey] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [tenantId] Organization ID. Auto-extracted from the key if not provided.
  const ZeroTrustCasbIntegrationAnthropicAnthropicAdminApiKey({
    required this.apiKey,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'tenantId': ?tenantId,
    };
  }

  factory ZeroTrustCasbIntegrationAnthropicAnthropicAdminApiKey.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbIntegrationAnthropicAnthropicAdminApiKey(
      apiKey: pulumi.Input.fromValue(map['apiKey'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
