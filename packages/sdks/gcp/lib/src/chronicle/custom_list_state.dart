// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomList resources.
class CustomListState {
  /// The value of the custom list.
  /// Maximum length: 1024 characters
  final pulumi.Input<String>? category;
  /// Id of the Custom List record.
  final pulumi.Input<String>? customListId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The key of the custom list.
  /// Maximum length: 2048 characters
  final pulumi.Input<String>? entityIdentifier;
  /// The environments to which the custom list is associated.
  final pulumi.Input<String>? environments;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of the custom list.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [CustomListState].
  /// [category] The value of the custom list.
  /// [customListId] Id of the Custom List record.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [entityIdentifier] The key of the custom list.
  /// [environments] The environments to which the custom list is associated.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The resource name of the custom list.
  /// [project] The ID of the project in which the resource belongs.
  const CustomListState({
    this.category,
    this.customListId,
    this.deletionPolicy,
    this.entityIdentifier,
    this.environments,
    this.instance,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'customListId': ?customListId,
      'deletionPolicy': ?deletionPolicy,
      'entityIdentifier': ?entityIdentifier,
      'environments': ?environments,
      'instance': ?instance,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory CustomListState.fromMap(Map<String, dynamic> map) {
    return CustomListState(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customListId: (() { final guardedValue = map['customListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entityIdentifier: (() { final guardedValue = map['entityIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environments: (() { final guardedValue = map['environments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
