// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiModelDevelopmentClusterClusterEvent {
  /// (Output)
  /// The detailed description of the cluster event.
  final pulumi.Input<String?>? eventMessage;
  /// (Output)
  /// The occurrence time of the cluster event.
  final pulumi.Input<String?>? eventTime;
  /// (Output)
  /// The type of the cluster event.
  /// Possible values:
  /// VM_PROLOG_ERROR
  /// VM_EPILOG_ERROR
  /// VM_CONTINUOUS_GPU_ERROR
  /// VM_SCAN_ERROR
  /// VM_SLURM_POWER_DOWN
  /// VM_SLURM_DRAIN
  /// VM_DELETION
  /// VM_REPORT_AND_REPLACEMENT
  /// VM_REBOOT
  final pulumi.Input<String?>? eventType;

  /// Creates a new [AiModelDevelopmentClusterClusterEvent].
  /// [eventMessage] (Output)
  /// [eventTime] (Output)
  /// [eventType] (Output)
  const AiModelDevelopmentClusterClusterEvent({
    this.eventMessage,
    this.eventTime,
    this.eventType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventMessage': ?eventMessage,
      'eventTime': ?eventTime,
      'eventType': ?eventType,
    };
  }

  factory AiModelDevelopmentClusterClusterEvent.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterClusterEvent(
      eventMessage: (() { final guardedValue = map['eventMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventTime: (() { final guardedValue = map['eventTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventType: (() { final guardedValue = map['eventType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
