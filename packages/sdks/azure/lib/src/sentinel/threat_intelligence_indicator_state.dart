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
  /// The pattern used by the Threat Intelligence Indicator. When `pattern_type` set to `file`, `pattern` must be specified with `&lt;HashName&gt;:&lt;Value&gt;` format, such as `MD5:78ecc5c05cd8b79af480df2f8fba0b9d`.
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
  /// [pattern] The pattern used by the Threat Intelligence Indicator. When `pattern_type` set to `file`, `pattern` must be specified with `&lt;HashName&gt;:&lt;Value&gt;` format, such as `MD5:78ecc5c05cd8b79af480df2f8fba0b9d`.
  /// [patternType] The type of pattern used by the Threat Intelligence Indicator. Possible values are `domain-name`, `file`, `ipv4-addr`, `ipv6-addr` and `url`.
  /// [patternVersion] The version of a Threat Intelligence entity.
  /// [revoked] Whether the Threat Intelligence entity revoked.
  /// [source] Source of the Threat Intelligence Indicator. Changing this forces a new resource to be created.
  /// [tags] Specifies a list of tags of the Threat Intelligence Indicator.
  /// [threatTypes] Specifies a list of threat types of this Threat Intelligence Indicator.
  /// [validateFromUtc] The start of validate date in RFC3339.
  /// [validateUntilUtc] The end of validate date of the Threat Intelligence Indicator in RFC3339 format.
  /// [workspaceId] The ID of the Log Analytics Workspace. Changing this forces a new Sentinel Threat Intelligence Indicator to be created.
  const ThreatIntelligenceIndicatorState({
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
      confidence: (() { final guardedValue = map['confidence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defanged: (() { final guardedValue = map['defanged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extension: (() { final guardedValue = map['extension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalLastUpdatedTimeUtc: (() { final guardedValue = map['externalLastUpdatedTimeUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalReferences: (() { final guardedValue = map['externalReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThreatIntelligenceIndicatorExternalReference>(guardedValue, (value) => ThreatIntelligenceIndicatorExternalReference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      granularMarkings: (() { final guardedValue = map['granularMarkings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThreatIntelligenceIndicatorGranularMarking>(guardedValue, (value) => ThreatIntelligenceIndicatorGranularMarking.fromMap((value as Map).cast<String, dynamic>()))); })(),
      guid: (() { final guardedValue = map['guid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indicatorTypes: (() { final guardedValue = map['indicatorTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      killChainPhases: (() { final guardedValue = map['killChainPhases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThreatIntelligenceIndicatorKillChainPhase>(guardedValue, (value) => ThreatIntelligenceIndicatorKillChainPhase.fromMap((value as Map).cast<String, dynamic>()))); })(),
      language: (() { final guardedValue = map['language']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastUpdatedTimeUtc: (() { final guardedValue = map['lastUpdatedTimeUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectMarkingRefs: (() { final guardedValue = map['objectMarkingRefs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parsedPatterns: (() { final guardedValue = map['parsedPatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ThreatIntelligenceIndicatorParsedPattern>(guardedValue, (value) => ThreatIntelligenceIndicatorParsedPattern.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pattern: (() { final guardedValue = map['pattern']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patternType: (() { final guardedValue = map['patternType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patternVersion: (() { final guardedValue = map['patternVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revoked: (() { final guardedValue = map['revoked']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      threatTypes: (() { final guardedValue = map['threatTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      validateFromUtc: (() { final guardedValue = map['validateFromUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      validateUntilUtc: (() { final guardedValue = map['validateUntilUtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: (() { final guardedValue = map['workspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

