// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_consumer_policy_enable_rule.dart';

/// {@template pulumi_serviceusage_v2_consumer_policy_v2_consumer_policy_args_doc}
/// The set of arguments for V2ConsumerPolicy.
/// {@endtemplate}
/// {@macro pulumi_serviceusage_v2_consumer_policy_v2_consumer_policy_args_doc}
class V2ConsumerPolicyArgs {
  /// (Optional) Default value is false. If true, the usage of the service to be removed will be checked. If the service has been used within the past 30 days or was enabled in the last 3 days, an error will be thrown.
  final pulumi.Input<bool?>? checkUsageOnRemove;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The consumer policy rule that defines enabled services. The structure is documented below.
  /// Structure is documented below.
  final pulumi.Input<List<V2ConsumerPolicyEnableRule>> enableRules;
  /// The name of the policy. Currently only the “default” policy name is supported.
  final pulumi.Input<String?>? name;
  /// The name of the parent. It can be a project, folder or organization in the format of  projects/&lt;project_id or project_number&gt;, folders/&lt;folder_number&gt; or organizations/&lt;org_number&gt; .
  final pulumi.Input<String> parent;
  /// (Optional) Default value is true. If true, this flag enforces dependency management within the consumer policy. When adding a new service, it verifies that all its dependencies are already present/added in the policy. Conversely, when removing a service, it ensures that no other services within the policy depend on the service to be removed. If the validation fails, a comprehensive message will be presented, outlining the missing dependencies and providing instructions on how to address the issue.
  final pulumi.Input<bool?>? validateDependencies;

  /// Creates a new [V2ConsumerPolicyArgs].
  /// [checkUsageOnRemove] (Optional) Default value is false. If true, the usage of the service to be removed will be checked. If the service has been used within the past 30 days or was enabled in the last 3 days, an error will be thrown.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [enableRules] The consumer policy rule that defines enabled services. The structure is documented below.
  /// [name] The name of the policy. Currently only the “default” policy name is supported.
  /// [parent] The name of the parent. It can be a project, folder or organization in the format of  projects/&lt;project_id or project_number&gt;, folders/&lt;folder_number&gt; or organizations/&lt;org_number&gt; .
  /// [validateDependencies] (Optional) Default value is true. If true, this flag enforces dependency management within the consumer policy. When adding a new service, it verifies that all its dependencies are already present/added in the policy. Conversely, when removing a service, it ensures that no other services within the policy depend on the service to be removed. If the validation fails, a comprehensive message will be presented, outlining the missing dependencies and providing instructions on how to address the issue.
  const V2ConsumerPolicyArgs({
    this.checkUsageOnRemove,
    this.deletionPolicy,
    required this.enableRules,
    this.name,
    required this.parent,
    this.validateDependencies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkUsageOnRemove': ?checkUsageOnRemove,
      'deletionPolicy': ?deletionPolicy,
      'enableRules': pulumi.Input.mapInputValue<List<V2ConsumerPolicyEnableRule>, List<Map<String, dynamic>>>(enableRules, (value) => pulumi.Input.encodeList<V2ConsumerPolicyEnableRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'parent': parent,
      'validateDependencies': ?validateDependencies,
    };
  }

  factory V2ConsumerPolicyArgs.fromMap(Map<String, dynamic> map) {
    return V2ConsumerPolicyArgs(
      checkUsageOnRemove: (() { final guardedValue = map['checkUsageOnRemove']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableRules: pulumi.Input.fromValue(pulumi.Input.decodeList<V2ConsumerPolicyEnableRule>(map['enableRules']!, (value) => V2ConsumerPolicyEnableRule.fromMap((value as Map).cast<String, dynamic>()))),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      validateDependencies: (() { final guardedValue = map['validateDependencies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
