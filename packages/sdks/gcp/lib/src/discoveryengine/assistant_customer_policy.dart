// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assistant_customer_policy_banned_phrase.dart';
import 'assistant_customer_policy_model_armor_config.dart';

class AssistantCustomerPolicy {
  /// List of banned phrases.
  /// Structure is documented below.
  final pulumi.Input<List<AssistantCustomerPolicyBannedPhrase>?>? bannedPhrases;
  /// Model Armor configuration to be used for sanitizing user prompts and assistant responses.
  /// Structure is documented below.
  final pulumi.Input<AssistantCustomerPolicyModelArmorConfig?>? modelArmorConfig;

  /// Creates a new [AssistantCustomerPolicy].
  /// [bannedPhrases] List of banned phrases.
  /// [modelArmorConfig] Model Armor configuration to be used for sanitizing user prompts and assistant responses.
  const AssistantCustomerPolicy({
    this.bannedPhrases,
    this.modelArmorConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bannedPhrases': ?pulumi.Input.mapOptionalInputValue<List<AssistantCustomerPolicyBannedPhrase>, List<Map<String, dynamic>>>(bannedPhrases, (value) => pulumi.Input.encodeList<AssistantCustomerPolicyBannedPhrase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'modelArmorConfig': ?pulumi.Input.mapOptionalInputValue<AssistantCustomerPolicyModelArmorConfig, Map<String, dynamic>>(modelArmorConfig, (value) => value.toMap()),
    };
  }

  factory AssistantCustomerPolicy.fromMap(Map<String, dynamic> map) {
    return AssistantCustomerPolicy(
      bannedPhrases: (() { final guardedValue = map['bannedPhrases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssistantCustomerPolicyBannedPhrase>(guardedValue, (value) => AssistantCustomerPolicyBannedPhrase.fromMap((value as Map).cast<String, dynamic>()))); })(),
      modelArmorConfig: (() { final guardedValue = map['modelArmorConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssistantCustomerPolicyModelArmorConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
