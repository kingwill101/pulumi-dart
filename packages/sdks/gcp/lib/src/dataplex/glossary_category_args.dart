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
    this.categoryId,
    this.description,
    this.displayName,
    this.glossaryId,
    this.labels,
    required this.location,
    required this.parent,
    this.project,
  });

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
      categoryId: map['categoryId'] == null ? null : (map['categoryId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      glossaryId: map['glossaryId'] == null ? null : (map['glossaryId']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      parent: (map['parent'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

