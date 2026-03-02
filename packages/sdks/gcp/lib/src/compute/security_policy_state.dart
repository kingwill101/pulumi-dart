// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_adaptive_protection_config.dart';
import 'security_policy_advanced_options_config.dart';
import 'security_policy_recaptcha_options_config.dart';
import 'security_policy_rule.dart';

/// Input properties used for looking up and filtering SecurityPolicy resources.
class SecurityPolicyState {
  /// Configuration for [Google Cloud Armor Adaptive Protection](https://cloud.google.com/armor/docs/adaptive-protection-overview?hl=en). Structure is documented below.
  final pulumi.Input<SecurityPolicyAdaptiveProtectionConfig>? adaptiveProtectionConfig;
  /// [Advanced Configuration Options](https://cloud.google.com/armor/docs/security-policy-overview#json-parsing).
  /// Structure is documented below.
  final pulumi.Input<SecurityPolicyAdvancedOptionsConfig>? advancedOptionsConfig;
  /// An optional description of this security policy. Max size is 2048.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Fingerprint of this resource.
  final pulumi.Input<String>? fingerprint;
  /// The unique fingerprint of the labels.
  final pulumi.Input<String>? labelFingerprint;
  /// Labels to apply to this address. A list of key->value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the security policy.
  ///
  /// - - -
  final pulumi.Input<String>? name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// [reCAPTCHA Configuration Options](https://cloud.google.com/armor/docs/configure-security-policies?hl=en#use_a_manual_challenge_to_distinguish_between_human_or_automated_clients). Structure is documented below.
  final pulumi.Input<SecurityPolicyRecaptchaOptionsConfig>? recaptchaOptionsConfig;
  /// The set of rules that belong to this policy. There must always be a default
  /// rule (rule with priority 2147483647 and match "\*"). If no rules are provided when creating a
  /// security policy, a default rule with action "allow" will be added. Structure is documented below.
  final pulumi.Input<List<SecurityPolicyRule>>? rules;
  /// The URI of the created resource.
  final pulumi.Input<String>? selfLink;
  /// The type indicates the intended use of the security policy. This field can be set only at resource creation time.
  /// * `CLOUD_ARMOR` - Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services.
  /// They filter requests before they hit the origin servers.
  /// * `CLOUD_ARMOR_EDGE` - Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services
  /// (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage).
  /// They filter requests before the request is served from Google's cache.
  /// * `CLOUD_ARMOR_INTERNAL_SERVICE` - Cloud Armor internal service policies can be configured to filter HTTP requests targeting services
  /// managed by Traffic Director in a service mesh. They filter requests before the request is served from the application.
  final pulumi.Input<String>? type;

  /// Creates a new [SecurityPolicyState].
  /// [adaptiveProtectionConfig] Configuration for [Google Cloud Armor Adaptive Protection](https://cloud.google.com/armor/docs/adaptive-protection-overview?hl=en). Structure is documented below.
  /// [advancedOptionsConfig] [Advanced Configuration Options](https://cloud.google.com/armor/docs/security-policy-overview#json-parsing).
  /// [description] An optional description of this security policy. Max size is 2048.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [fingerprint] Fingerprint of this resource.
  /// [labelFingerprint] The unique fingerprint of the labels.
  /// [labels] Labels to apply to this address. A list of key->value pairs.
  /// [name] The name of the security policy.
  /// [project] The project in which the resource belongs. If it
  /// [pulumiLabels] The combination of labels configured directly on the resource and default labels configured on the provider.
  /// [recaptchaOptionsConfig] [reCAPTCHA Configuration Options](https://cloud.google.com/armor/docs/configure-security-policies?hl=en#use_a_manual_challenge_to_distinguish_between_human_or_automated_clients). Structure is documented below.
  /// [rules] The set of rules that belong to this policy. There must always be a default
  /// [selfLink] The URI of the created resource.
  /// [type] The type indicates the intended use of the security policy. This field can be set only at resource creation time.
  SecurityPolicyState({
    this.adaptiveProtectionConfig,
    this.advancedOptionsConfig,
    this.description,
    this.effectiveLabels,
    this.fingerprint,
    this.labelFingerprint,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.recaptchaOptionsConfig,
    this.rules,
    this.selfLink,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptiveProtectionConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdaptiveProtectionConfig, Map<String, dynamic>>(adaptiveProtectionConfig, (value) => value.toMap()),
      'advancedOptionsConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdvancedOptionsConfig, Map<String, dynamic>>(advancedOptionsConfig, (value) => value.toMap()),
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'fingerprint': ?fingerprint,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'recaptchaOptionsConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRecaptchaOptionsConfig, Map<String, dynamic>>(recaptchaOptionsConfig, (value) => value.toMap()),
      'rules': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<SecurityPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selfLink': ?selfLink,
      'type': ?type,
    };
  }

  factory SecurityPolicyState.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyState(
      adaptiveProtectionConfig: map['adaptiveProtectionConfig'] == null ? null : (SecurityPolicyAdaptiveProtectionConfig.fromMap((map['adaptiveProtectionConfig']! as Map).cast<String, dynamic>())).input(),
      advancedOptionsConfig: map['advancedOptionsConfig'] == null ? null : (SecurityPolicyAdvancedOptionsConfig.fromMap((map['advancedOptionsConfig']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint']! as String).input(),
      labelFingerprint: map['labelFingerprint'] == null ? null : (map['labelFingerprint']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      recaptchaOptionsConfig: map['recaptchaOptionsConfig'] == null ? null : (SecurityPolicyRecaptchaOptionsConfig.fromMap((map['recaptchaOptionsConfig']! as Map).cast<String, dynamic>())).input(),
      rules: map['rules'] == null ? null : (pulumi.Input.decodeList<SecurityPolicyRule>(map['rules']!, (value) => SecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

