// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_resources_template_spec_args_doc}
/// The set of arguments for TemplateSpec.
/// {@endtemplate}
/// {@macro pulumi_resources_template_spec_args_doc}
class TemplateSpecArgs {
  /// Template Spec description.
  final pulumi.Input<String>? description;
  /// Template Spec display name.
  final pulumi.Input<String>? displayName;
  /// The location of the Template Spec. It cannot be changed after Template Spec creation. It must be one of the supported Azure locations.
  final pulumi.Input<String>? location;
  /// The Template Spec metadata. Metadata is an open-ended object and is typically a collection of key-value pairs.
  final pulumi.Input<dynamic>? metadata;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Name of the Template Spec.
  final pulumi.Input<String>? templateSpecName;

  /// Creates a new [TemplateSpecArgs].
  /// [description] Template Spec description.
  /// [displayName] Template Spec display name.
  /// [location] The location of the Template Spec. It cannot be changed after Template Spec creation. It must be one of the supported Azure locations.
  /// [metadata] The Template Spec metadata. Metadata is an open-ended object and is typically a collection of key-value pairs.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [templateSpecName] Name of the Template Spec.
  TemplateSpecArgs({
    this.description,
    this.displayName,
    this.location,
    this.metadata,
    required this.resourceGroupName,
    this.tags,
    this.templateSpecName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'metadata': ?metadata,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'templateSpecName': ?templateSpecName,
    };
  }

  factory TemplateSpecArgs.fromMap(Map<String, dynamic> map) {
    return TemplateSpecArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      templateSpecName: map['templateSpecName'] == null ? null : (map['templateSpecName'] as String).input(),
    );
  }
}

