// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chronicle_environment_group_environment_group_args_doc}
/// The set of arguments for EnvironmentGroup.
/// {@endtemplate}
/// {@macro pulumi_chronicle_environment_group_environment_group_args_doc}
class EnvironmentGroupArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The EnvironmentGroup description.
  /// This value is optional. This value should be up to
  /// 250 characters, and valid characters are /a-z-/.
  final pulumi.Input<String> description;
  /// The group name.
  final pulumi.Input<String> displayName;
  /// The environment IDs for the group.
  final pulumi.Input<List<String>> environmentsIds;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [EnvironmentGroupArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The EnvironmentGroup description.
  /// [displayName] The group name.
  /// [environmentsIds] The environment IDs for the group.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  const EnvironmentGroupArgs({
    this.deletionPolicy,
    required this.description,
    required this.displayName,
    required this.environmentsIds,
    required this.instance,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': description,
      'displayName': displayName,
      'environmentsIds': environmentsIds,
      'instance': instance,
      'location': location,
      'project': ?project,
    };
  }

  factory EnvironmentGroupArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentGroupArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      environmentsIds: pulumi.Input.fromValue((map['environmentsIds'] as List).cast<String>()),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
