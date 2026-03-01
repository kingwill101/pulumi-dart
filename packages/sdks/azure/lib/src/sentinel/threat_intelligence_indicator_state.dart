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
    pulumi.Output<int>? confidence,
    pulumi.Output<String>? createdBy,
    pulumi.Output<String>? createdOn,
    pulumi.Output<bool>? defanged,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? extension,
    pulumi.Output<String>? externalId,
    pulumi.Output<String>? externalLastUpdatedTimeUtc,
    pulumi.Output<List<ThreatIntelligenceIndicatorExternalReference>>? externalReferences,
    pulumi.Output<List<ThreatIntelligenceIndicatorGranularMarking>>? granularMarkings,
    pulumi.Output<String>? guid,
    pulumi.Output<List<String>>? indicatorTypes,
    pulumi.Output<List<ThreatIntelligenceIndicatorKillChainPhase>>? killChainPhases,
    pulumi.Output<String>? language,
    pulumi.Output<String>? lastUpdatedTimeUtc,
    pulumi.Output<List<String>>? objectMarkingRefs,
    pulumi.Output<List<ThreatIntelligenceIndicatorParsedPattern>>? parsedPatterns,
    pulumi.Output<String>? pattern,
    pulumi.Output<String>? patternType,
    pulumi.Output<String>? patternVersion,
    pulumi.Output<bool>? revoked,
    pulumi.Output<String>? source,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<List<String>>? threatTypes,
    pulumi.Output<String>? validateFromUtc,
    pulumi.Output<String>? validateUntilUtc,
    pulumi.Output<String>? workspaceId,
  }) :
      confidence = pulumi.Input.asOptionalInput<int>(confidence),
      createdBy = pulumi.Input.asOptionalInput<String>(createdBy),
      createdOn = pulumi.Input.asOptionalInput<String>(createdOn),
      defanged = pulumi.Input.asOptionalInput<bool>(defanged),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      extension = pulumi.Input.asOptionalInput<String>(extension),
      externalId = pulumi.Input.asOptionalInput<String>(externalId),
      externalLastUpdatedTimeUtc = pulumi.Input.asOptionalInput<String>(externalLastUpdatedTimeUtc),
      externalReferences = pulumi.Input.asOptionalInput<List<ThreatIntelligenceIndicatorExternalReference>>(externalReferences),
      granularMarkings = pulumi.Input.asOptionalInput<List<ThreatIntelligenceIndicatorGranularMarking>>(granularMarkings),
      guid = pulumi.Input.asOptionalInput<String>(guid),
      indicatorTypes = pulumi.Input.asOptionalInput<List<String>>(indicatorTypes),
      killChainPhases = pulumi.Input.asOptionalInput<List<ThreatIntelligenceIndicatorKillChainPhase>>(killChainPhases),
      language = pulumi.Input.asOptionalInput<String>(language),
      lastUpdatedTimeUtc = pulumi.Input.asOptionalInput<String>(lastUpdatedTimeUtc),
      objectMarkingRefs = pulumi.Input.asOptionalInput<List<String>>(objectMarkingRefs),
      parsedPatterns = pulumi.Input.asOptionalInput<List<ThreatIntelligenceIndicatorParsedPattern>>(parsedPatterns),
      pattern = pulumi.Input.asOptionalInput<String>(pattern),
      patternType = pulumi.Input.asOptionalInput<String>(patternType),
      patternVersion = pulumi.Input.asOptionalInput<String>(patternVersion),
      revoked = pulumi.Input.asOptionalInput<bool>(revoked),
      source = pulumi.Input.asOptionalInput<String>(source),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      threatTypes = pulumi.Input.asOptionalInput<List<String>>(threatTypes),
      validateFromUtc = pulumi.Input.asOptionalInput<String>(validateFromUtc),
      validateUntilUtc = pulumi.Input.asOptionalInput<String>(validateUntilUtc),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

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
      confidence: map['confidence'] == null ? null : pulumi.Output.create<int>(map['confidence'] as int),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<String>(map['createdBy'] as String),
      createdOn: map['createdOn'] == null ? null : pulumi.Output.create<String>(map['createdOn'] as String),
      defanged: map['defanged'] == null ? null : pulumi.Output.create<bool>(map['defanged'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      extension: map['extension'] == null ? null : pulumi.Output.create<String>(map['extension'] as String),
      externalId: map['externalId'] == null ? null : pulumi.Output.create<String>(map['externalId'] as String),
      externalLastUpdatedTimeUtc: map['externalLastUpdatedTimeUtc'] == null ? null : pulumi.Output.create<String>(map['externalLastUpdatedTimeUtc'] as String),
      externalReferences: map['externalReferences'] == null ? null : pulumi.Output.create<List<ThreatIntelligenceIndicatorExternalReference>>(pulumi.Input.decodeList<ThreatIntelligenceIndicatorExternalReference>(map['externalReferences'], (value) => ThreatIntelligenceIndicatorExternalReference.fromMap((value as Map).cast<String, dynamic>()))),
      granularMarkings: map['granularMarkings'] == null ? null : pulumi.Output.create<List<ThreatIntelligenceIndicatorGranularMarking>>(pulumi.Input.decodeList<ThreatIntelligenceIndicatorGranularMarking>(map['granularMarkings'], (value) => ThreatIntelligenceIndicatorGranularMarking.fromMap((value as Map).cast<String, dynamic>()))),
      guid: map['guid'] == null ? null : pulumi.Output.create<String>(map['guid'] as String),
      indicatorTypes: map['indicatorTypes'] == null ? null : pulumi.Output.create<List<String>>((map['indicatorTypes'] as List).cast<String>()),
      killChainPhases: map['killChainPhases'] == null ? null : pulumi.Output.create<List<ThreatIntelligenceIndicatorKillChainPhase>>(pulumi.Input.decodeList<ThreatIntelligenceIndicatorKillChainPhase>(map['killChainPhases'], (value) => ThreatIntelligenceIndicatorKillChainPhase.fromMap((value as Map).cast<String, dynamic>()))),
      language: map['language'] == null ? null : pulumi.Output.create<String>(map['language'] as String),
      lastUpdatedTimeUtc: map['lastUpdatedTimeUtc'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedTimeUtc'] as String),
      objectMarkingRefs: map['objectMarkingRefs'] == null ? null : pulumi.Output.create<List<String>>((map['objectMarkingRefs'] as List).cast<String>()),
      parsedPatterns: map['parsedPatterns'] == null ? null : pulumi.Output.create<List<ThreatIntelligenceIndicatorParsedPattern>>(pulumi.Input.decodeList<ThreatIntelligenceIndicatorParsedPattern>(map['parsedPatterns'], (value) => ThreatIntelligenceIndicatorParsedPattern.fromMap((value as Map).cast<String, dynamic>()))),
      pattern: map['pattern'] == null ? null : pulumi.Output.create<String>(map['pattern'] as String),
      patternType: map['patternType'] == null ? null : pulumi.Output.create<String>(map['patternType'] as String),
      patternVersion: map['patternVersion'] == null ? null : pulumi.Output.create<String>(map['patternVersion'] as String),
      revoked: map['revoked'] == null ? null : pulumi.Output.create<bool>(map['revoked'] as bool),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      threatTypes: map['threatTypes'] == null ? null : pulumi.Output.create<List<String>>((map['threatTypes'] as List).cast<String>()),
      validateFromUtc: map['validateFromUtc'] == null ? null : pulumi.Output.create<String>(map['validateFromUtc'] as String),
      validateUntilUtc: map['validateUntilUtc'] == null ? null : pulumi.Output.create<String>(map['validateUntilUtc'] as String),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

