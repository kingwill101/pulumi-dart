// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_adaptive_protection_config_compute_v1.dart';
import 'security_policy_advanced_options_config_compute_v1.dart';
import 'security_policy_ddos_protection_config_compute_v1.dart';
import 'security_policy_recaptcha_options_config_compute_v1.dart';
import 'security_policy_rule_compute_v1.dart';
import 'security_policy_type_compute_v1.dart';
import 'security_policy_user_defined_field_compute_v1.dart';

/// {@template pulumi_compute_v1_security_policy_compute_v1_args_doc}
/// The set of arguments for SecurityPolicy.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_security_policy_compute_v1_args_doc}
class SecurityPolicyComputeV1Args {
  final pulumi.Input<SecurityPolicyAdaptiveProtectionConfigComputeV1>? adaptiveProtectionConfig;
  final pulumi.Input<SecurityPolicyAdvancedOptionsConfigComputeV1>? advancedOptionsConfig;
  final pulumi.Input<SecurityPolicyDdosProtectionConfigComputeV1>? ddosProtectionConfig;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  final pulumi.Input<SecurityPolicyRecaptchaOptionsConfigComputeV1>? recaptchaOptionsConfig;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// A list of rules that belong to this policy. There must always be a default rule which is a rule with priority 2147483647 and match all condition (for the match condition this means match "*" for srcIpRanges and for the networkMatch condition every field must be either match "*" or not set). If no rules are provided when creating a security policy, a default rule with action "allow" will be added.
  final pulumi.Input<List<SecurityPolicyRuleComputeV1>>? rules;
  /// The type indicates the intended use of the security policy. - CLOUD_ARMOR: Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers. - CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google's cache. - CLOUD_ARMOR_INTERNAL_SERVICE: Cloud Armor internal service policies can be configured to filter HTTP requests targeting services managed by Traffic Director in a service mesh. They filter requests before the request is served from the application. - CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be configured to filter packets targeting network load balancing resources such as backend services, target pools, target instances, and instances with external IPs. They filter requests before the request is served from the application. This field can be set only at resource creation time.
  final pulumi.Input<SecurityPolicyTypeComputeV1>? type;
  /// Definitions of user-defined fields for CLOUD_ARMOR_NETWORK policies. A user-defined field consists of up to 4 bytes extracted from a fixed offset in the packet, relative to the IPv4, IPv6, TCP, or UDP header, with an optional mask to select certain bits. Rules may then specify matching values for these fields. Example: userDefinedFields: - name: "ipv4_fragment_offset" base: IPV4 offset: 6 size: 2 mask: "0x1fff"
  final pulumi.Input<List<SecurityPolicyUserDefinedFieldComputeV1>>? userDefinedFields;

  /// Creates a new [SecurityPolicyComputeV1Args].
  /// [adaptiveProtectionConfig] Optional.
  /// [advancedOptionsConfig] Optional.
  /// [ddosProtectionConfig] Optional.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [labels] Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [project] Optional.
  /// [recaptchaOptionsConfig] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [rules] A list of rules that belong to this policy. There must always be a default rule which is a rule with priority 2147483647 and match all condition (for the match condition this means match "*" for srcIpRanges and for the networkMatch condition every field must be either match "*" or not set). If no rules are provided when creating a security policy, a default rule with action "allow" will be added.
  /// [type] The type indicates the intended use of the security policy. - CLOUD_ARMOR: Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers. - CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google's cache. - CLOUD_ARMOR_INTERNAL_SERVICE: Cloud Armor internal service policies can be configured to filter HTTP requests targeting services managed by Traffic Director in a service mesh. They filter requests before the request is served from the application. - CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be configured to filter packets targeting network load balancing resources such as backend services, target pools, target instances, and instances with external IPs. They filter requests before the request is served from the application. This field can be set only at resource creation time.
  /// [userDefinedFields] Definitions of user-defined fields for CLOUD_ARMOR_NETWORK policies. A user-defined field consists of up to 4 bytes extracted from a fixed offset in the packet, relative to the IPv4, IPv6, TCP, or UDP header, with an optional mask to select certain bits. Rules may then specify matching values for these fields. Example: userDefinedFields: - name: "ipv4_fragment_offset" base: IPV4 offset: 6 size: 2 mask: "0x1fff"
  SecurityPolicyComputeV1Args({
    pulumi.Output<SecurityPolicyAdaptiveProtectionConfigComputeV1>? adaptiveProtectionConfig,
    pulumi.Output<SecurityPolicyAdvancedOptionsConfigComputeV1>? advancedOptionsConfig,
    pulumi.Output<SecurityPolicyDdosProtectionConfigComputeV1>? ddosProtectionConfig,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<SecurityPolicyRecaptchaOptionsConfigComputeV1>? recaptchaOptionsConfig,
    pulumi.Output<String>? requestId,
    pulumi.Output<List<SecurityPolicyRuleComputeV1>>? rules,
    pulumi.Output<SecurityPolicyTypeComputeV1>? type,
    pulumi.Output<List<SecurityPolicyUserDefinedFieldComputeV1>>? userDefinedFields,
  }) :
      adaptiveProtectionConfig = pulumi.Input.asOptionalInput<SecurityPolicyAdaptiveProtectionConfigComputeV1>(adaptiveProtectionConfig),
      advancedOptionsConfig = pulumi.Input.asOptionalInput<SecurityPolicyAdvancedOptionsConfigComputeV1>(advancedOptionsConfig),
      ddosProtectionConfig = pulumi.Input.asOptionalInput<SecurityPolicyDdosProtectionConfigComputeV1>(ddosProtectionConfig),
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      recaptchaOptionsConfig = pulumi.Input.asOptionalInput<SecurityPolicyRecaptchaOptionsConfigComputeV1>(recaptchaOptionsConfig),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      rules = pulumi.Input.asOptionalInput<List<SecurityPolicyRuleComputeV1>>(rules),
      type = pulumi.Input.asOptionalInput<SecurityPolicyTypeComputeV1>(type),
      userDefinedFields = pulumi.Input.asOptionalInput<List<SecurityPolicyUserDefinedFieldComputeV1>>(userDefinedFields);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptiveProtectionConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdaptiveProtectionConfigComputeV1, Map<String, dynamic>>(adaptiveProtectionConfig, (value) => value.toMap()),
      'advancedOptionsConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyAdvancedOptionsConfigComputeV1, Map<String, dynamic>>(advancedOptionsConfig, (value) => value.toMap()),
      'ddosProtectionConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyDdosProtectionConfigComputeV1, Map<String, dynamic>>(ddosProtectionConfig, (value) => value.toMap()),
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'recaptchaOptionsConfig': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyRecaptchaOptionsConfigComputeV1, Map<String, dynamic>>(recaptchaOptionsConfig, (value) => value.toMap()),
      'requestId': ?requestId,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyRuleComputeV1>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<SecurityPolicyRuleComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?pulumi.Input.mapOptionalInputValue<SecurityPolicyTypeComputeV1, String>(type, (value) => value.value),
      'userDefinedFields': ?pulumi.Input.mapOptionalInputValue<List<SecurityPolicyUserDefinedFieldComputeV1>, List<Map<String, dynamic>>>(userDefinedFields, (value) => pulumi.Input.encodeList<SecurityPolicyUserDefinedFieldComputeV1, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SecurityPolicyComputeV1Args.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyComputeV1Args(
      adaptiveProtectionConfig: map['adaptiveProtectionConfig'] == null ? null : pulumi.Output.create<SecurityPolicyAdaptiveProtectionConfigComputeV1>(SecurityPolicyAdaptiveProtectionConfigComputeV1.fromMap((map['adaptiveProtectionConfig'] as Map).cast<String, dynamic>())),
      advancedOptionsConfig: map['advancedOptionsConfig'] == null ? null : pulumi.Output.create<SecurityPolicyAdvancedOptionsConfigComputeV1>(SecurityPolicyAdvancedOptionsConfigComputeV1.fromMap((map['advancedOptionsConfig'] as Map).cast<String, dynamic>())),
      ddosProtectionConfig: map['ddosProtectionConfig'] == null ? null : pulumi.Output.create<SecurityPolicyDdosProtectionConfigComputeV1>(SecurityPolicyDdosProtectionConfigComputeV1.fromMap((map['ddosProtectionConfig'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      recaptchaOptionsConfig: map['recaptchaOptionsConfig'] == null ? null : pulumi.Output.create<SecurityPolicyRecaptchaOptionsConfigComputeV1>(SecurityPolicyRecaptchaOptionsConfigComputeV1.fromMap((map['recaptchaOptionsConfig'] as Map).cast<String, dynamic>())),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<SecurityPolicyRuleComputeV1>>(pulumi.Input.decodeList<SecurityPolicyRuleComputeV1>(map['rules'], (value) => SecurityPolicyRuleComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
      type: map['type'] == null ? null : pulumi.Output.create<SecurityPolicyTypeComputeV1>(SecurityPolicyTypeComputeV1.fromValue(map['type'] as String)),
      userDefinedFields: map['userDefinedFields'] == null ? null : pulumi.Output.create<List<SecurityPolicyUserDefinedFieldComputeV1>>(pulumi.Input.decodeList<SecurityPolicyUserDefinedFieldComputeV1>(map['userDefinedFields'], (value) => SecurityPolicyUserDefinedFieldComputeV1.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

