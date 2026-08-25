// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tags_location_tag_binding_location_tag_binding_args_doc}
/// The set of arguments for LocationTagBinding.
/// {@endtemplate}
/// {@macro pulumi_tags_location_tag_binding_location_tag_binding_args_doc}
class LocationTagBindingArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  ///
  /// - - -
  final pulumi.Input<String?>? deletionPolicy;
  /// Location of the target resource.
  final pulumi.Input<String?>? location;
  /// The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123
  final pulumi.Input<String> parent;
  /// The TagValue of the TagBinding. Must be either in id format `tagValues/{tag-value-id}`, or namespaced format `{parent-id}/{tag-key-short-name}/{tag-value-short-name}`.
  final pulumi.Input<String> tagValue;

  /// Creates a new [LocationTagBindingArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [location] Location of the target resource.
  /// [parent] The full resource name of the resource the TagValue is bound to. E.g. //cloudresourcemanager.googleapis.com/projects/123
  /// [tagValue] The TagValue of the TagBinding. Must be either in id format `tagValues/{tag-value-id}`, or namespaced format `{parent-id}/{tag-key-short-name}/{tag-value-short-name}`.
  const LocationTagBindingArgs({
    this.deletionPolicy,
    this.location,
    required this.parent,
    required this.tagValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'location': ?location,
      'parent': parent,
      'tagValue': tagValue,
    };
  }

  factory LocationTagBindingArgs.fromMap(Map<String, dynamic> map) {
    return LocationTagBindingArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      tagValue: pulumi.Input.fromValue(map['tagValue'] as String),
    );
  }
}
