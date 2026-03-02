// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'glossary_terms_pair.dart';
import 'glossary_terms_set.dart';

/// {@template pulumi_translate_v3_glossary_entry_args_doc}
/// The set of arguments for GlossaryEntry.
/// {@endtemplate}
/// {@macro pulumi_translate_v3_glossary_entry_args_doc}
class GlossaryEntryArgs {
  /// Describes the glossary entry.
  final pulumi.Input<String>? description;
  final pulumi.Input<String> glossaryId;
  final pulumi.Input<String>? location;
  /// The resource name of the entry. Format: "projects/*/locations/*/glossaries/*/glossaryEntries/*"
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Used for an unidirectional glossary.
  final pulumi.Input<GlossaryTermsPair>? termsPair;
  /// Used for an equivalent term sets glossary.
  final pulumi.Input<GlossaryTermsSet>? termsSet;

  /// Creates a new [GlossaryEntryArgs].
  /// [description] Describes the glossary entry.
  /// [glossaryId] Required.
  /// [location] Optional.
  /// [name] The resource name of the entry. Format: "projects/*/locations/*/glossaries/*/glossaryEntries/*"
  /// [project] Optional.
  /// [termsPair] Used for an unidirectional glossary.
  /// [termsSet] Used for an equivalent term sets glossary.
  GlossaryEntryArgs({
    this.description,
    required this.glossaryId,
    this.location,
    this.name,
    this.project,
    this.termsPair,
    this.termsSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'glossaryId': glossaryId,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'termsPair': ?pulumi.Input.mapOptionalInputValue<GlossaryTermsPair, Map<String, dynamic>>(termsPair, (value) => value.toMap()),
      'termsSet': ?pulumi.Input.mapOptionalInputValue<GlossaryTermsSet, Map<String, dynamic>>(termsSet, (value) => value.toMap()),
    };
  }

  factory GlossaryEntryArgs.fromMap(Map<String, dynamic> map) {
    return GlossaryEntryArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      glossaryId: (map['glossaryId'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      termsPair: map['termsPair'] == null ? null : (GlossaryTermsPair.fromMap((map['termsPair']! as Map).cast<String, dynamic>())).input(),
      termsSet: map['termsSet'] == null ? null : (GlossaryTermsSet.fromMap((map['termsSet']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

