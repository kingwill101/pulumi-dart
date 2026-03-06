// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_recaptchaenterprise_v1_firewall_action_response.dart';

/// Result data returned by getFirewallpolicy.
class GetFirewallpolicyResult {
  /// Optional. The actions that the caller should take regarding user access. There should be at most one terminal action. A terminal action is any action that forces a response, such as `AllowAction`, `BlockAction` or `SubstituteAction`. Zero or more non-terminal actions such as `SetHeader` might be specified. A single policy can contain up to 16 actions.
  final List<GoogleCloudRecaptchaenterpriseV1FirewallActionResponse> actions;
  /// Optional. A CEL (Common Expression Language) conditional expression that specifies if this policy applies to an incoming user request. If this condition evaluates to true and the requested path matched the path pattern, the associated actions should be executed by the caller. The condition string is checked for CEL syntax correctness on creation. For more information, see the [CEL spec](https://github.com/google/cel-spec) and its [language definition](https://github.com/google/cel-spec/blob/master/doc/langdef.md). A condition has a max length of 500 characters.
  final String condition;
  /// Optional. A description of what this policy aims to achieve, for convenience purposes. The description can at most include 256 UTF-8 characters.
  final String description;
  /// Identifier. The resource name for the FirewallPolicy in the format `projects/{project}/firewallpolicies/{firewallpolicy}`.
  final String name;
  /// Optional. The path for which this policy applies, specified as a glob pattern. For more information on glob, see the [manual page](https://man7.org/linux/man-pages/man7/glob.7.html). A path has a max length of 200 characters.
  final String path;

  /// Creates a new [GetFirewallpolicyResult].
  /// [actions] Optional. The actions that the caller should take regarding user access. There should be at most one terminal action. A terminal action is any action that forces a response, such as `AllowAction`, `BlockAction` or `SubstituteAction`. Zero or more non-terminal actions such as `SetHeader` might be specified. A single policy can contain up to 16 actions.
  /// [condition] Optional. A CEL (Common Expression Language) conditional expression that specifies if this policy applies to an incoming user request. If this condition evaluates to true and the requested path matched the path pattern, the associated actions should be executed by the caller. The condition string is checked for CEL syntax correctness on creation. For more information, see the [CEL spec](https://github.com/google/cel-spec) and its [language definition](https://github.com/google/cel-spec/blob/master/doc/langdef.md). A condition has a max length of 500 characters.
  /// [description] Optional. A description of what this policy aims to achieve, for convenience purposes. The description can at most include 256 UTF-8 characters.
  /// [name] Identifier. The resource name for the FirewallPolicy in the format `projects/{project}/firewallpolicies/{firewallpolicy}`.
  /// [path] Optional. The path for which this policy applies, specified as a glob pattern. For more information on glob, see the [manual page](https://man7.org/linux/man-pages/man7/glob.7.html). A path has a max length of 200 characters.
  const GetFirewallpolicyResult({
    required this.actions,
    required this.condition,
    required this.description,
    required this.name,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.encodeList<GoogleCloudRecaptchaenterpriseV1FirewallActionResponse, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'condition': condition,
      'description': description,
      'name': name,
      'path': path,
    };
  }

  factory GetFirewallpolicyResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallpolicyResult(
      actions: pulumi.Input.decodeList<GoogleCloudRecaptchaenterpriseV1FirewallActionResponse>(map['actions']!, (value) => GoogleCloudRecaptchaenterpriseV1FirewallActionResponse.fromMap((value as Map).cast<String, dynamic>())),
      condition: map['condition'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      path: map['path'] as String,
    );
  }
}

