// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_adaptive_protection_config.dart';
import 'security_policy_advanced_options_config.dart';
import 'security_policy_recaptcha_options_config.dart';
import 'security_policy_rule.dart';

/// {@template pulumi_compute_security_policy_security_policy_args_doc}
/// The set of arguments for SecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_security_policy_security_policy_args_doc}
class SecurityPolicyArgs {
  /// Configuration for [Google Cloud Armor Adaptive Protection](https://cloud.google.com/armor/docs/adaptive-protection-overview?hl=en). Structure is documented below.
  final pulumi.Input<SecurityPolicyAdaptiveProtectionConfig>? adaptiveProtectionConfig;
  /// [Advanced Configuration Options](https://cloud.google.com/armor/docs/security-policy-overview#json-parsing).
  /// Structure is documented below.
  final pulumi.Input<SecurityPolicyAdvancedOptionsConfig>? advancedOptionsConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// An optional description of this security policy. Max size is 2048.
  final pulumi.Input<String>? description;
  /// Labels to apply to this address. A list of key-&gt;value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The name of the security policy.
  ///
  /// - - -
  final pulumi.Input<String>? name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// [reCAPTCHA Configuration Options](https://cloud.google.com/armor/docs/configure-security-policies?hl=en#use_a_manual_challenge_to_distinguish_between_human_or_automated_clients). Structure is documented below.
  final pulumi.Input<SecurityPolicyRecaptchaOptionsConfig>? recaptchaOptionsConfig;
  /// The set of rules that belong to this policy. There must always be a default
  /// rule (rule with priority 2147483647 and match "\*"). If no rules are provided when creating a
  /// security policy, a default rule with action "allow" will be added. Structure is documented below.
  final pulumi.Input<List<SecurityPolicyRule>>? rules;
  /// The type indicates the intended use of the security policy. This field can be set only at resource creation time.
  /// * `CLOUD_ARMOR` - Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services.
  /// They filter requests before they hit the origin servers.
  /// * `CLOUD_ARMOR_EDGE` - Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services
  /// (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage).
  /// They filter requests before the request is served from Google's cache.
  /// * `CLOUD_ARMOR_INTERNAL_SERVICE` - Cloud Armor internal service policies can be configured to filter HTTP requests targeting services
  /// managed by Traffic Director in a service mesh. They filter requests before the request is served from the application.
  final pulumi.Input<String>? type;

  /// Creates a new [SecurityPolicyArgs].
  /// [adaptiveProtectionConfig] Configuration for [Google Cloud Armor Adaptive Protection](https://cloud.google.com/armor/docs/adaptive-protection-overview?hl=en). Structure is documented below.
  /// [advancedOptionsConfig] [Advanced Configuration Options](https://cloud.google.com/armor/docs/security-policy-overview#json-parsing).
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] An optional description of this security policy. Max size is 2048.
  /// [labels] Labels to apply to this address. A list of key-&gt;value pairs.
  /// [name] The name of the security policy.
  /// [project] The project in which the resource belongs. If it
  /// [recaptchaOptionsConfig] [reCAPTCHA Configuration Options](https://cloud.google.com/armor/docs/configure-security-policies?hl=en#use_a_manual_challenge_to_distinguish_between_human_or_automated_clients). Structure is documented below.
  /// [rules] The set of rules that belong to this policy. There must always be a default
  /// [type] The type indicates the intended use of the security policy. This field can be set only at resource creation time.
  const SecurityPolicyArgs({
    this.adaptiveProtectionConfig,
    this.advancedOptionsConfig,
    this.deletionPolicy,
    this.description,
    this.labels,
    this.name,
    this.project,
    this.recaptchaOptionsConfig,
    this.rules,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptiveProtectionConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdaptiveProtectionConfig, Map<String, dynamic>>(adaptiveProtectionConfig, (value) => value.toMap()),
      'advancedOptionsConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdvancedOptionsConfig, Map<String, dynamic>>(advancedOptionsConfig, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'recaptchaOptionsConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRecaptchaOptionsConfig, Map<String, dynamic>>(recaptchaOptionsConfig, (value) => value.toMap()),
      'rules': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<SecurityPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory SecurityPolicyArgs.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyArgs(
      adaptiveProtectionConfig: (() { final guardedValue = map['adaptiveProtectionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyAdaptiveProtectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      advancedOptionsConfig: (() { final guardedValue = map['advancedOptionsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyAdvancedOptionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recaptchaOptionsConfig: (() { final guardedValue = map['recaptchaOptionsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityPolicyRecaptchaOptionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SecurityPolicyRule>(guardedValue, (value) => SecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
