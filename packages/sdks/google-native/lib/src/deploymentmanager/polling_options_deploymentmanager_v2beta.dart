// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_deploymentmanager_v2beta.dart';

class PollingOptionsDeploymentmanagerV2beta {
  /// An array of diagnostics to be collected by Deployment Manager, these diagnostics will be displayed to the user.
  final pulumi.Input<List<DiagnosticDeploymentmanagerV2beta>>? diagnostics;
  /// JsonPath expression that determines if the request failed.
  final pulumi.Input<String>? failCondition;
  /// JsonPath expression that determines if the request is completed.
  final pulumi.Input<String>? finishCondition;
  /// JsonPath expression that evaluates to string, it indicates where to poll.
  final pulumi.Input<String>? pollingLink;
  /// JsonPath expression, after polling is completed, indicates where to fetch the resource.
  final pulumi.Input<String>? targetLink;

  /// Creates a new [PollingOptionsDeploymentmanagerV2beta].
  /// [diagnostics] An array of diagnostics to be collected by Deployment Manager, these diagnostics will be displayed to the user.
  /// [failCondition] JsonPath expression that determines if the request failed.
  /// [finishCondition] JsonPath expression that determines if the request is completed.
  /// [pollingLink] JsonPath expression that evaluates to string, it indicates where to poll.
  /// [targetLink] JsonPath expression, after polling is completed, indicates where to fetch the resource.
  PollingOptionsDeploymentmanagerV2beta({
    this.diagnostics,
    this.failCondition,
    this.finishCondition,
    this.pollingLink,
    this.targetLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnostics': ?pulumi.Input.mapOptionalInputValue<List<DiagnosticDeploymentmanagerV2beta>, List<Map<String, dynamic>>>(diagnostics, (value) => pulumi.Input.encodeList<DiagnosticDeploymentmanagerV2beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failCondition': ?failCondition,
      'finishCondition': ?finishCondition,
      'pollingLink': ?pollingLink,
      'targetLink': ?targetLink,
    };
  }

  factory PollingOptionsDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return PollingOptionsDeploymentmanagerV2beta(
      diagnostics: map['diagnostics'] == null ? null : (pulumi.Input.decodeList<DiagnosticDeploymentmanagerV2beta>(map['diagnostics'], (value) => DiagnosticDeploymentmanagerV2beta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      failCondition: map['failCondition'] == null ? null : (map['failCondition'] as String).input(),
      finishCondition: map['finishCondition'] == null ? null : (map['finishCondition'] as String).input(),
      pollingLink: map['pollingLink'] == null ? null : (map['pollingLink'] as String).input(),
      targetLink: map['targetLink'] == null ? null : (map['targetLink'] as String).input(),
    );
  }
}

