// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_synonym_set_synonym_response.dart';

/// Result data returned by getSynonymSet.
class GetSynonymSetResult {
  /// This is a freeform field. Example contexts can be "sales," "engineering," "real estate," "accounting," etc. The context can be supplied during search requests.
  final String? context;
  /// The resource name of the SynonymSet This is mandatory for google.api.resource. Format: projects/{project_number}/locations/{location}/synonymSets/{context}.
  final String? name;
  /// List of Synonyms for the context.
  final List<GoogleCloudContentwarehouseV1SynonymSetSynonymResponse>? synonyms;

  /// Creates a new [GetSynonymSetResult].
  /// [context] This is a freeform field. Example contexts can be "sales," "engineering," "real estate," "accounting," etc. The context can be supplied during search requests.
  /// [name] The resource name of the SynonymSet This is mandatory for google.api.resource. Format: projects/{project_number}/locations/{location}/synonymSets/{context}.
  /// [synonyms] List of Synonyms for the context.
  const GetSynonymSetResult({
    this.context,
    this.name,
    this.synonyms,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'context': ?context,
      'name': ?name,
      'synonyms': ?(() { final guardedValue = synonyms; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudContentwarehouseV1SynonymSetSynonymResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSynonymSetResult.fromMap(Map<String, dynamic> map) {
    return GetSynonymSetResult(
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      synonyms: (() { final guardedValue = map['synonyms']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudContentwarehouseV1SynonymSetSynonymResponse>(guardedValue, (value) => GoogleCloudContentwarehouseV1SynonymSetSynonymResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
