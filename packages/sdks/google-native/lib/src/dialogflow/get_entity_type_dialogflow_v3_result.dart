// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3_entity_type_entity_response.dart';
import 'google_cloud_dialogflow_cx_v3_entity_type_excluded_phrase_response.dart';

/// Result data returned by getEntityType.
class GetEntityTypeDialogflowV3Result {
  /// Indicates whether the entity type can be automatically expanded.
  final String? autoExpansionMode;
  /// The human-readable name of the entity type, unique within the agent.
  final String? displayName;
  /// Enables fuzzy entity extraction during classification.
  final bool? enableFuzzyExtraction;
  /// The collection of entity entries associated with the entity type.
  final List<GoogleCloudDialogflowCxV3EntityTypeEntityResponse>? entities;
  /// Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry `giant`(an adjective), you might consider adding `giants`(a noun) as an exclusion. If the kind of entity type is `KIND_MAP`, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  final List<GoogleCloudDialogflowCxV3EntityTypeExcludedPhraseResponse>? excludedPhrases;
  /// Indicates the kind of entity type.
  final String? kind;
  /// The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.
  final String? name;
  /// Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging.
  final bool? redact;

  /// Creates a new [GetEntityTypeDialogflowV3Result].
  /// [autoExpansionMode] Indicates whether the entity type can be automatically expanded.
  /// [displayName] The human-readable name of the entity type, unique within the agent.
  /// [enableFuzzyExtraction] Enables fuzzy entity extraction during classification.
  /// [entities] The collection of entity entries associated with the entity type.
  /// [excludedPhrases] Collection of exceptional words and phrases that shouldn't be matched. For example, if you have a size entity type with entry `giant`(an adjective), you might consider adding `giants`(a noun) as an exclusion. If the kind of entity type is `KIND_MAP`, then the phrases specified by entities and excluded phrases should be mutually exclusive.
  /// [kind] Indicates the kind of entity type.
  /// [name] The unique identifier of the entity type. Required for EntityTypes.UpdateEntityType. Format: `projects//locations//agents//entityTypes/`.
  /// [redact] Indicates whether parameters of the entity type should be redacted in log. If redaction is enabled, page parameters and intent parameters referring to the entity type will be replaced by parameter name when logging.
  const GetEntityTypeDialogflowV3Result({
    this.autoExpansionMode,
    this.displayName,
    this.enableFuzzyExtraction,
    this.entities,
    this.excludedPhrases,
    this.kind,
    this.name,
    this.redact,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoExpansionMode': ?autoExpansionMode,
      'displayName': ?displayName,
      'enableFuzzyExtraction': ?enableFuzzyExtraction,
      'entities': ?(() { final guardedValue = entities; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDialogflowCxV3EntityTypeEntityResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'excludedPhrases': ?(() { final guardedValue = excludedPhrases; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDialogflowCxV3EntityTypeExcludedPhraseResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kind': ?kind,
      'name': ?name,
      'redact': ?redact,
    };
  }

  factory GetEntityTypeDialogflowV3Result.fromMap(Map<String, dynamic> map) {
    return GetEntityTypeDialogflowV3Result(
      autoExpansionMode: (() { final guardedValue = map['autoExpansionMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableFuzzyExtraction: (() { final guardedValue = map['enableFuzzyExtraction']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      entities: (() { final guardedValue = map['entities']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDialogflowCxV3EntityTypeEntityResponse>(guardedValue, (value) => GoogleCloudDialogflowCxV3EntityTypeEntityResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      excludedPhrases: (() { final guardedValue = map['excludedPhrases']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDialogflowCxV3EntityTypeExcludedPhraseResponse>(guardedValue, (value) => GoogleCloudDialogflowCxV3EntityTypeExcludedPhraseResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      redact: (() { final guardedValue = map['redact']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
