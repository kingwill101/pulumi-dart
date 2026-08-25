// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chronicle_custom_list_custom_list_args_doc}
/// The set of arguments for CustomList.
/// {@endtemplate}
/// {@macro pulumi_chronicle_custom_list_custom_list_args_doc}
class CustomListArgs {
  /// The value of the custom list.
  /// Maximum length: 1024 characters
  final pulumi.Input<String> category;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The key of the custom list.
  /// Maximum length: 2048 characters
  final pulumi.Input<String> entityIdentifier;
  /// The environments to which the custom list is associated.
  final pulumi.Input<String> environments;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [CustomListArgs].
  /// [category] The value of the custom list.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [entityIdentifier] The key of the custom list.
  /// [environments] The environments to which the custom list is associated.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  const CustomListArgs({
    required this.category,
    this.deletionPolicy,
    required this.entityIdentifier,
    required this.environments,
    required this.instance,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'deletionPolicy': ?deletionPolicy,
      'entityIdentifier': entityIdentifier,
      'environments': environments,
      'instance': instance,
      'location': location,
      'project': ?project,
    };
  }

  factory CustomListArgs.fromMap(Map<String, dynamic> map) {
    return CustomListArgs(
      category: pulumi.Input.fromValue(map['category'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityIdentifier: pulumi.Input.fromValue(map['entityIdentifier'] as String),
      environments: pulumi.Input.fromValue(map['environments'] as String),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
