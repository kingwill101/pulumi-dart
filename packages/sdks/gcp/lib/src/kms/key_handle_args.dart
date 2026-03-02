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
    required this.location,
    this.name,
    this.project,
    required this.resourceTypeSelector,
  });

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
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      resourceTypeSelector: (map['resourceTypeSelector'] as String).input(),
    );
  }
}

