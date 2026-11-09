// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_casb_integration_anthropic_anthropic_admin_api_key.dart';
import 'zero_trust_casb_integration_anthropic_anthropic_compliance_api_key.dart';
import 'zero_trust_casb_integration_anthropic_anthropic_workspace_api_key.dart';

class ZeroTrustCasbIntegrationAnthropic {
  /// Authenticate with an Anthropic Admin API key.
  final pulumi.Input<ZeroTrustCasbIntegrationAnthropicAnthropicAdminApiKey?>? anthropicAdminApiKey;
  /// Authenticate with an Anthropic Compliance API key.
  final pulumi.Input<ZeroTrustCasbIntegrationAnthropicAnthropicComplianceApiKey?>? anthropicComplianceApiKey;
  /// Authenticate with an Anthropic Workspace API key.
  final pulumi.Input<ZeroTrustCasbIntegrationAnthropicAnthropicWorkspaceApiKey?>? anthropicWorkspaceApiKey;

  /// Creates a new [ZeroTrustCasbIntegrationAnthropic].
  /// [anthropicAdminApiKey] Authenticate with an Anthropic Admin API key.
  /// [anthropicComplianceApiKey] Authenticate with an Anthropic Compliance API key.
  /// [anthropicWorkspaceApiKey] Authenticate with an Anthropic Workspace API key.
  const ZeroTrustCasbIntegrationAnthropic({
    this.anthropicAdminApiKey,
    this.anthropicComplianceApiKey,
    this.anthropicWorkspaceApiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'anthropicAdminApiKey': ?pulumi.Input.mapOptionalInputValue<ZeroTrustCasbIntegrationAnthropicAnthropicAdminApiKey, Map<String, dynamic>>(anthropicAdminApiKey, (value) => value.toMap()),
      'anthropicComplianceApiKey': ?pulumi.Input.mapOptionalInputValue<ZeroTrustCasbIntegrationAnthropicAnthropicComplianceApiKey, Map<String, dynamic>>(anthropicComplianceApiKey, (value) => value.toMap()),
      'anthropicWorkspaceApiKey': ?pulumi.Input.mapOptionalInputValue<ZeroTrustCasbIntegrationAnthropicAnthropicWorkspaceApiKey, Map<String, dynamic>>(anthropicWorkspaceApiKey, (value) => value.toMap()),
    };
  }

  factory ZeroTrustCasbIntegrationAnthropic.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbIntegrationAnthropic(
      anthropicAdminApiKey: (() { final guardedValue = map['anthropicAdminApiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustCasbIntegrationAnthropicAnthropicAdminApiKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      anthropicComplianceApiKey: (() { final guardedValue = map['anthropicComplianceApiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustCasbIntegrationAnthropicAnthropicComplianceApiKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      anthropicWorkspaceApiKey: (() { final guardedValue = map['anthropicWorkspaceApiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustCasbIntegrationAnthropicAnthropicWorkspaceApiKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
