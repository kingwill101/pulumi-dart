// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_casb_integration_openai_chatgpt_compliance_api_key.dart';
import 'zero_trust_casb_integration_openai_chatgpt_standard_api_key.dart';

class ZeroTrustCasbIntegrationOpenai {
  /// Authenticate with an OpenAI Compliance API key. Requires an Enterprise plan.
  final pulumi.Input<ZeroTrustCasbIntegrationOpenaiChatgptComplianceApiKey?>? chatgptComplianceApiKey;
  /// Authenticate with an OpenAI Admin API key.
  final pulumi.Input<ZeroTrustCasbIntegrationOpenaiChatgptStandardApiKey?>? chatgptStandardApiKey;

  /// Creates a new [ZeroTrustCasbIntegrationOpenai].
  /// [chatgptComplianceApiKey] Authenticate with an OpenAI Compliance API key. Requires an Enterprise plan.
  /// [chatgptStandardApiKey] Authenticate with an OpenAI Admin API key.
  const ZeroTrustCasbIntegrationOpenai({
    this.chatgptComplianceApiKey,
    this.chatgptStandardApiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chatgptComplianceApiKey': ?pulumi.Input.mapOptionalInputValue<ZeroTrustCasbIntegrationOpenaiChatgptComplianceApiKey, Map<String, dynamic>>(chatgptComplianceApiKey, (value) => value.toMap()),
      'chatgptStandardApiKey': ?pulumi.Input.mapOptionalInputValue<ZeroTrustCasbIntegrationOpenaiChatgptStandardApiKey, Map<String, dynamic>>(chatgptStandardApiKey, (value) => value.toMap()),
    };
  }

  factory ZeroTrustCasbIntegrationOpenai.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbIntegrationOpenai(
      chatgptComplianceApiKey: (() { final guardedValue = map['chatgptComplianceApiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustCasbIntegrationOpenaiChatgptComplianceApiKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      chatgptStandardApiKey: (() { final guardedValue = map['chatgptStandardApiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustCasbIntegrationOpenaiChatgptStandardApiKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
