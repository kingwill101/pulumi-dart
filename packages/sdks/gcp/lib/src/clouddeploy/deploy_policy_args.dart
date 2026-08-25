// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deploy_policy_rule.dart';
import 'deploy_policy_selector.dart';

/// {@template pulumi_clouddeploy_deploy_policy_deploy_policy_args_doc}
/// The set of arguments for DeployPolicy.
/// {@endtemplate}
/// {@macro pulumi_clouddeploy_deploy_policy_deploy_policy_args_doc}
class DeployPolicyArgs {
  /// User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Description of the `DeployPolicy`. Max length is 255 characters.
  final pulumi.Input<String?>? description;
  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 63 characters.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// Name of the `DeployPolicy`.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Rules to apply. At least one rule must be present.
  /// Structure is documented below.
  final pulumi.Input<List<DeployPolicyRule>> rules;
  /// Selected resources to which the policy will be applied. At least one selector is required. If one selector matches the resource the policy applies. For example, if there are two selectors and the action being attempted matches one of them, the policy will apply to that action.
  /// Structure is documented below.
  final pulumi.Input<List<DeployPolicySelector>> selectors;
  /// When suspended, the policy will not prevent actions from occurring, even if the action violates the policy.
  final pulumi.Input<bool?>? suspended;

  /// Creates a new [DeployPolicyArgs].
  /// [annotations] User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] Description of the `DeployPolicy`. Max length is 255 characters.
  /// [labels] Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be &lt;= 63 characters.
  /// [location] The location for the resource
  /// [name] Name of the `DeployPolicy`.
  /// [project] The ID of the project in which the resource belongs.
  /// [rules] Rules to apply. At least one rule must be present.
  /// [selectors] Selected resources to which the policy will be applied. At least one selector is required. If one selector matches the resource the policy applies. For example, if there are two selectors and the action being attempted matches one of them, the policy will apply to that action.
  /// [suspended] When suspended, the policy will not prevent actions from occurring, even if the action violates the policy.
  const DeployPolicyArgs({
    this.annotations,
    this.deletionPolicy,
    this.description,
    this.labels,
    required this.location,
    this.name,
    this.project,
    required this.rules,
    required this.selectors,
    this.suspended,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'rules': pulumi.Input.mapInputValue<List<DeployPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<DeployPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selectors': pulumi.Input.mapInputValue<List<DeployPolicySelector>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<DeployPolicySelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'suspended': ?suspended,
    };
  }

  factory DeployPolicyArgs.fromMap(Map<String, dynamic> map) {
    return DeployPolicyArgs(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<DeployPolicyRule>(map['rules']!, (value) => DeployPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
      selectors: pulumi.Input.fromValue(pulumi.Input.decodeList<DeployPolicySelector>(map['selectors']!, (value) => DeployPolicySelector.fromMap((value as Map).cast<String, dynamic>()))),
      suspended: (() { final guardedValue = map['suspended']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
