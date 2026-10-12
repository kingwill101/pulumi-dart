// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustCasbIntegrationAnthropicAnthropicComplianceApiKey {
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Anthropic Compliance API key. This value is write-only and is never persisted to Terraform state.
  final pulumi.Input<String> complianceApiKey;
  /// Organization ID. Auto-extracted from the key if not provided.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [ZeroTrustCasbIntegrationAnthropicAnthropicComplianceApiKey].
  /// [complianceApiKey] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// [tenantId] Organization ID. Auto-extracted from the key if not provided.
  const ZeroTrustCasbIntegrationAnthropicAnthropicComplianceApiKey({
    required this.complianceApiKey,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'complianceApiKey': complianceApiKey,
      'tenantId': ?tenantId,
    };
  }

  factory ZeroTrustCasbIntegrationAnthropicAnthropicComplianceApiKey.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbIntegrationAnthropicAnthropicComplianceApiKey(
      complianceApiKey: pulumi.Input.fromValue(map['complianceApiKey'] as String),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
