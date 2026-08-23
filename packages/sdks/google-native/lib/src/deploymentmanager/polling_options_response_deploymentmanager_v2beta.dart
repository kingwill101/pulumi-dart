// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'diagnostic_response_deploymentmanager_v2beta.dart';

class PollingOptionsResponseDeploymentmanagerV2beta {
  /// An array of diagnostics to be collected by Deployment Manager, these diagnostics will be displayed to the user.
  final pulumi.Input<List<DiagnosticResponseDeploymentmanagerV2beta>> diagnostics;
  /// JsonPath expression that determines if the request failed.
  final pulumi.Input<String> failCondition;
  /// JsonPath expression that determines if the request is completed.
  final pulumi.Input<String> finishCondition;
  /// JsonPath expression that evaluates to string, it indicates where to poll.
  final pulumi.Input<String> pollingLink;
  /// JsonPath expression, after polling is completed, indicates where to fetch the resource.
  final pulumi.Input<String> targetLink;

  /// Creates a new [PollingOptionsResponseDeploymentmanagerV2beta].
  /// [diagnostics] An array of diagnostics to be collected by Deployment Manager, these diagnostics will be displayed to the user.
  /// [failCondition] JsonPath expression that determines if the request failed.
  /// [finishCondition] JsonPath expression that determines if the request is completed.
  /// [pollingLink] JsonPath expression that evaluates to string, it indicates where to poll.
  /// [targetLink] JsonPath expression, after polling is completed, indicates where to fetch the resource.
  const PollingOptionsResponseDeploymentmanagerV2beta({
    required this.diagnostics,
    required this.failCondition,
    required this.finishCondition,
    required this.pollingLink,
    required this.targetLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diagnostics': pulumi.Input.mapInputValue<List<DiagnosticResponseDeploymentmanagerV2beta>, List<Map<String, dynamic>>>(diagnostics, (value) => pulumi.Input.encodeList<DiagnosticResponseDeploymentmanagerV2beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'failCondition': failCondition,
      'finishCondition': finishCondition,
      'pollingLink': pollingLink,
      'targetLink': targetLink,
    };
  }

  factory PollingOptionsResponseDeploymentmanagerV2beta.fromMap(Map<String, dynamic> map) {
    return PollingOptionsResponseDeploymentmanagerV2beta(
      diagnostics: pulumi.Input.fromValue(pulumi.Input.decodeList<DiagnosticResponseDeploymentmanagerV2beta>(map['diagnostics']!, (value) => DiagnosticResponseDeploymentmanagerV2beta.fromMap((value as Map).cast<String, dynamic>()))),
      failCondition: pulumi.Input.fromValue(map['failCondition'] as String),
      finishCondition: pulumi.Input.fromValue(map['finishCondition'] as String),
      pollingLink: pulumi.Input.fromValue(map['pollingLink'] as String),
      targetLink: pulumi.Input.fromValue(map['targetLink'] as String),
    );
  }
}
