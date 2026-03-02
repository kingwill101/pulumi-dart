// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'troubleshooting_additional_properties_response.dart';

/// Status of last troubleshooting operation on this SQL VM
class TroubleshootingStatusResponse {
  /// End time in UTC timezone.
  final pulumi.Input<String> endTimeUtc;
  /// Last troubleshooting trigger time in UTC timezone
  final pulumi.Input<String> lastTriggerTimeUtc;
  /// Troubleshooting properties
  final pulumi.Input<TroubleshootingAdditionalPropertiesResponse> properties;
  /// Root cause of the issue
  final pulumi.Input<String> rootCause;
  /// Start time in UTC timezone.
  final pulumi.Input<String> startTimeUtc;
  /// SQL VM troubleshooting scenario.
  final pulumi.Input<String> troubleshootingScenario;

  /// Creates a new [TroubleshootingStatusResponse].
  /// [endTimeUtc] End time in UTC timezone.
  /// [lastTriggerTimeUtc] Last troubleshooting trigger time in UTC timezone
  /// [properties] Troubleshooting properties
  /// [rootCause] Root cause of the issue
  /// [startTimeUtc] Start time in UTC timezone.
  /// [troubleshootingScenario] SQL VM troubleshooting scenario.
  TroubleshootingStatusResponse({
    required this.endTimeUtc,
    required this.lastTriggerTimeUtc,
    required this.properties,
    required this.rootCause,
    required this.startTimeUtc,
    required this.troubleshootingScenario,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTimeUtc': endTimeUtc,
      'lastTriggerTimeUtc': lastTriggerTimeUtc,
      'properties': pulumi.Input.mapInputValue<TroubleshootingAdditionalPropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'rootCause': rootCause,
      'startTimeUtc': startTimeUtc,
      'troubleshootingScenario': troubleshootingScenario,
    };
  }

  factory TroubleshootingStatusResponse.fromMap(Map<String, dynamic> map) {
    return TroubleshootingStatusResponse(
      endTimeUtc: (map['endTimeUtc'] as String).input(),
      lastTriggerTimeUtc: (map['lastTriggerTimeUtc'] as String).input(),
      properties: (TroubleshootingAdditionalPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      rootCause: (map['rootCause'] as String).input(),
      startTimeUtc: (map['startTimeUtc'] as String).input(),
      troubleshootingScenario: (map['troubleshootingScenario'] as String).input(),
    );
  }
}

