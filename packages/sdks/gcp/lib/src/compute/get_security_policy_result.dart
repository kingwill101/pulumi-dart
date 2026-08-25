// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_policy_adaptive_protection_config.dart';
import 'get_security_policy_advanced_options_config.dart';
import 'get_security_policy_recaptcha_options_config.dart';
import 'get_security_policy_rule.dart';

/// Result data returned by getSecurityPolicy.
class GetSecurityPolicyResult {
  final List<GetSecurityPolicyAdaptiveProtectionConfig>? adaptiveProtectionConfigs;
  final List<GetSecurityPolicyAdvancedOptionsConfig>? advancedOptionsConfigs;
  final String? deletionPolicy;
  final String? description;
  final Map<String, String>? effectiveLabels;
  final String? fingerprint;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? labelFingerprint;
  final Map<String, String>? labels;
  final String? name;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final List<GetSecurityPolicyRecaptchaOptionsConfig>? recaptchaOptionsConfigs;
  final List<GetSecurityPolicyRule>? rules;
  final String? selfLink;
  final String? type;

  /// Creates a new [GetSecurityPolicyResult].
  /// [adaptiveProtectionConfigs] Optional.
  /// [advancedOptionsConfigs] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [effectiveLabels] Optional.
  /// [fingerprint] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [labelFingerprint] Optional.
  /// [labels] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [recaptchaOptionsConfigs] Optional.
  /// [rules] Optional.
  /// [selfLink] Optional.
  /// [type] Optional.
  const GetSecurityPolicyResult({
    this.adaptiveProtectionConfigs,
    this.advancedOptionsConfigs,
    this.deletionPolicy,
    this.description,
    this.effectiveLabels,
    this.fingerprint,
    this.id,
    this.labelFingerprint,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.recaptchaOptionsConfigs,
    this.rules,
    this.selfLink,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptiveProtectionConfigs': ?(() { final guardedValue = adaptiveProtectionConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecurityPolicyAdaptiveProtectionConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'advancedOptionsConfigs': ?(() { final guardedValue = advancedOptionsConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecurityPolicyAdvancedOptionsConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'fingerprint': ?fingerprint,
      'id': ?id,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'recaptchaOptionsConfigs': ?(() { final guardedValue = recaptchaOptionsConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecurityPolicyRecaptchaOptionsConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSecurityPolicyRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'selfLink': ?selfLink,
      'type': ?type,
    };
  }

  factory GetSecurityPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyResult(
      adaptiveProtectionConfigs: (() { final guardedValue = map['adaptiveProtectionConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecurityPolicyAdaptiveProtectionConfig>(guardedValue, (value) => GetSecurityPolicyAdaptiveProtectionConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      advancedOptionsConfigs: (() { final guardedValue = map['advancedOptionsConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecurityPolicyAdvancedOptionsConfig>(guardedValue, (value) => GetSecurityPolicyAdvancedOptionsConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      recaptchaOptionsConfigs: (() { final guardedValue = map['recaptchaOptionsConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecurityPolicyRecaptchaOptionsConfig>(guardedValue, (value) => GetSecurityPolicyRecaptchaOptionsConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSecurityPolicyRule>(guardedValue, (value) => GetSecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
