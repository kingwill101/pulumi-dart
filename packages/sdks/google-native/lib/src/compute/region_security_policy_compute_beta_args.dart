// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_security_policy_type_compute_beta.dart';
import 'security_policy_adaptive_protection_config_compute_beta.dart';
import 'security_policy_advanced_options_config_compute_beta.dart';
import 'security_policy_association_compute_beta.dart';
import 'security_policy_ddos_protection_config_compute_beta.dart';
import 'security_policy_recaptcha_options_config_compute_beta.dart';
import 'security_policy_rule_compute_beta.dart';
import 'security_policy_user_defined_field_compute_beta.dart';

/// {@template pulumi_compute_beta_region_security_policy_compute_beta_args_doc}
/// The set of arguments for RegionSecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_region_security_policy_compute_beta_args_doc}
class RegionSecurityPolicyComputeBetaArgs {
  final pulumi.Input<SecurityPolicyAdaptiveProtectionConfigComputeBeta>? adaptiveProtectionConfig;
  final pulumi.Input<SecurityPolicyAdvancedOptionsConfigComputeBeta>? advancedOptionsConfig;
  /// A list of associations that belong to this policy.
  final pulumi.Input<List<SecurityPolicyAssociationComputeBeta>>? associations;
  final pulumi.Input<SecurityPolicyDdosProtectionConfigComputeBeta>? ddosProtectionConfig;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// User-provided name of the Organization security plicy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is FIREWALL. The name must be 1-63 characters long, and comply with https://www.ietf.org/rfc/rfc1035.txt. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? displayName;
  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<SecurityPolicyRecaptchaOptionsConfigComputeBeta>? recaptchaOptionsConfig;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// A list of rules that belong to this policy. There must always be a default rule which is a rule with priority 2147483647 and match all condition (for the match condition this means match "*" for srcIpRanges and for the networkMatch condition every field must be either match "*" or not set). If no rules are provided when creating a security policy, a default rule with action "allow" will be added.
  final pulumi.Input<List<SecurityPolicyRuleComputeBeta>>? rules;
  /// The type indicates the intended use of the security policy. - CLOUD_ARMOR: Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers. - CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google's cache. - CLOUD_ARMOR_INTERNAL_SERVICE: Cloud Armor internal service policies can be configured to filter HTTP requests targeting services managed by Traffic Director in a service mesh. They filter requests before the request is served from the application. - CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be configured to filter packets targeting network load balancing resources such as backend services, target pools, target instances, and instances with external IPs. They filter requests before the request is served from the application. This field can be set only at resource creation time.
  final pulumi.Input<RegionSecurityPolicyTypeComputeBeta>? type;
  /// Definitions of user-defined fields for CLOUD_ARMOR_NETWORK policies. A user-defined field consists of up to 4 bytes extracted from a fixed offset in the packet, relative to the IPv4, IPv6, TCP, or UDP header, with an optional mask to select certain bits. Rules may then specify matching values for these fields. Example: userDefinedFields: - name: "ipv4_fragment_offset" base: IPV4 offset: 6 size: 2 mask: "0x1fff"
  final pulumi.Input<List<SecurityPolicyUserDefinedFieldComputeBeta>>? userDefinedFields;

  /// Creates a new [RegionSecurityPolicyComputeBetaArgs].
  /// [adaptiveProtectionConfig] Optional.
  /// [advancedOptionsConfig] Optional.
  /// [associations] A list of associations that belong to this policy.
  /// [ddosProtectionConfig] Optional.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [displayName] User-provided name of the Organization security plicy. The name should be unique in the organization in which the security policy is created. This should only be used when SecurityPolicyType is FIREWALL. The name must be 1-63 characters long, and comply with https://www.ietf.org/rfc/rfc1035.txt. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [recaptchaOptionsConfig] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [rules] A list of rules that belong to this policy. There must always be a default rule which is a rule with priority 2147483647 and match all condition (for the match condition this means match "*" for srcIpRanges and for the networkMatch condition every field must be either match "*" or not set). If no rules are provided when creating a security policy, a default rule with action "allow" will be added.
  /// [type] The type indicates the intended use of the security policy. - CLOUD_ARMOR: Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers. - CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google's cache. - CLOUD_ARMOR_INTERNAL_SERVICE: Cloud Armor internal service policies can be configured to filter HTTP requests targeting services managed by Traffic Director in a service mesh. They filter requests before the request is served from the application. - CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be configured to filter packets targeting network load balancing resources such as backend services, target pools, target instances, and instances with external IPs. They filter requests before the request is served from the application. This field can be set only at resource creation time.
  /// [userDefinedFields] Definitions of user-defined fields for CLOUD_ARMOR_NETWORK policies. A user-defined field consists of up to 4 bytes extracted from a fixed offset in the packet, relative to the IPv4, IPv6, TCP, or UDP header, with an optional mask to select certain bits. Rules may then specify matching values for these fields. Example: userDefinedFields: - name: "ipv4_fragment_offset" base: IPV4 offset: 6 size: 2 mask: "0x1fff"
  RegionSecurityPolicyComputeBetaArgs({
    pulumi.Output<SecurityPolicyAdaptiveProtectionConfigComputeBeta>? adaptiveProtectionConfig,
    pulumi.Output<SecurityPolicyAdvancedOptionsConfigComputeBeta>? advancedOptionsConfig,
    pulumi.Output<List<SecurityPolicyAssociationComputeBeta>>? associations,
    pulumi.Output<SecurityPolicyDdosProtectionConfigComputeBeta>? ddosProtectionConfig,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<SecurityPolicyRecaptchaOptionsConfigComputeBeta>? recaptchaOptionsConfig,
    required pulumi.Output<String> region,
    pulumi.Output<String>? requestId,
    pulumi.Output<List<SecurityPolicyRuleComputeBeta>>? rules,
    pulumi.Output<RegionSecurityPolicyTypeComputeBeta>? type,
    pulumi.Output<List<SecurityPolicyUserDefinedFieldComputeBeta>>? userDefinedFields,
  }) :
      adaptiveProtectionConfig = pulumi.Input.asOptionalInput<SecurityPolicyAdaptiveProtectionConfigComputeBeta>(adaptiveProtectionConfig),
      advancedOptionsConfig = pulumi.Input.asOptionalInput<SecurityPolicyAdvancedOptionsConfigComputeBeta>(advancedOptionsConfig),
      associations = pulumi.Input.asOptionalInput<List<SecurityPolicyAssociationComputeBeta>>(associations),
      ddosProtectionConfig = pulumi.Input.asOptionalInput<SecurityPolicyDdosProtectionConfigComputeBeta>(ddosProtectionConfig),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      recaptchaOptionsConfig = pulumi.Input.asOptionalInput<SecurityPolicyRecaptchaOptionsConfigComputeBeta>(recaptchaOptionsConfig),
      region = pulumi.Input.asInput<String>(region),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      rules = pulumi.Input.asOptionalInput<List<SecurityPolicyRuleComputeBeta>>(rules),
      type = pulumi.Input.asOptionalInput<RegionSecurityPolicyTypeComputeBeta>(type),
      userDefinedFields = pulumi.Input.asOptionalInput<List<SecurityPolicyUserDefinedFieldComputeBeta>>(userDefinedFields);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptiveProtectionConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdaptiveProtectionConfigComputeBeta, Map<String, dynamic>>(adaptiveProtectionConfig, (value) => value.toMap()),
      'advancedOptionsConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdvancedOptionsConfigComputeBeta, Map<String, dynamic>>(advancedOptionsConfig, (value) => value.toMap()),
      'associations': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyAssociationComputeBeta>, List<Map<String, dynamic>>>(associations, (value) => pulumi.Input.encodeList<SecurityPolicyAssociationComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ddosProtectionConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyDdosProtectionConfigComputeBeta, Map<String, dynamic>>(ddosProtectionConfig, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'recaptchaOptionsConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRecaptchaOptionsConfigComputeBeta, Map<String, dynamic>>(recaptchaOptionsConfig, (value) => value.toMap()),
      'region': region,
      'requestId': ?requestId,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyRuleComputeBeta>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<SecurityPolicyRuleComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?pulumi.Input.mapOptionalInputValue<RegionSecurityPolicyTypeComputeBeta, String>(type, (value) => value.value),
      'userDefinedFields': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyUserDefinedFieldComputeBeta>, List<Map<String, dynamic>>>(userDefinedFields, (value) => pulumi.Input.encodeList<SecurityPolicyUserDefinedFieldComputeBeta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RegionSecurityPolicyComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyComputeBetaArgs(
      adaptiveProtectionConfig: map['adaptiveProtectionConfig'] == null ? null : pulumi.Output.create<SecurityPolicyAdaptiveProtectionConfigComputeBeta>(SecurityPolicyAdaptiveProtectionConfigComputeBeta.fromMap((map['adaptiveProtectionConfig'] as Map).cast<String, dynamic>())),
      advancedOptionsConfig: map['advancedOptionsConfig'] == null ? null : pulumi.Output.create<SecurityPolicyAdvancedOptionsConfigComputeBeta>(SecurityPolicyAdvancedOptionsConfigComputeBeta.fromMap((map['advancedOptionsConfig'] as Map).cast<String, dynamic>())),
      associations: map['associations'] == null ? null : pulumi.Output.create<List<SecurityPolicyAssociationComputeBeta>>(pulumi.Input.decodeList<SecurityPolicyAssociationComputeBeta>(map['associations'], (value) => SecurityPolicyAssociationComputeBeta.fromMap((value as Map).cast<String, dynamic>()))),
      ddosProtectionConfig: map['ddosProtectionConfig'] == null ? null : pulumi.Output.create<SecurityPolicyDdosProtectionConfigComputeBeta>(SecurityPolicyDdosProtectionConfigComputeBeta.fromMap((map['ddosProtectionConfig'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      recaptchaOptionsConfig: map['recaptchaOptionsConfig'] == null ? null : pulumi.Output.create<SecurityPolicyRecaptchaOptionsConfigComputeBeta>(SecurityPolicyRecaptchaOptionsConfigComputeBeta.fromMap((map['recaptchaOptionsConfig'] as Map).cast<String, dynamic>())),
      region: pulumi.Output.create<String>(map['region'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<SecurityPolicyRuleComputeBeta>>(pulumi.Input.decodeList<SecurityPolicyRuleComputeBeta>(map['rules'], (value) => SecurityPolicyRuleComputeBeta.fromMap((value as Map).cast<String, dynamic>()))),
      type: map['type'] == null ? null : pulumi.Output.create<RegionSecurityPolicyTypeComputeBeta>(RegionSecurityPolicyTypeComputeBeta.fromValue(map['type'] as String)),
      userDefinedFields: map['userDefinedFields'] == null ? null : pulumi.Output.create<List<SecurityPolicyUserDefinedFieldComputeBeta>>(pulumi.Input.decodeList<SecurityPolicyUserDefinedFieldComputeBeta>(map['userDefinedFields'], (value) => SecurityPolicyUserDefinedFieldComputeBeta.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

