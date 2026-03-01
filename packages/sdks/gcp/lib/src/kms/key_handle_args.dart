// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_key_handle_key_handle_args_doc}
/// The set of arguments for KeyHandle.
/// {@endtemplate}
/// {@macro pulumi_kms_key_handle_key_handle_args_doc}
class KeyHandleArgs {
  /// The location for the KeyHandle.
  /// A full list of valid locations can be found by running `gcloud kms locations list`.
  final pulumi.Input<String> location;
  /// The resource name for the KeyHandle.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Selector of the resource type where we want to protect resources.
  /// For example, `storage.googleapis.com/Bucket`.
  final pulumi.Input<String> resourceTypeSelector;

  /// Creates a new [KeyHandleArgs].
  /// [location] The location for the KeyHandle.
  /// [name] The resource name for the KeyHandle.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceTypeSelector] Selector of the resource type where we want to protect resources.
  KeyHandleArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    required pulumi.Output<String> resourceTypeSelector,
  }) :
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      resourceTypeSelector = pulumi.Input.asInput<String>(resourceTypeSelector);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'name': ?name,
      'project': ?project,
      'resourceTypeSelector': resourceTypeSelector,
    };
  }

  factory KeyHandleArgs.fromMap(Map<String, dynamic> map) {
    return KeyHandleArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resourceTypeSelector: pulumi.Output.create<String>(map['resourceTypeSelector'] as String),
    );
  }
}

