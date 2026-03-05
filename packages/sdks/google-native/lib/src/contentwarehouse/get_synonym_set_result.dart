// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_synonym_set_synonym_response.dart';

/// Result data returned by getSynonymSet.
class GetSynonymSetResult {
  /// This is a freeform field. Example contexts can be "sales," "engineering," "real estate," "accounting," etc. The context can be supplied during search requests.
  final String context;
  /// The resource name of the SynonymSet This is mandatory for google.api.resource. Format: projects/{project_number}/locations/{location}/synonymSets/{context}.
  final String name;
  /// List of Synonyms for the context.
  final List<GoogleCloudContentwarehouseV1SynonymSetSynonymResponse> synonyms;

  /// Creates a new [GetSynonymSetResult].
  /// [context] This is a freeform field. Example contexts can be "sales," "engineering," "real estate," "accounting," etc. The context can be supplied during search requests.
  /// [name] The resource name of the SynonymSet This is mandatory for google.api.resource. Format: projects/{project_number}/locations/{location}/synonymSets/{context}.
  /// [synonyms] List of Synonyms for the context.
  GetSynonymSetResult({
    required this.context,
    required this.name,
    required this.synonyms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': context,
      'name': name,
      'synonyms': pulumi.Input.encodeList<GoogleCloudContentwarehouseV1SynonymSetSynonymResponse, Map<String, dynamic>>(synonyms, (value) => value.toMap()),
    };
  }

  factory GetSynonymSetResult.fromMap(Map<String, dynamic> map) {
    return GetSynonymSetResult(
      context: map['context'] as String,
      name: map['name'] as String,
      synonyms: pulumi.Input.decodeList<GoogleCloudContentwarehouseV1SynonymSetSynonymResponse>(map['synonyms']!, (value) => GoogleCloudContentwarehouseV1SynonymSetSynonymResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

