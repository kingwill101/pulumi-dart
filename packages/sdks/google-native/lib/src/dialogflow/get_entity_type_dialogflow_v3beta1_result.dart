// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_entity_type_entity_response.dart';
import 'google_cloud_dialogflow_cx_v3beta1_entity_type_excluded_phrase_response.dart';

/// Result data returned by getEntityType.
class GetEntityTypeDialogflowV3beta1Result {
  /// Indicates whether the entity type can be automatically expanded.
  final String autoExpansionMode;

  /// The human-readable name of the entity type, unique within the agent.
  final String displayName;

  /// Enables fuzzy entity extraction during classification.
  final bool enableFuzzyExtraction;

  /// The collection of entity entries associated with the entity type.
  final List<GoogleCloudDialogflowCxV3beta1EntityTypeEntityResponse> entities;

  /// Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry `giant`(an adjective), you might consider adding `giants`(a noun) as an exclusion. If the kind of entity type is `KIND_MAP`, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  final List<GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse>
  excludedPhrases;

  /// Indicates the kind of entity type.
  final String kind;

  /// The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.
  final String name;

  /// Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name during logging.
  final bool redact;

  /// Creates a new [GetEntityTypeDialogflowV3beta1Result].
  /// [autoExpansionMode] Indicates whether the entity type can be automatically expanded.
  /// [displayName] The human-readable name of the entity type, unique within the agent.
  /// [enableFuzzyExtraction] Enables fuzzy entity extraction during classification.
  /// [entities] The collection of entity entries associated with the entity type.
  /// [excludedPhrases] Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry `giant`(an adjective), you might consider adding `giants`(a noun) as an exclusion. If the kind of entity type is `KIND_MAP`, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  /// [kind] Indicates the kind of entity type.
  /// [name] The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.
  /// [redact] Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name during logging.
  GetEntityTypeDialogflowV3beta1Result({
    required this.autoExpansionMode,
    required this.displayName,
    required this.enableFuzzyExtraction,
    required this.entities,
    required this.excludedPhrases,
    required this.kind,
    required this.name,
    required this.redact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoExpansionMode': autoExpansionMode,
      'displayName': displayName,
      'enableFuzzyExtraction': enableFuzzyExtraction,
      'entities':
          pulumi.Input.encodeList<
            GoogleCloudDialogflowCxV3beta1EntityTypeEntityResponse,
            Map<String, dynamic>
          >(entities, (value) => value.toMap()),
      'excludedPhrases':
          pulumi.Input.encodeList<
            GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse,
            Map<String, dynamic>
          >(excludedPhrases, (value) => value.toMap()),
      'kind': kind,
      'name': name,
      'redact': redact,
    };
  }

  factory GetEntityTypeDialogflowV3beta1Result.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetEntityTypeDialogflowV3beta1Result(
      autoExpansionMode: map['autoExpansionMode'] as String,
      displayName: map['displayName'] as String,
      enableFuzzyExtraction: map['enableFuzzyExtraction'] as bool,
      entities:
          pulumi.Input.decodeList<
            GoogleCloudDialogflowCxV3beta1EntityTypeEntityResponse
          >(
            map['entities']!,
            (value) =>
                GoogleCloudDialogflowCxV3beta1EntityTypeEntityResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      excludedPhrases:
          pulumi.Input.decodeList<
            GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse
          >(
            map['excludedPhrases']!,
            (value) =>
                GoogleCloudDialogflowCxV3beta1EntityTypeExcludedPhraseResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      kind: map['kind'] as String,
      name: map['name'] as String,
      redact: map['redact'] as bool,
    );
  }
}
