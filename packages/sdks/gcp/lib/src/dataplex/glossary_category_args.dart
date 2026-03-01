// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_glossary_category_glossary_category_args_doc}
/// The set of arguments for GlossaryCategory.
/// {@endtemplate}
/// {@macro pulumi_dataplex_glossary_category_glossary_category_args_doc}
class GlossaryCategoryArgs {
  /// The category id for creation.
  final pulumi.Input<String>? categoryId;
  /// The user-mutable description of the GlossaryCategory.
  final pulumi.Input<String>? description;
  /// User friendly display name of the GlossaryCategory. This is user-mutable. This will be same as the categoryId, if not specified.
  final pulumi.Input<String>? displayName;
  /// The glossary id for creation.
  final pulumi.Input<String>? glossaryId;
  /// User-defined labels for the GlossaryCategory.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the glossary category should reside.
  final pulumi.Input<String> location;
  /// The immediate parent of the GlossaryCategory in the resource-hierarchy. It can either be a Glossary or a Category. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{categoryId}
  final pulumi.Input<String> parent;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GlossaryCategoryArgs].
  /// [categoryId] The category id for creation.
  /// [description] The user-mutable description of the GlossaryCategory.
  /// [displayName] User friendly display name of the GlossaryCategory. This is user-mutable. This will be same as the categoryId, if not specified.
  /// [glossaryId] The glossary id for creation.
  /// [labels] User-defined labels for the GlossaryCategory.
  /// [location] The location where the glossary category should reside.
  /// [parent] The immediate parent of the GlossaryCategory in the resource-hierarchy. It can either be a Glossary or a Category. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/categories/{categoryId}
  /// [project] The ID of the project in which the resource belongs.
  GlossaryCategoryArgs({
    pulumi.Output<String>? categoryId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? glossaryId,
    pulumi.Output<Map<String, String>>? labels,
    required pulumi.Output<String> location,
    required pulumi.Output<String> parent,
    pulumi.Output<String>? project,
  }) :
      categoryId = pulumi.Input.asOptionalInput<String>(categoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      glossaryId = pulumi.Input.asOptionalInput<String>(glossaryId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asInput<String>(location),
      parent = pulumi.Input.asInput<String>(parent),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryId': ?categoryId,
      'description': ?description,
      'displayName': ?displayName,
      'glossaryId': ?glossaryId,
      'labels': ?labels,
      'location': location,
      'parent': parent,
      'project': ?project,
    };
  }

  factory GlossaryCategoryArgs.fromMap(Map<String, dynamic> map) {
    return GlossaryCategoryArgs(
      categoryId: map['categoryId'] == null ? null : pulumi.Output.create<String>(map['categoryId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      glossaryId: map['glossaryId'] == null ? null : pulumi.Output.create<String>(map['glossaryId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: pulumi.Output.create<String>(map['location'] as String),
      parent: pulumi.Output.create<String>(map['parent'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

