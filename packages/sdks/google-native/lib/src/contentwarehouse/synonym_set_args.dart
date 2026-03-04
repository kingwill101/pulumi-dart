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
  final pulumi.Input<List<GoogleCloudContentwarehouseV1SynonymSetSynonym>>?
  synonyms;

  /// Creates a new [SynonymSetArgs].
  /// [context] This is a freeform field. Example contexts can be "sales," "engineering," "real estate," "accounting," etc. The context can be supplied during search requests.
  /// [location] Optional.
  /// [name] The resource name of the SynonymSet This is mandatory for google.api.resource. Format: projects/{project_number}/locations/{location}/synonymSets/{context}.
  /// [project] Optional.
  /// [synonyms] List of Synonyms for the context.
  SynonymSetArgs({
    this.context,
    this.location,
    this.name,
    this.project,
    this.synonyms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'synonyms':
          ?pulumi.Input.mapOptionalInputValue<
            List<GoogleCloudContentwarehouseV1SynonymSetSynonym>,
            List<Map<String, dynamic>>
          >(
            synonyms,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudContentwarehouseV1SynonymSetSynonym,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory SynonymSetArgs.fromMap(Map<String, dynamic> map) {
    return SynonymSetArgs(
      context: (() {
        final guardedValue = map['context'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      synonyms: (() {
        final guardedValue = map['synonyms'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<GoogleCloudContentwarehouseV1SynonymSetSynonym>(
            guardedValue,
            (value) => GoogleCloudContentwarehouseV1SynonymSetSynonym.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
