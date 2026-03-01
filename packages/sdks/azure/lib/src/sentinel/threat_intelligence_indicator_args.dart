// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'threat_intelligence_indicator_external_reference.dart';
import 'threat_intelligence_indicator_granular_marking.dart';
import 'threat_intelligence_indicator_kill_chain_phase.dart';

/// {@template pulumi_sentinel_threat_intelligence_indicator_threat_intelligence_indicator_args_doc}
/// The set of arguments for ThreatIntelligenceIndicator.
/// {@endtemplate}
/// {@macro pulumi_sentinel_threat_intelligence_indicator_threat_intelligence_indicator_args_doc}
class ThreatIntelligenceIndicatorArgs {
  /// Confidence levels of the Threat Intelligence Indicator.
  final pulumi.Input<int>? confidence;
  /// The creator of the Threat Intelligence Indicator.
  final pulumi.Input<String>? createdBy;
  /// The description of the Threat Intelligence Indicator.
  final pulumi.Input<String>? description;
  /// The display name of the Threat Intelligence Indicator.
  final pulumi.Input<String> displayName;
  /// The extension config of the Threat Intelligence Indicator in JSON format.
  final pulumi.Input<String>? extension;
  /// One or more `external_reference` blocks as defined below.
  final pulumi.Input<List<ThreatIntelligenceIndicatorExternalReference>>? externalReferences;
  /// One or more `granular_marking` blocks as defined below.
  final pulumi.Input<List<ThreatIntelligenceIndicatorGranularMarking>>? granularMarkings;
  /// One or more `kill_chain_phase` blocks as defined below.
  final pulumi.Input<List<ThreatIntelligenceIndicatorKillChainPhase>>? killChainPhases;
  /// The language of the Threat Intelligence Indicator.
  final pulumi.Input<String>? language;
  /// Specifies a list of Threat Intelligence marking references.
  final pulumi.Input<List<String>>? objectMarkingRefs;
  /// The pattern used by the Threat Intelligence Indicator. When `pattern_type` set to `file`, `pattern` must be specified with `<HashName>:<Value>` format, such as `MD5:78ecc5c05cd8b79af480df2f8fba0b9d`.
  final pulumi.Input<String> pattern;
  /// The type of pattern used by the Threat Intelligence Indicator. Possible values are `domain-name`, `file`, `ipv4-addr`, `ipv6-addr` and `url`.
  final pulumi.Input<String> patternType;
  /// The version of a Threat Intelligence entity.
  final pulumi.Input<String>? patternVersion;
  /// Whether the Threat Intelligence entity revoked.
  final pulumi.Input<bool>? revoked;
  /// Source of the Threat Intelligence Indicator. Changing this forces a new resource to be created.
  final pulumi.Input<String> source;
  /// Specifies a list of tags of the Threat Intelligence Indicator.
  final pulumi.Input<List<String>>? tags;
  /// Specifies a list of threat types of this Threat Intelligence Indicator.
  final pulumi.Input<List<String>>? threatTypes;
  /// The start of validate date in RFC3339.
  final pulumi.Input<String> validateFromUtc;
  /// The end of validate date of the Threat Intelligence Indicator in RFC3339 format.
  final pulumi.Input<String>? validateUntilUtc;
  /// The ID of the Log Analytics Workspace. Changing this forces a new Sentinel Threat Intelligence Indicator to be created.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [ThreatIntelligenceIndicatorArgs].
  /// [confidence] Confidence levels of the Threat Intelligence Indicator.
  /// [createdBy] The creator of the Threat Intelligence Indicator.
  /// [description] The description of the Threat Intelligence Indicator.
  /// [displayName] The display name of the Threat Intelligence Indicator.
  /// [extension] The extension config of the Threat Intelligence Indicator in JSON format.
  /// [externalReferences] One or more `external_reference` blocks as defined below.
  /// [granularMarkings] One or more `granular_marking` blocks as defined below.
  /// [killChainPhases] One or more `kill_chain_phase` blocks as defined below.
  /// [language] The language of the Threat Intelligence Indicator.
  /// [objectMarkingRefs] Specifies a list of Threat Intelligence marking references.
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
  ThreatIntelligenceIndicatorArgs({
    pulumi.Output<int>? confidence,
    pulumi.Output<String>? createdBy,
    pulumi.Output<String>? description,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? extension,
    pulumi.Output<List<ThreatIntelligenceIndicatorExternalReference>>? externalReferences,
    pulumi.Output<List<ThreatIntelligenceIndicatorGranularMarking>>? granularMarkings,
    pulumi.Output<List<ThreatIntelligenceIndicatorKillChainPhase>>? killChainPhases,
    pulumi.Output<String>? language,
    pulumi.Output<List<String>>? objectMarkingRefs,
    required pulumi.Output<String> pattern,
    required pulumi.Output<String> patternType,
    pulumi.Output<String>? patternVersion,
    pulumi.Output<bool>? revoked,
    required pulumi.Output<String> source,
    pulumi.Output<List<String>>? tags,
    pulumi.Output<List<String>>? threatTypes,
    required pulumi.Output<String> validateFromUtc,
    pulumi.Output<String>? validateUntilUtc,
    required pulumi.Output<String> workspaceId,
  }) :
      confidence = pulumi.Input.asOptionalInput<int>(confidence),
      createdBy = pulumi.Input.asOptionalInput<String>(createdBy),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asInput<String>(displayName),
      extension = pulumi.Input.asOptionalInput<String>(extension),
      externalReferences = pulumi.Input.asOptionalInput<List<ThreatIntelligenceIndicatorExternalReference>>(externalReferences),
      granularMarkings = pulumi.Input.asOptionalInput<List<ThreatIntelligenceIndicatorGranularMarking>>(granularMarkings),
      killChainPhases = pulumi.Input.asOptionalInput<List<ThreatIntelligenceIndicatorKillChainPhase>>(killChainPhases),
      language = pulumi.Input.asOptionalInput<String>(language),
      objectMarkingRefs = pulumi.Input.asOptionalInput<List<String>>(objectMarkingRefs),
      pattern = pulumi.Input.asInput<String>(pattern),
      patternType = pulumi.Input.asInput<String>(patternType),
      patternVersion = pulumi.Input.asOptionalInput<String>(patternVersion),
      revoked = pulumi.Input.asOptionalInput<bool>(revoked),
      source = pulumi.Input.asInput<String>(source),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      threatTypes = pulumi.Input.asOptionalInput<List<String>>(threatTypes),
      validateFromUtc = pulumi.Input.asInput<String>(validateFromUtc),
      validateUntilUtc = pulumi.Input.asOptionalInput<String>(validateUntilUtc),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'confidence': ?confidence,
      'createdBy': ?createdBy,
      'description': ?description,
      'displayName': displayName,
      'extension': ?extension,
      'externalReferences': ?pulumi.Input.mapOptionalInputValue<List<ThreatIntelligenceIndicatorExternalReference>, List<Map<String, dynamic>>>(externalReferences, (value) => pulumi.Input.encodeList<ThreatIntelligenceIndicatorExternalReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'granularMarkings': ?pulumi.Input.mapOptionalInputValue<List<ThreatIntelligenceIndicatorGranularMarking>, List<Map<String, dynamic>>>(granularMarkings, (value) => pulumi.Input.encodeList<ThreatIntelligenceIndicatorGranularMarking, Map<String, dynamic>>(value, (value) => value.toMap())),
      'killChainPhases': ?pulumi.Input.mapOptionalInputValue<List<ThreatIntelligenceIndicatorKillChainPhase>, List<Map<String, dynamic>>>(killChainPhases, (value) => pulumi.Input.encodeList<ThreatIntelligenceIndicatorKillChainPhase, Map<String, dynamic>>(value, (value) => value.toMap())),
      'language': ?language,
      'objectMarkingRefs': ?objectMarkingRefs,
      'pattern': pattern,
      'patternType': patternType,
      'patternVersion': ?patternVersion,
      'revoked': ?revoked,
      'source': source,
      'tags': ?tags,
      'threatTypes': ?threatTypes,
      'validateFromUtc': validateFromUtc,
      'validateUntilUtc': ?validateUntilUtc,
      'workspaceId': workspaceId,
    };
  }

  factory ThreatIntelligenceIndicatorArgs.fromMap(Map<String, dynamic> map) {
    return ThreatIntelligenceIndicatorArgs(
      confidence: map['confidence'] == null ? null : pulumi.Output.create<int>(map['confidence'] as int),
      createdBy: map['createdBy'] == null ? null : pulumi.Output.create<String>(map['createdBy'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      extension: map['extension'] == null ? null : pulumi.Output.create<String>(map['extension'] as String),
      externalReferences: map['externalReferences'] == null ? null : pulumi.Output.create<List<ThreatIntelligenceIndicatorExternalReference>>(pulumi.Input.decodeList<ThreatIntelligenceIndicatorExternalReference>(map['externalReferences'], (value) => ThreatIntelligenceIndicatorExternalReference.fromMap((value as Map).cast<String, dynamic>()))),
      granularMarkings: map['granularMarkings'] == null ? null : pulumi.Output.create<List<ThreatIntelligenceIndicatorGranularMarking>>(pulumi.Input.decodeList<ThreatIntelligenceIndicatorGranularMarking>(map['granularMarkings'], (value) => ThreatIntelligenceIndicatorGranularMarking.fromMap((value as Map).cast<String, dynamic>()))),
      killChainPhases: map['killChainPhases'] == null ? null : pulumi.Output.create<List<ThreatIntelligenceIndicatorKillChainPhase>>(pulumi.Input.decodeList<ThreatIntelligenceIndicatorKillChainPhase>(map['killChainPhases'], (value) => ThreatIntelligenceIndicatorKillChainPhase.fromMap((value as Map).cast<String, dynamic>()))),
      language: map['language'] == null ? null : pulumi.Output.create<String>(map['language'] as String),
      objectMarkingRefs: map['objectMarkingRefs'] == null ? null : pulumi.Output.create<List<String>>((map['objectMarkingRefs'] as List).cast<String>()),
      pattern: pulumi.Output.create<String>(map['pattern'] as String),
      patternType: pulumi.Output.create<String>(map['patternType'] as String),
      patternVersion: map['patternVersion'] == null ? null : pulumi.Output.create<String>(map['patternVersion'] as String),
      revoked: map['revoked'] == null ? null : pulumi.Output.create<bool>(map['revoked'] as bool),
      source: pulumi.Output.create<String>(map['source'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
      threatTypes: map['threatTypes'] == null ? null : pulumi.Output.create<List<String>>((map['threatTypes'] as List).cast<String>()),
      validateFromUtc: pulumi.Output.create<String>(map['validateFromUtc'] as String),
      validateUntilUtc: map['validateUntilUtc'] == null ? null : pulumi.Output.create<String>(map['validateUntilUtc'] as String),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

