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
    pulumi.Output<SecurityPolicyAdaptiveProtectionConfig>? adaptiveProtectionConfig,
    pulumi.Output<SecurityPolicyAdvancedOptionsConfig>? advancedOptionsConfig,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? fingerprint,
    pulumi.Output<String>? labelFingerprint,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<SecurityPolicyRecaptchaOptionsConfig>? recaptchaOptionsConfig,
    pulumi.Output<List<SecurityPolicyRule>>? rules,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? type,
  }) :
      adaptiveProtectionConfig = pulumi.Input.asOptionalInput<SecurityPolicyAdaptiveProtectionConfig>(adaptiveProtectionConfig),
      advancedOptionsConfig = pulumi.Input.asOptionalInput<SecurityPolicyAdvancedOptionsConfig>(advancedOptionsConfig),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      labelFingerprint = pulumi.Input.asOptionalInput<String>(labelFingerprint),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      recaptchaOptionsConfig = pulumi.Input.asOptionalInput<SecurityPolicyRecaptchaOptionsConfig>(recaptchaOptionsConfig),
      rules = pulumi.Input.asOptionalInput<List<SecurityPolicyRule>>(rules),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      type = pulumi.Input.asOptionalInput<String>(type);

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
      adaptiveProtectionConfig: map['adaptiveProtectionConfig'] == null ? null : pulumi.Output.create<SecurityPolicyAdaptiveProtectionConfig>(SecurityPolicyAdaptiveProtectionConfig.fromMap((map['adaptiveProtectionConfig'] as Map).cast<String, dynamic>())),
      advancedOptionsConfig: map['advancedOptionsConfig'] == null ? null : pulumi.Output.create<SecurityPolicyAdvancedOptionsConfig>(SecurityPolicyAdvancedOptionsConfig.fromMap((map['advancedOptionsConfig'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      labelFingerprint: map['labelFingerprint'] == null ? null : pulumi.Output.create<String>(map['labelFingerprint'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      recaptchaOptionsConfig: map['recaptchaOptionsConfig'] == null ? null : pulumi.Output.create<SecurityPolicyRecaptchaOptionsConfig>(SecurityPolicyRecaptchaOptionsConfig.fromMap((map['recaptchaOptionsConfig'] as Map).cast<String, dynamic>())),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<SecurityPolicyRule>>(pulumi.Input.decodeList<SecurityPolicyRule>(map['rules'], (value) => SecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

