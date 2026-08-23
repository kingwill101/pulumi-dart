// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering LocationTagBinding resources.
class LocationTagBindingState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// - - -
  final pulumi.Input<String>? deletionPolicy;
  /// Location of the target resource.
  final pulumi.Input<String>? location;
  /// The generated id for the TagBinding. This is a string of the form `tagBindings/{full-resource-name}/{tag-value-name}` or `tagBindings/{full-resource-name}/{tag-key-name}`
  final pulumi.Input<String>? name;
  /// The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123
  final pulumi.Input<String>? parent;
  /// The TagValue of the TagBinding. Must be either in id format `tagValues/{tag-value-id}`, or namespaced format `{parent-id}/{tag-key-short-name}/{tag-value-short-name}`.
  final pulumi.Input<String>? tagValue;

  /// Creates a new [LocationTagBindingState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [location] Location of the target resource.
  /// [name] The generated id for the TagBinding. This is a string of the form `tagBindings/{full-resource-name}/{tag-value-name}` or `tagBindings/{full-resource-name}/{tag-key-name}`
  /// [parent] The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123
  /// [tagValue] The TagValue of the TagBinding. Must be either in id format `tagValues/{tag-value-id}`, or namespaced format `{parent-id}/{tag-key-short-name}/{tag-value-short-name}`.
  const LocationTagBindingState({
    this.deletionPolicy,
    this.location,
    this.name,
    this.parent,
    this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'tagValue': ?tagValue,
    };
  }

  factory LocationTagBindingState.fromMap(Map<String, dynamic> map) {
    return LocationTagBindingState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagValue: (() { final guardedValue = map['tagValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
