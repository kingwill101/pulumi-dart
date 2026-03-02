// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'threat_intelligence_indicator_external_reference.dart';
import 'threat_intelligence_indicator_granular_marking.dart';
import 'threat_intelligence_indicator_kill_chain_phase.dart';
import 'threat_intelligence_indicator_parsed_pattern.dart';

/// Input properties used for looking up and filtering ThreatIntelligenceIndicator resources.
class ThreatIntelligenceIndicatorState {
  /// Confidence levels of the Threat Intelligence Indicator.
  final pulumi.Input<int>? confidence;
  /// The creator of the Threat Intelligence Indicator.
  final pulumi.Input<String>? createdBy;
  /// The date of this Threat Intelligence Indicator created.
  final pulumi.Input<String>? createdOn;
  /// Whether the Threat Intelligence entity is defanged?
  final pulumi.Input<bool>? defanged;
  /// The description of the Threat Intelligence Indicator.
  final pulumi.Input<String>? description;
  /// The display name of the Threat Intelligence Indicator.
  final pulumi.Input<String>? displayName;
  /// The extension config of the Threat Intelligence Indicator in JSON format.
  final pulumi.Input<String>? extension;
  /// The external ID of the Threat Intelligence Indicator.
  final pulumi.Input<String>? externalId;
  /// the External last updated time in UTC.
  final pulumi.Input<String>? externalLastUpdatedTimeUtc;
  /// One or more `external_reference` blocks as defined below.
  final pulumi.Input<List<ThreatIntelligenceIndicatorExternalReference>>? externalReferences;
  /// One or more `granular_marking` blocks as defined below.
  final pulumi.Input<List<ThreatIntelligenceIndicatorGranularMarking>>? granularMarkings;
  /// The guid of this Sentinel Threat Intelligence Indicator.
  final pulumi.Input<String>? guid;
  /// A list of indicator types of this Threat Intelligence Indicator.
  final pulumi.Input<List<String>>? indicatorTypes;
  /// One or more `kill_chain_phase` blocks as defined below.
  final pulumi.Input<List<ThreatIntelligenceIndicatorKillChainPhase>>? killChainPhases;
  /// The language of the Threat Intelligence Indicator.
  final pulumi.Input<String>? language;
  /// The last updated time of the Threat Intelligence Indicator in UTC.
  final pulumi.Input<String>? lastUpdatedTimeUtc;
  /// Specifies a list of Threat Intelligence marking references.
  final pulumi.Input<List<String>>? objectMarkingRefs;
  /// A `parsed_pattern` block as defined below.
  final pulumi.Input<List<ThreatIntelligenceIndicatorParsedPattern>>? parsedPatterns;
  /// The pattern used by the Threat Intelligence Indicator. When `pattern_type` set to `file`, `pattern` must be specified with `<HashName>:<Value>` format, such as `MD5:78ecc5c05cd8b79af480df2f8fba0b9d`.
  final pulumi.Input<String>? pattern;
  /// The type of pattern used by the Threat Intelligence Indicator. Possible values are `domain-name`, `file`, `ipv4-addr`, `ipv6-addr` and `url`.
  final pulumi.Input<String>? patternType;
  /// The version of a Threat Intelligence entity.
  final pulumi.Input<String>? patternVersion;
  /// Whether the Threat Intelligence entity revoked.
  final pulumi.Input<bool>? revoked;
  /// Source of the Threat Intelligence Indicator. Changing this forces a new resource to be created.
  final pulumi.Input<String>? source;
  /// Specifies a list of tags of the Threat Intelligence Indicator.
  final pulumi.Input<List<String>>? tags;
  /// Specifies a list of threat types of this Threat Intelligence Indicator.
  final pulumi.Input<List<String>>? threatTypes;
  /// The start of validate date in RFC3339.
  final pulumi.Input<String>? validateFromUtc;
  /// The end of validate date of the Threat Intelligence Indicator in RFC3339 format.
  final pulumi.Input<String>? validateUntilUtc;
  /// The ID of the Log Analytics Workspace. Changing this forces a new Sentinel Threat Intelligence Indicator to be created.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [ThreatIntelligenceIndicatorState].
  /// [confidence] Confidence levels of the Threat Intelligence Indicator.
  /// [createdBy] The creator of the Threat Intelligence Indicator.
  /// [createdOn] The date of this Threat Intelligence Indicator created.
  /// [defanged] Whether the Threat Intelligence entity is defanged?
  /// [description] The description of the Threat Intelligence Indicator.
  /// [displayName] The display name of the Threat Intelligence Indicator.
  /// [extension] The extension config of the Threat Intelligence Indicator in JSON format.
  /// [externalId] The external ID of the Threat Intelligence Indicator.
  /// [externalLastUpdatedTimeUtc] the External last updated time in UTC.
  /// [externalReferences] One or more `external_reference` blocks as defined below.
  /// [granularMarkings] One or more `granular_marking` blocks as defined below.
  /// [guid] The guid of this Sentinel Threat Intelligence Indicator.
  /// [indicatorTypes] A list of indicator types of this Threat Intelligence Indicator.
  /// [killChainPhases] One or more `kill_chain_phase` blocks as defined below.
  /// [language] The language of the Threat Intelligence Indicator.
  /// [lastUpdatedTimeUtc] The last updated time of the Threat Intelligence Indicator in UTC.
  /// [objectMarkingRefs] Specifies a list of Threat Intelligence marking references.
  /// [parsedPatterns] A `parsed_pattern` block as defined below.
  /// [pattern] The pattern used by the Threat Intelligence Indicator. When `pattern_type` set to `file`, `pattern` must be specified with `<HashName>:<Value>` format, such as `MD5:78ecc5c05cd8b79af480df2f8fba0b9d`.
  /// [patternType] The type of pattern used by the Threat Intelligence Indicator. Possible values are `domain-name`, `file`, `ipv4-addr`, `ipv6-addr` and `url`.
  /// [patternVersion] The version of a Threat Intelligence entity.
  /// [revoked] Whether the Threat Intelligence entity revoked.
  /// [source] Source of the Threat Intelligence Indicator. Changing this forces a new resource to be created.
  /// [tags] Specifies a list of tags of the Threat Intelligence Indicator.
  /// [threatTypes] Specifies a list of threat types of this Threat Intelligence Indicator.
  /// [validateFromUtc] The start of validate date in RFC3339.
  /// [validateUntilUtc] The end of validate date of the Threat Intelligence Indicator in RFC3339 format.
  /// [workspaceId] The ID of the Log Analytics Workspace. Changing this forces a new Sentinel Threat Intelligence Indicator to be created.
  ThreatIntelligenceIndicatorState({
    this.confidence,
    this.createdBy,
    this.createdOn,
    this.defanged,
    this.description,
    this.displayName,
    this.extension,
    this.externalId,
    this.externalLastUpdatedTimeUtc,
    this.externalReferences,
    this.granularMarkings,
    this.guid,
    this.indicatorTypes,
    this.killChainPhases,
    this.language,
    this.lastUpdatedTimeUtc,
    this.objectMarkingRefs,
    this.parsedPatterns,
    this.pattern,
    this.patternType,
    this.patternVersion,
    this.revoked,
    this.source,
    this.tags,
    this.threatTypes,
    this.validateFromUtc,
    this.validateUntilUtc,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidence': ?confidence,
      'createdBy': ?createdBy,
      'createdOn': ?createdOn,
      'defanged': ?defanged,
      'description': ?description,
      'displayName': ?displayName,
      'extension': ?extension,
      'externalId': ?externalId,
      'externalLastUpdatedTimeUtc': ?externalLastUpdatedTimeUtc,
      'externalReferences': ?pulumi.Input.mapOptionalInputValue<List<ThreatIntelligenceIndicatorExternalReference>, List<Map<String, dynamic>>>(externalReferences, (value) => pulumi.Input.encodeList<ThreatIntelligenceIndicatorExternalReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'granularMarkings': ?pulumi.Input.mapOptionalInputValue<List<ThreatIntelligenceIndicatorGranularMarking>, List<Map<String, dynamic>>>(granularMarkings, (value) => pulumi.Input.encodeList<ThreatIntelligenceIndicatorGranularMarking, Map<String, dynamic>>(value, (value) => value.toMap())),
      'guid': ?guid,
      'indicatorTypes': ?indicatorTypes,
      'killChainPhases': ?pulumi.Input.mapOptionalInputValue<List<ThreatIntelligenceIndicatorKillChainPhase>, List<Map<String, dynamic>>>(killChainPhases, (value) => pulumi.Input.encodeList<ThreatIntelligenceIndicatorKillChainPhase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'language': ?language,
      'lastUpdatedTimeUtc': ?lastUpdatedTimeUtc,
      'objectMarkingRefs': ?objectMarkingRefs,
      'parsedPatterns': ?pulumi.Input.mapOptionalInputValue<List<ThreatIntelligenceIndicatorParsedPattern>, List<Map<String, dynamic>>>(parsedPatterns, (value) => pulumi.Input.encodeList<ThreatIntelligenceIndicatorParsedPattern, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pattern': ?pattern,
      'patternType': ?patternType,
      'patternVersion': ?patternVersion,
      'revoked': ?revoked,
      'source': ?source,
      'tags': ?tags,
      'threatTypes': ?threatTypes,
      'validateFromUtc': ?validateFromUtc,
      'validateUntilUtc': ?validateUntilUtc,
      'workspaceId': ?workspaceId,
    };
  }

  factory ThreatIntelligenceIndicatorState.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceIndicatorState(
      confidence: map['confidence'] == null ? null : (map['confidence'] as int).input(),
      createdBy: map['createdBy'] == null ? null : (map['createdBy'] as String).input(),
      createdOn: map['createdOn'] == null ? null : (map['createdOn'] as String).input(),
      defanged: map['defanged'] == null ? null : (map['defanged'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      extension: map['extension'] == null ? null : (map['extension'] as String).input(),
      externalId: map['externalId'] == null ? null : (map['externalId'] as String).input(),
      externalLastUpdatedTimeUtc: map['externalLastUpdatedTimeUtc'] == null ? null : (map['externalLastUpdatedTimeUtc'] as String).input(),
      externalReferences: map['externalReferences'] == null ? null : (pulumi.Input.decodeList<ThreatIntelligenceIndicatorExternalReference>(map['externalReferences'], (value) => ThreatIntelligenceIndicatorExternalReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      granularMarkings: map['granularMarkings'] == null ? null : (pulumi.Input.decodeList<ThreatIntelligenceIndicatorGranularMarking>(map['granularMarkings'], (value) => ThreatIntelligenceIndicatorGranularMarking.fromMap((value as Map).cast<String, dynamic>()))).input(),
      guid: map['guid'] == null ? null : (map['guid'] as String).input(),
      indicatorTypes: map['indicatorTypes'] == null ? null : ((map['indicatorTypes'] as List).cast<String>()).input(),
      killChainPhases: map['killChainPhases'] == null ? null : (pulumi.Input.decodeList<ThreatIntelligenceIndicatorKillChainPhase>(map['killChainPhases'], (value) => ThreatIntelligenceIndicatorKillChainPhase.fromMap((value as Map).cast<String, dynamic>()))).input(),
      language: map['language'] == null ? null : (map['language'] as String).input(),
      lastUpdatedTimeUtc: map['lastUpdatedTimeUtc'] == null ? null : (map['lastUpdatedTimeUtc'] as String).input(),
      objectMarkingRefs: map['objectMarkingRefs'] == null ? null : ((map['objectMarkingRefs'] as List).cast<String>()).input(),
      parsedPatterns: map['parsedPatterns'] == null ? null : (pulumi.Input.decodeList<ThreatIntelligenceIndicatorParsedPattern>(map['parsedPatterns'], (value) => ThreatIntelligenceIndicatorParsedPattern.fromMap((value as Map).cast<String, dynamic>()))).input(),
      pattern: map['pattern'] == null ? null : (map['pattern'] as String).input(),
      patternType: map['patternType'] == null ? null : (map['patternType'] as String).input(),
      patternVersion: map['patternVersion'] == null ? null : (map['patternVersion'] as String).input(),
      revoked: map['revoked'] == null ? null : (map['revoked'] as bool).input(),
      source: map['source'] == null ? null : (map['source'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as List).cast<String>()).input(),
      threatTypes: map['threatTypes'] == null ? null : ((map['threatTypes'] as List).cast<String>()).input(),
      validateFromUtc: map['validateFromUtc'] == null ? null : (map['validateFromUtc'] as String).input(),
      validateUntilUtc: map['validateUntilUtc'] == null ? null : (map['validateUntilUtc'] as String).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId'] as String).input(),
    );
  }
}

