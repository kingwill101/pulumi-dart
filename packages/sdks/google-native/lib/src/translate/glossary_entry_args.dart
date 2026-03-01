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
    pulumi.Output<String>? description,
    required pulumi.Output<String> glossaryId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<GlossaryTermsPair>? termsPair,
    pulumi.Output<GlossaryTermsSet>? termsSet,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      glossaryId = pulumi.Input.asInput<String>(glossaryId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      termsPair = pulumi.Input.asOptionalInput<GlossaryTermsPair>(termsPair),
      termsSet = pulumi.Input.asOptionalInput<GlossaryTermsSet>(termsSet);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      glossaryId: pulumi.Output.create<String>(map['glossaryId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      termsPair: map['termsPair'] == null ? null : pulumi.Output.create<GlossaryTermsPair>(GlossaryTermsPair.fromMap((map['termsPair'] as Map).cast<String, dynamic>())),
      termsSet: map['termsSet'] == null ? null : pulumi.Output.create<GlossaryTermsSet>(GlossaryTermsSet.fromMap((map['termsSet'] as Map).cast<String, dynamic>())),
    );
  }
}

