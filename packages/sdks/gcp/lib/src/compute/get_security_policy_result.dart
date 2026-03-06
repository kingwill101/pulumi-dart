// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_policy_adaptive_protection_config.dart';
import 'get_security_policy_advanced_options_config.dart';
import 'get_security_policy_recaptcha_options_config.dart';
import 'get_security_policy_rule.dart';

/// Result data returned by getSecurityPolicy.
class GetSecurityPolicyResult {
  final List<GetSecurityPolicyAdaptiveProtectionConfig> adaptiveProtectionConfigs;
  final List<GetSecurityPolicyAdvancedOptionsConfig> advancedOptionsConfigs;
  final String description;
  final Map<String, String> effectiveLabels;
  final String fingerprint;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String labelFingerprint;
  final Map<String, String> labels;
  final String? name;
  final String? project;
  final Map<String, String> pulumiLabels;
  final List<GetSecurityPolicyRecaptchaOptionsConfig> recaptchaOptionsConfigs;
  final List<GetSecurityPolicyRule> rules;
  final String? selfLink;
  final String type;

  /// Creates a new [GetSecurityPolicyResult].
  /// [adaptiveProtectionConfigs] Required.
  /// [advancedOptionsConfigs] Required.
  /// [description] Required.
  /// [effectiveLabels] Required.
  /// [fingerprint] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labelFingerprint] Required.
  /// [labels] Required.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [recaptchaOptionsConfigs] Required.
  /// [rules] Required.
  /// [selfLink] Optional.
  /// [type] Required.
  const GetSecurityPolicyResult({
    required this.adaptiveProtectionConfigs,
    required this.advancedOptionsConfigs,
    required this.description,
    required this.effectiveLabels,
    required this.fingerprint,
    required this.id,
    required this.labelFingerprint,
    required this.labels,
    this.name,
    this.project,
    required this.pulumiLabels,
    required this.recaptchaOptionsConfigs,
    required this.rules,
    this.selfLink,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptiveProtectionConfigs': pulumi.Input.encodeList<GetSecurityPolicyAdaptiveProtectionConfig, Map<String, dynamic>>(adaptiveProtectionConfigs, (value) => value.toMap()),
      'advancedOptionsConfigs': pulumi.Input.encodeList<GetSecurityPolicyAdvancedOptionsConfig, Map<String, dynamic>>(advancedOptionsConfigs, (value) => value.toMap()),
      'description': description,
      'effectiveLabels': effectiveLabels,
      'fingerprint': fingerprint,
      'id': id,
      'labelFingerprint': labelFingerprint,
      'labels': labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'recaptchaOptionsConfigs': pulumi.Input.encodeList<GetSecurityPolicyRecaptchaOptionsConfig, Map<String, dynamic>>(recaptchaOptionsConfigs, (value) => value.toMap()),
      'rules': pulumi.Input.encodeList<GetSecurityPolicyRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'selfLink': ?selfLink,
      'type': type,
    };
  }

  factory GetSecurityPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyResult(
      adaptiveProtectionConfigs: pulumi.Input.decodeList<GetSecurityPolicyAdaptiveProtectionConfig>(map['adaptiveProtectionConfigs']!, (value) => GetSecurityPolicyAdaptiveProtectionConfig.fromMap((value as Map).cast<String, dynamic>())),
      advancedOptionsConfigs: pulumi.Input.decodeList<GetSecurityPolicyAdvancedOptionsConfig>(map['advancedOptionsConfigs']!, (value) => GetSecurityPolicyAdvancedOptionsConfig.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      fingerprint: map['fingerprint'] as String,
      id: map['id'] as String,
      labelFingerprint: map['labelFingerprint'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      recaptchaOptionsConfigs: pulumi.Input.decodeList<GetSecurityPolicyRecaptchaOptionsConfig>(map['recaptchaOptionsConfigs']!, (value) => GetSecurityPolicyRecaptchaOptionsConfig.fromMap((value as Map).cast<String, dynamic>())),
      rules: pulumi.Input.decodeList<GetSecurityPolicyRule>(map['rules']!, (value) => GetSecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>())),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
    );
  }
}

