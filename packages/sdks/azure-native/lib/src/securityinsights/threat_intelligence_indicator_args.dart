// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'threat_intelligence_external_reference.dart';
import 'threat_intelligence_granular_marking_model.dart';
import 'threat_intelligence_kill_chain_phase.dart';
import 'threat_intelligence_parsed_pattern.dart';

/// {@template pulumi_securityinsights_threat_intelligence_indicator_args_doc}
/// The set of arguments for ThreatIntelligenceIndicator.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_threat_intelligence_indicator_args_doc}
class ThreatIntelligenceIndicatorArgs {
  /// Confidence of threat intelligence entity
  final pulumi.Input<int>? confidence;
  /// Created by
  final pulumi.Input<String>? created;
  /// Created by reference of threat intelligence entity
  final pulumi.Input<String>? createdByRef;
  /// Is threat intelligence entity defanged
  final pulumi.Input<bool>? defanged;
  /// Description of a threat intelligence entity
  final pulumi.Input<String>? description;
  /// Display name of a threat intelligence entity
  final pulumi.Input<String>? displayName;
  /// Extensions map
  final pulumi.Input<dynamic>? extensions;
  /// External ID of threat intelligence entity
  final pulumi.Input<String>? externalId;
  /// External last updated time in UTC
  final pulumi.Input<String>? externalLastUpdatedTimeUtc;
  /// External References
  final pulumi.Input<List<ThreatIntelligenceExternalReference>>? externalReferences;
  /// Granular Markings
  final pulumi.Input<List<ThreatIntelligenceGranularMarkingModel>>? granularMarkings;
  /// Indicator types of threat intelligence entities
  final pulumi.Input<List<String>>? indicatorTypes;
  /// Kill chain phases
  final pulumi.Input<List<ThreatIntelligenceKillChainPhase>>? killChainPhases;
  /// The kind of the threat intelligence entity
  /// Expected value is 'indicator'.
  final pulumi.Input<String> kind;
  /// Labels  of threat intelligence entity
  final pulumi.Input<List<String>>? labels;
  /// Language of threat intelligence entity
  final pulumi.Input<String>? language;
  /// Last updated time in UTC
  final pulumi.Input<String>? lastUpdatedTimeUtc;
  /// Modified by
  final pulumi.Input<String>? modified;
  /// Threat intelligence indicator name field.
  final pulumi.Input<String>? name;
  /// Threat intelligence entity object marking references
  final pulumi.Input<List<String>>? objectMarkingRefs;
  /// Parsed patterns
  final pulumi.Input<List<ThreatIntelligenceParsedPattern>>? parsedPattern;
  /// Pattern of a threat intelligence entity
  final pulumi.Input<String>? pattern;
  /// Pattern type of a threat intelligence entity
  final pulumi.Input<String>? patternType;
  /// Pattern version of a threat intelligence entity
  final pulumi.Input<String>? patternVersion;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Is threat intelligence entity revoked
  final pulumi.Input<bool>? revoked;
  /// Source of a threat intelligence entity
  final pulumi.Input<String>? source;
  /// List of tags
  final pulumi.Input<List<String>>? threatIntelligenceTags;
  /// Threat types
  final pulumi.Input<List<String>>? threatTypes;
  /// Valid from
  final pulumi.Input<String>? validFrom;
  /// Valid until
  final pulumi.Input<String>? validUntil;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ThreatIntelligenceIndicatorArgs].
  /// [confidence] Confidence of threat intelligence entity
  /// [created] Created by
  /// [createdByRef] Created by reference of threat intelligence entity
  /// [defanged] Is threat intelligence entity defanged
  /// [description] Description of a threat intelligence entity
  /// [displayName] Display name of a threat intelligence entity
  /// [extensions] Extensions map
  /// [externalId] External ID of threat intelligence entity
  /// [externalLastUpdatedTimeUtc] External last updated time in UTC
  /// [externalReferences] External References
  /// [granularMarkings] Granular Markings
  /// [indicatorTypes] Indicator types of threat intelligence entities
  /// [killChainPhases] Kill chain phases
  /// [kind] The kind of the threat intelligence entity
  /// [labels] Labels  of threat intelligence entity
  /// [language] Language of threat intelligence entity
  /// [lastUpdatedTimeUtc] Last updated time in UTC
  /// [modified] Modified by
  /// [name] Threat intelligence indicator name field.
  /// [objectMarkingRefs] Threat intelligence entity object marking references
  /// [parsedPattern] Parsed patterns
  /// [pattern] Pattern of a threat intelligence entity
  /// [patternType] Pattern type of a threat intelligence entity
  /// [patternVersion] Pattern version of a threat intelligence entity
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [revoked] Is threat intelligence entity revoked
  /// [source] Source of a threat intelligence entity
  /// [threatIntelligenceTags] List of tags
  /// [threatTypes] Threat types
  /// [validFrom] Valid from
  /// [validUntil] Valid until
  /// [workspaceName] The name of the workspace.
  ThreatIntelligenceIndicatorArgs({
    this.confidence,
    this.created,
    this.createdByRef,
    this.defanged,
    this.description,
    this.displayName,
    this.extensions,
    this.externalId,
    this.externalLastUpdatedTimeUtc,
    this.externalReferences,
    this.granularMarkings,
    this.indicatorTypes,
    this.killChainPhases,
    required this.kind,
    this.labels,
    this.language,
    this.lastUpdatedTimeUtc,
    this.modified,
    this.name,
    this.objectMarkingRefs,
    this.parsedPattern,
    this.pattern,
    this.patternType,
    this.patternVersion,
    required this.resourceGroupName,
    this.revoked,
    this.source,
    this.threatIntelligenceTags,
    this.threatTypes,
    this.validFrom,
    this.validUntil,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidence': ?confidence,
      'created': ?created,
      'createdByRef': ?createdByRef,
      'defanged': ?defanged,
      'description': ?description,
      'displayName': ?displayName,
      'extensions': ?extensions,
      'externalId': ?externalId,
      'externalLastUpdatedTimeUtc': ?externalLastUpdatedTimeUtc,
      'externalReferences': ?pulumi.Input.mapOptionalInputValue<List<ThreatIntelligenceExternalReference>, List<Map<String, dynamic>>>(externalReferences, (value) => pulumi.Input.encodeList<ThreatIntelligenceExternalReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'granularMarkings': ?pulumi.Input.mapOptionalInputValue<List<ThreatIntelligenceGranularMarkingModel>, List<Map<String, dynamic>>>(granularMarkings, (value) => pulumi.Input.encodeList<ThreatIntelligenceGranularMarkingModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'indicatorTypes': ?indicatorTypes,
      'killChainPhases': ?pulumi.Input.mapOptionalInputValue<List<ThreatIntelligenceKillChainPhase>, List<Map<String, dynamic>>>(killChainPhases, (value) => pulumi.Input.encodeList<ThreatIntelligenceKillChainPhase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kind': kind,
      'labels': ?labels,
      'language': ?language,
      'lastUpdatedTimeUtc': ?lastUpdatedTimeUtc,
      'modified': ?modified,
      'name': ?name,
      'objectMarkingRefs': ?objectMarkingRefs,
      'parsedPattern': ?pulumi.Input.mapOptionalInputValue<List<ThreatIntelligenceParsedPattern>, List<Map<String, dynamic>>>(parsedPattern, (value) => pulumi.Input.encodeList<ThreatIntelligenceParsedPattern, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pattern': ?pattern,
      'patternType': ?patternType,
      'patternVersion': ?patternVersion,
      'resourceGroupName': resourceGroupName,
      'revoked': ?revoked,
      'source': ?source,
      'threatIntelligenceTags': ?threatIntelligenceTags,
      'threatTypes': ?threatTypes,
      'validFrom': ?validFrom,
      'validUntil': ?validUntil,
      'workspaceName': workspaceName,
    };
  }

  factory ThreatIntelligenceIndicatorArgs.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceIndicatorArgs(
      confidence: map['confidence'] == null ? null : (map['confidence'] as int).input(),
      created: map['created'] == null ? null : (map['created'] as String).input(),
      createdByRef: map['createdByRef'] == null ? null : (map['createdByRef'] as String).input(),
      defanged: map['defanged'] == null ? null : (map['defanged'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      extensions: map['extensions'] == null ? null : (map['extensions']).input(),
      externalId: map['externalId'] == null ? null : (map['externalId'] as String).input(),
      externalLastUpdatedTimeUtc: map['externalLastUpdatedTimeUtc'] == null ? null : (map['externalLastUpdatedTimeUtc'] as String).input(),
      externalReferences: map['externalReferences'] == null ? null : (pulumi.Input.decodeList<ThreatIntelligenceExternalReference>(map['externalReferences'], (value) => ThreatIntelligenceExternalReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      granularMarkings: map['granularMarkings'] == null ? null : (pulumi.Input.decodeList<ThreatIntelligenceGranularMarkingModel>(map['granularMarkings'], (value) => ThreatIntelligenceGranularMarkingModel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      indicatorTypes: map['indicatorTypes'] == null ? null : ((map['indicatorTypes'] as List).cast<String>()).input(),
      killChainPhases: map['killChainPhases'] == null ? null : (pulumi.Input.decodeList<ThreatIntelligenceKillChainPhase>(map['killChainPhases'], (value) => ThreatIntelligenceKillChainPhase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      kind: (map['kind'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as List).cast<String>()).input(),
      language: map['language'] == null ? null : (map['language'] as String).input(),
      lastUpdatedTimeUtc: map['lastUpdatedTimeUtc'] == null ? null : (map['lastUpdatedTimeUtc'] as String).input(),
      modified: map['modified'] == null ? null : (map['modified'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      objectMarkingRefs: map['objectMarkingRefs'] == null ? null : ((map['objectMarkingRefs'] as List).cast<String>()).input(),
      parsedPattern: map['parsedPattern'] == null ? null : (pulumi.Input.decodeList<ThreatIntelligenceParsedPattern>(map['parsedPattern'], (value) => ThreatIntelligenceParsedPattern.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pattern: map['pattern'] == null ? null : (map['pattern'] as String).input(),
      patternType: map['patternType'] == null ? null : (map['patternType'] as String).input(),
      patternVersion: map['patternVersion'] == null ? null : (map['patternVersion'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      revoked: map['revoked'] == null ? null : (map['revoked'] as bool).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
      threatIntelligenceTags: map['threatIntelligenceTags'] == null ? null : ((map['threatIntelligenceTags'] as List).cast<String>()).input(),
      threatTypes: map['threatTypes'] == null ? null : ((map['threatTypes'] as List).cast<String>()).input(),
      validFrom: map['validFrom'] == null ? null : (map['validFrom'] as String).input(),
      validUntil: map['validUntil'] == null ? null : (map['validUntil'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

