// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_glossary_term_glossary_term_args_doc}
/// The set of arguments for GlossaryTerm.
/// {@endtemplate}
/// {@macro pulumi_dataplex_glossary_term_glossary_term_args_doc}
class GlossaryTermArgs {
  /// The user-mutable description of the GlossaryTerm.
  final pulumi.Input<String>? description;
  /// User friendly display name of the GlossaryTerm. This is user-mutable. This will be same as the termId, if not specified.
  final pulumi.Input<String>? displayName;
  /// The glossary id for creation.
  final pulumi.Input<String>? glossaryId;
  /// User-defined labels for the GlossaryTerm.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the glossary term should reside.
  final pulumi.Input<String> location;
  /// The immediate parent of the GlossaryTerm in the resource-hierarchy. It can either be a Glossary or a Term. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/terms/{termId}
  final pulumi.Input<String> parent;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The term id for creation.
  final pulumi.Input<String>? termId;

  /// Creates a new [GlossaryTermArgs].
  /// [description] The user-mutable description of the GlossaryTerm.
  /// [displayName] User friendly display name of the GlossaryTerm. This is user-mutable. This will be same as the termId, if not specified.
  /// [glossaryId] The glossary id for creation.
  /// [labels] User-defined labels for the GlossaryTerm.
  /// [location] The location where the glossary term should reside.
  /// [parent] The immediate parent of the GlossaryTerm in the resource-hierarchy. It can either be a Glossary or a Term. Format: projects/{projectId}/locations/{locationId}/glossaries/{glossaryId} OR projects/{projectId}/locations/{locationId}/glossaries/{glossaryId}/terms/{termId}
  /// [project] The ID of the project in which the resource belongs.
  /// [termId] The term id for creation.
  GlossaryTermArgs({
    this.description,
    this.displayName,
    this.glossaryId,
    this.labels,
    required this.location,
    required this.parent,
    this.project,
    this.termId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'glossaryId': ?glossaryId,
      'labels': ?labels,
      'location': location,
      'parent': parent,
      'project': ?project,
      'termId': ?termId,
    };
  }

  factory GlossaryTermArgs.fromMap(Map<String, dynamic> map) {
    return GlossaryTermArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      glossaryId: map['glossaryId'] == null ? null : (map['glossaryId']! as String).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      parent: (map['parent'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      termId: map['termId'] == null ? null : (map['termId']! as String).input(),
    );
  }
}

