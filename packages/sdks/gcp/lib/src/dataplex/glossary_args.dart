// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_glossary_glossary_args_doc}
/// The set of arguments for Glossary.
/// {@endtemplate}
/// {@macro pulumi_dataplex_glossary_glossary_args_doc}
class GlossaryArgs {
  /// The user-mutable description of the glossary.
  final pulumi.Input<String>? description;
  /// User friendly display name of the glossary. This is user-mutable. This will be same as the glossaryId, if not specified.
  final pulumi.Input<String>? displayName;
  /// The glossary id for creation.
  final pulumi.Input<String> glossaryId;
  /// User-defined labels for the Glossary.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the glossary should reside.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GlossaryArgs].
  /// [description] The user-mutable description of the glossary.
  /// [displayName] User friendly display name of the glossary. This is user-mutable. This will be same as the glossaryId, if not specified.
  /// [glossaryId] The glossary id for creation.
  /// [labels] User-defined labels for the Glossary.
  /// [location] The location where the glossary should reside.
  /// [project] The ID of the project in which the resource belongs.
  const GlossaryArgs({
    this.description,
    this.displayName,
    required this.glossaryId,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'glossaryId': glossaryId,
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory GlossaryArgs.fromMap(Map<String, dynamic> map) {
    return GlossaryArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      glossaryId: pulumi.Input.fromValue(map['glossaryId'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

