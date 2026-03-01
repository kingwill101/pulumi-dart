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
    pulumi.Output<int>? confidence,
    pulumi.Output<String>? created,
    pulumi.Output<String>? createdByRef,
    pulumi.Output<bool>? defanged,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<dynamic>? extensions,
    pulumi.Output<String>? externalId,
    pulumi.Output<String>? externalLastUpdatedTimeUtc,
    pulumi.Output<List<ThreatIntelligenceExternalReference>>? externalReferences,
    pulumi.Output<List<ThreatIntelligenceGranularMarkingModel>>? granularMarkings,
    pulumi.Output<List<String>>? indicatorTypes,
    pulumi.Output<List<ThreatIntelligenceKillChainPhase>>? killChainPhases,
    required pulumi.Output<String> kind,
    pulumi.Output<List<String>>? labels,
    pulumi.Output<String>? language,
    pulumi.Output<String>? lastUpdatedTimeUtc,
    pulumi.Output<String>? modified,
    pulumi.Output<String>? name,
    pulumi.Output<List<String>>? objectMarkingRefs,
    pulumi.Output<List<ThreatIntelligenceParsedPattern>>? parsedPattern,
    pulumi.Output<String>? pattern,
    pulumi.Output<String>? patternType,
    pulumi.Output<String>? patternVersion,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<bool>? revoked,
    pulumi.Output<String>? source,
    pulumi.Output<List<String>>? threatIntelligenceTags,
    pulumi.Output<List<String>>? threatTypes,
    pulumi.Output<String>? validFrom,
    pulumi.Output<String>? validUntil,
    required pulumi.Output<String> workspaceName,
  }) :
      confidence = pulumi.Input.asOptionalInput<int>(confidence),
      created = pulumi.Input.asOptionalInput<String>(created),
      createdByRef = pulumi.Input.asOptionalInput<String>(createdByRef),
      defanged = pulumi.Input.asOptionalInput<bool>(defanged),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      extensions = pulumi.Input.asOptionalInput<dynamic>(extensions),
      externalId = pulumi.Input.asOptionalInput<String>(externalId),
      externalLastUpdatedTimeUtc = pulumi.Input.asOptionalInput<String>(externalLastUpdatedTimeUtc),
      externalReferences = pulumi.Input.asOptionalInput<List<ThreatIntelligenceExternalReference>>(externalReferences),
      granularMarkings = pulumi.Input.asOptionalInput<List<ThreatIntelligenceGranularMarkingModel>>(granularMarkings),
      indicatorTypes = pulumi.Input.asOptionalInput<List<String>>(indicatorTypes),
      killChainPhases = pulumi.Input.asOptionalInput<List<ThreatIntelligenceKillChainPhase>>(killChainPhases),
      kind = pulumi.Input.asInput<String>(kind),
      labels = pulumi.Input.asOptionalInput<List<String>>(labels),
      language = pulumi.Input.asOptionalInput<String>(language),
      lastUpdatedTimeUtc = pulumi.Input.asOptionalInput<String>(lastUpdatedTimeUtc),
      modified = pulumi.Input.asOptionalInput<String>(modified),
      name = pulumi.Input.asOptionalInput<String>(name),
      objectMarkingRefs = pulumi.Input.asOptionalInput<List<String>>(objectMarkingRefs),
      parsedPattern = pulumi.Input.asOptionalInput<List<ThreatIntelligenceParsedPattern>>(parsedPattern),
      pattern = pulumi.Input.asOptionalInput<String>(pattern),
      patternType = pulumi.Input.asOptionalInput<String>(patternType),
      patternVersion = pulumi.Input.asOptionalInput<String>(patternVersion),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      revoked = pulumi.Input.asOptionalInput<bool>(revoked),
      source = pulumi.Input.asOptionalInput<String>(source),
      threatIntelligenceTags = pulumi.Input.asOptionalInput<List<String>>(threatIntelligenceTags),
      threatTypes = pulumi.Input.asOptionalInput<List<String>>(threatTypes),
      validFrom = pulumi.Input.asOptionalInput<String>(validFrom),
      validUntil = pulumi.Input.asOptionalInput<String>(validUntil),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      confidence: map['confidence'] == null ? null : pulumi.Output.create<int>(map['confidence'] as int),
      created: map['created'] == null ? null : pulumi.Output.create<String>(map['created'] as String),
      createdByRef: map['createdByRef'] == null ? null : pulumi.Output.create<String>(map['createdByRef'] as String),
      defanged: map['defanged'] == null ? null : pulumi.Output.create<bool>(map['defanged'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      extensions: map['extensions'] == null ? null : pulumi.Output.create<dynamic>(map['extensions']),
      externalId: map['externalId'] == null ? null : pulumi.Output.create<String>(map['externalId'] as String),
      externalLastUpdatedTimeUtc: map['externalLastUpdatedTimeUtc'] == null ? null : pulumi.Output.create<String>(map['externalLastUpdatedTimeUtc'] as String),
      externalReferences: map['externalReferences'] == null ? null : pulumi.Output.create<List<ThreatIntelligenceExternalReference>>(pulumi.Input.decodeList<ThreatIntelligenceExternalReference>(map['externalReferences'], (value) => ThreatIntelligenceExternalReference.fromMap((value as Map).cast<String, dynamic>()))),
      granularMarkings: map['granularMarkings'] == null ? null : pulumi.Output.create<List<ThreatIntelligenceGranularMarkingModel>>(pulumi.Input.decodeList<ThreatIntelligenceGranularMarkingModel>(map['granularMarkings'], (value) => ThreatIntelligenceGranularMarkingModel.fromMap((value as Map).cast<String, dynamic>()))),
      indicatorTypes: map['indicatorTypes'] == null ? null : pulumi.Output.create<List<String>>((map['indicatorTypes'] as List).cast<String>()),
      killChainPhases: map['killChainPhases'] == null ? null : pulumi.Output.create<List<ThreatIntelligenceKillChainPhase>>(pulumi.Input.decodeList<ThreatIntelligenceKillChainPhase>(map['killChainPhases'], (value) => ThreatIntelligenceKillChainPhase.fromMap((value as Map).cast<String, dynamic>()))),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<List<String>>((map['labels'] as List).cast<String>()),
      language: map['language'] == null ? null : pulumi.Output.create<String>(map['language'] as String),
      lastUpdatedTimeUtc: map['lastUpdatedTimeUtc'] == null ? null : pulumi.Output.create<String>(map['lastUpdatedTimeUtc'] as String),
      modified: map['modified'] == null ? null : pulumi.Output.create<String>(map['modified'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      objectMarkingRefs: map['objectMarkingRefs'] == null ? null : pulumi.Output.create<List<String>>((map['objectMarkingRefs'] as List).cast<String>()),
      parsedPattern: map['parsedPattern'] == null ? null : pulumi.Output.create<List<ThreatIntelligenceParsedPattern>>(pulumi.Input.decodeList<ThreatIntelligenceParsedPattern>(map['parsedPattern'], (value) => ThreatIntelligenceParsedPattern.fromMap((value as Map).cast<String, dynamic>()))),
      pattern: map['pattern'] == null ? null : pulumi.Output.create<String>(map['pattern'] as String),
      patternType: map['patternType'] == null ? null : pulumi.Output.create<String>(map['patternType'] as String),
      patternVersion: map['patternVersion'] == null ? null : pulumi.Output.create<String>(map['patternVersion'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      revoked: map['revoked'] == null ? null : pulumi.Output.create<bool>(map['revoked'] as bool),
      source: map['source'] == null ? null : pulumi.Output.create<String>(map['source'] as String),
      threatIntelligenceTags: map['threatIntelligenceTags'] == null ? null : pulumi.Output.create<List<String>>((map['threatIntelligenceTags'] as List).cast<String>()),
      threatTypes: map['threatTypes'] == null ? null : pulumi.Output.create<List<String>>((map['threatTypes'] as List).cast<String>()),
      validFrom: map['validFrom'] == null ? null : pulumi.Output.create<String>(map['validFrom'] as String),
      validUntil: map['validUntil'] == null ? null : pulumi.Output.create<String>(map['validUntil'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

