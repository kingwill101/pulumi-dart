// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_recaptchaenterprise_v1_firewall_action.dart';

/// {@template pulumi_recaptchaenterprise_v1_firewallpolicy_args_doc}
/// The set of arguments for Firewallpolicy.
/// {@endtemplate}
/// {@macro pulumi_recaptchaenterprise_v1_firewallpolicy_args_doc}
class FirewallpolicyArgs {
  /// Optional. The actions that the caller should take regarding user access. There should be at most one terminal action. A terminal action is any action that forces a response, such as `AllowAction`, `BlockAction` or `SubstituteAction`. Zero or more non-terminal actions such as `SetHeader` might be specified. A single policy can contain up to 16 actions.
  final pulumi.Input<List<GoogleCloudRecaptchaenterpriseV1FirewallAction>>? actions;
  /// Optional. A CEL (Common Expression Language) conditional expression that specifies if this policy applies to an incoming user request. If this condition evaluates to true and the requested path matched the path pattern, the associated actions should be executed by the caller. The condition string is checked for CEL syntax correctness on creation. For more information, see the [CEL spec](https://github.com/google/cel-spec) and its [language definition](https://github.com/google/cel-spec/blob/master/doc/langdef.md). A condition has a max length of 500 characters.
  final pulumi.Input<String>? condition;
  /// Optional. A description of what this policy aims to achieve, for convenience purposes. The description can at most include 256 UTF-8 characters.
  final pulumi.Input<String>? description;
  /// Identifier. The resource name for the FirewallPolicy in the format `projects/{project}/firewallpolicies/{firewallpolicy}`.
  final pulumi.Input<String>? name;
  /// Optional. The path for which this policy applies, specified as a glob pattern. For more information on glob, see the [manual page](https://man7.org/linux/man-pages/man7/glob.7.html). A path has a max length of 200 characters.
  final pulumi.Input<String>? path;
  final pulumi.Input<String>? project;

  /// Creates a new [FirewallpolicyArgs].
  /// [actions] Optional. The actions that the caller should take regarding user access. There should be at most one terminal action. A terminal action is any action that forces a response, such as `AllowAction`, `BlockAction` or `SubstituteAction`. Zero or more non-terminal actions such as `SetHeader` might be specified. A single policy can contain up to 16 actions.
  /// [condition] Optional. A CEL (Common Expression Language) conditional expression that specifies if this policy applies to an incoming user request. If this condition evaluates to true and the requested path matched the path pattern, the associated actions should be executed by the caller. The condition string is checked for CEL syntax correctness on creation. For more information, see the [CEL spec](https://github.com/google/cel-spec) and its [language definition](https://github.com/google/cel-spec/blob/master/doc/langdef.md). A condition has a max length of 500 characters.
  /// [description] Optional. A description of what this policy aims to achieve, for convenience purposes. The description can at most include 256 UTF-8 characters.
  /// [name] Identifier. The resource name for the FirewallPolicy in the format `projects/{project}/firewallpolicies/{firewallpolicy}`.
  /// [path] Optional. The path for which this policy applies, specified as a glob pattern. For more information on glob, see the [manual page](https://man7.org/linux/man-pages/man7/glob.7.html). A path has a max length of 200 characters.
  /// [project] Optional.
  FirewallpolicyArgs({
    pulumi.Output<List<GoogleCloudRecaptchaenterpriseV1FirewallAction>>? actions,
    pulumi.Output<String>? condition,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? path,
    pulumi.Output<String>? project,
  }) :
      actions = pulumi.Input.asOptionalInput<List<GoogleCloudRecaptchaenterpriseV1FirewallAction>>(actions),
      condition = pulumi.Input.asOptionalInput<String>(condition),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      path = pulumi.Input.asOptionalInput<String>(path),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudRecaptchaenterpriseV1FirewallAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<GoogleCloudRecaptchaenterpriseV1FirewallAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'condition': ?condition,
      'description': ?description,
      'name': ?name,
      'path': ?path,
      'project': ?project,
    };
  }

  factory FirewallpolicyArgs.fromMap(Map<String, dynamic> map) {
    return FirewallpolicyArgs(
      actions: map['actions'] == null ? null : pulumi.Output.create<List<GoogleCloudRecaptchaenterpriseV1FirewallAction>>(pulumi.Input.decodeList<GoogleCloudRecaptchaenterpriseV1FirewallAction>(map['actions'], (value) => GoogleCloudRecaptchaenterpriseV1FirewallAction.fromMap((value as Map).cast<String, dynamic>()))),
      condition: map['condition'] == null ? null : pulumi.Output.create<String>(map['condition'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      path: map['path'] == null ? null : pulumi.Output.create<String>(map['path'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

