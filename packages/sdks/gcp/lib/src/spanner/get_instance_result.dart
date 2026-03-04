// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_autoscaling_config.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  final List<GetInstanceAutoscalingConfig> autoscalingConfigs;
  final String? config;
  final String defaultBackupScheduleType;
  final String? displayName;
  final String edition;
  final Map<String, String> effectiveLabels;
  final bool forceDestroy;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instanceType;
  final Map<String, String> labels;
  final String name;
  final int numNodes;
  final int processingUnits;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String state;

  /// Creates a new [GetInstanceResult].
  /// [autoscalingConfigs] Required.
  /// [config] Optional.
  /// [defaultBackupScheduleType] Required.
  /// [displayName] Optional.
  /// [edition] Required.
  /// [effectiveLabels] Required.
  /// [forceDestroy] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceType] Required.
  /// [labels] Required.
  /// [name] Required.
  /// [numNodes] Required.
  /// [processingUnits] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [state] Required.
  GetInstanceResult({
    required this.autoscalingConfigs,
    this.config,
    required this.defaultBackupScheduleType,
    this.displayName,
    required this.edition,
    required this.effectiveLabels,
    required this.forceDestroy,
    required this.id,
    required this.instanceType,
    required this.labels,
    required this.name,
    required this.numNodes,
    required this.processingUnits,
    this.project,
    required this.pulumiLabels,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingConfigs':
          pulumi.Input.encodeList<
            GetInstanceAutoscalingConfig,
            Map<String, dynamic>
          >(autoscalingConfigs, (value) => value.toMap()),
      'config': ?config,
      'defaultBackupScheduleType': defaultBackupScheduleType,
      'displayName': ?displayName,
      'edition': edition,
      'effectiveLabels': effectiveLabels,
      'forceDestroy': forceDestroy,
      'id': id,
      'instanceType': instanceType,
      'labels': labels,
      'name': name,
      'numNodes': numNodes,
      'processingUnits': processingUnits,
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'state': state,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      autoscalingConfigs: pulumi.Input.decodeList<GetInstanceAutoscalingConfig>(
        map['autoscalingConfigs']!,
        (value) => GetInstanceAutoscalingConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      config: (() {
        final guardedValue = map['config'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      defaultBackupScheduleType: map['defaultBackupScheduleType'] as String,
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      edition: map['edition'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      forceDestroy: map['forceDestroy'] as bool,
      id: map['id'] as String,
      instanceType: map['instanceType'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      numNodes: map['numNodes'] as int,
      processingUnits: map['processingUnits'] as int,
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      state: map['state'] as String,
    );
  }
}
