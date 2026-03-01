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
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Description of the `DeployPolicy`. Max length is 255 characters.
  final pulumi.Input<String>? description;
  /// Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 63 characters.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// Name of the `DeployPolicy`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Rules to apply. At least one rule must be present.
  /// Structure is documented below.
  final pulumi.Input<List<DeployPolicyRule>> rules;
  /// Selected resources to which the policy will be applied. At least one selector is required. If one selector matches the resource the policy applies. For example, if there are two selectors and the action being attempted matches one of them, the policy will apply to that action.
  /// Structure is documented below.
  final pulumi.Input<List<DeployPolicySelector>> selectors;
  /// When suspended, the policy will not prevent actions from occurring, even if the action violates the policy.
  final pulumi.Input<bool>? suspended;

  /// Creates a new [DeployPolicyArgs].
  /// [annotations] User annotations. These attributes can only be set and used by the user, and not by Cloud Deploy. Annotations must meet the following constraints: * Annotations are key/value pairs. * Valid annotation keys have two segments: an optional prefix and name, separated by a slash (`/`). * The name segment is required and must be 63 characters or less, beginning and ending with an alphanumeric character (`[a-z0-9A-Z]`) with dashes (`-`), underscores (`_`), dots (`.`), and alphanumerics between. * The prefix is optional. If specified, the prefix must be a DNS subdomain: a series of DNS labels separated by dots(`.`), not longer than 253 characters in total, followed by a slash (`/`). See https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations/#syntax-and-character-set for more details.
  /// [description] Description of the `DeployPolicy`. Max length is 255 characters.
  /// [labels] Labels are attributes that can be set and used by both the user and by Cloud Deploy. Labels must meet the following constraints: * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. * All characters must use UTF-8 encoding, and international characters are allowed. * Keys must start with a lowercase letter or international character. * Each resource is limited to a maximum of 64 labels. Both keys and values are additionally constrained to be <= 63 characters.
  /// [location] The location for the resource
  /// [name] Name of the `DeployPolicy`.
  /// [project] The ID of the project in which the resource belongs.
  /// [rules] Rules to apply. At least one rule must be present.
  /// [selectors] Selected resources to which the policy will be applied. At least one selector is required. If one selector matches the resource the policy applies. For example, if there are two selectors and the action being attempted matches one of them, the policy will apply to that action.
  /// [suspended] When suspended, the policy will not prevent actions from occurring, even if the action violates the policy.
  DeployPolicyArgs({
    pulumi.Output<Map<String, String>>? annotations,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<List<DeployPolicyRule>> rules,
    required pulumi.Output<List<DeployPolicySelector>> selectors,
    pulumi.Output<bool>? suspended,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      description = pulumi.Input.asOptionalInput<String>(description),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      rules = pulumi.Input.asInput<List<DeployPolicyRule>>(rules),
      selectors = pulumi.Input.asInput<List<DeployPolicySelector>>(selectors),
      suspended = pulumi.Input.asOptionalInput<bool>(suspended);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
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
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      rules: pulumi.Output.create<List<DeployPolicyRule>>(pulumi.Input.decodeList<DeployPolicyRule>(map['rules'], (value) => DeployPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
      selectors: pulumi.Output.create<List<DeployPolicySelector>>(pulumi.Input.decodeList<DeployPolicySelector>(map['selectors'], (value) => DeployPolicySelector.fromMap((value as Map).cast<String, dynamic>()))),
      suspended: map['suspended'] == null ? null : pulumi.Output.create<bool>(map['suspended'] as bool),
    );
  }
}

