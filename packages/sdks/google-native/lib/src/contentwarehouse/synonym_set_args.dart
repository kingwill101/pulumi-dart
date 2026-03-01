// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_synonym_set_synonym.dart';

/// {@template pulumi_contentwarehouse_v1_synonym_set_args_doc}
/// The set of arguments for SynonymSet.
/// {@endtemplate}
/// {@macro pulumi_contentwarehouse_v1_synonym_set_args_doc}
class SynonymSetArgs {
  /// This is a freeform field. Example contexts can be "sales," "engineering," "real estate," "accounting," etc. The context can be supplied during search requests.
  final pulumi.Input<String>? context;
  final pulumi.Input<String>? location;
  /// The resource name of the SynonymSet This is mandatory for google.api.resource. Format: projects/{project_number}/locations/{location}/synonymSets/{context}.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// List of Synonyms for the context.
  final pulumi.Input<List<GoogleCloudContentwarehouseV1SynonymSetSynonym>>? synonyms;

  /// Creates a new [SynonymSetArgs].
  /// [context] This is a freeform field. Example contexts can be "sales," "engineering," "real estate," "accounting," etc. The context can be supplied during search requests.
  /// [location] Optional.
  /// [name] The resource name of the SynonymSet This is mandatory for google.api.resource. Format: projects/{project_number}/locations/{location}/synonymSets/{context}.
  /// [project] Optional.
  /// [synonyms] List of Synonyms for the context.
  SynonymSetArgs({
    pulumi.Output<String>? context,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<List<GoogleCloudContentwarehouseV1SynonymSetSynonym>>? synonyms,
  }) :
      context = pulumi.Input.asOptionalInput<String>(context),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      synonyms = pulumi.Input.asOptionalInput<List<GoogleCloudContentwarehouseV1SynonymSetSynonym>>(synonyms);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'synonyms': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudContentwarehouseV1SynonymSetSynonym>, List<Map<String, dynamic>>>(synonyms, (value) => pulumi.Input.encodeList<GoogleCloudContentwarehouseV1SynonymSetSynonym, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SynonymSetArgs.fromMap(Map<String, dynamic> map) {
    return SynonymSetArgs(
      context: map['context'] == null ? null : pulumi.Output.create<String>(map['context'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      synonyms: map['synonyms'] == null ? null : pulumi.Output.create<List<GoogleCloudContentwarehouseV1SynonymSetSynonym>>(pulumi.Input.decodeList<GoogleCloudContentwarehouseV1SynonymSetSynonym>(map['synonyms'], (value) => GoogleCloudContentwarehouseV1SynonymSetSynonym.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

