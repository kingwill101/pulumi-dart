// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_autoscaling_config.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  final List<GetInstanceAutoscalingConfig>? autoscalingConfigs;
  final String? config;
  final String? defaultBackupScheduleType;
  final String? deletionPolicy;
  final String? displayName;
  final String? edition;
  final Map<String, String>? effectiveLabels;
  final bool? forceDestroy;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instanceType;
  final Map<String, String>? labels;
  final String? name;
  final int? numNodes;
  final int? processingUnits;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? state;

  /// Creates a new [GetInstanceResult].
  /// [autoscalingConfigs] Optional.
  /// [config] Optional.
  /// [defaultBackupScheduleType] Optional.
  /// [deletionPolicy] Optional.
  /// [displayName] Optional.
  /// [edition] Optional.
  /// [effectiveLabels] Optional.
  /// [forceDestroy] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instanceType] Optional.
  /// [labels] Optional.
  /// [name] Optional.
  /// [numNodes] Optional.
  /// [processingUnits] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [state] Optional.
  const GetInstanceResult({
    this.autoscalingConfigs,
    this.config,
    this.defaultBackupScheduleType,
    this.deletionPolicy,
    this.displayName,
    this.edition,
    this.effectiveLabels,
    this.forceDestroy,
    this.id,
    this.instanceType,
    this.labels,
    this.name,
    this.numNodes,
    this.processingUnits,
    this.project,
    this.pulumiLabels,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingConfigs': ?(() { final guardedValue = autoscalingConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceAutoscalingConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'config': ?config,
      'defaultBackupScheduleType': ?defaultBackupScheduleType,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'edition': ?edition,
      'effectiveLabels': ?effectiveLabels,
      'forceDestroy': ?forceDestroy,
      'id': ?id,
      'instanceType': ?instanceType,
      'labels': ?labels,
      'name': ?name,
      'numNodes': ?numNodes,
      'processingUnits': ?processingUnits,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      autoscalingConfigs: (() { final guardedValue = map['autoscalingConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceAutoscalingConfig>(guardedValue, (value) => GetInstanceAutoscalingConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultBackupScheduleType: (() { final guardedValue = map['defaultBackupScheduleType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      forceDestroy: (() { final guardedValue = map['forceDestroy']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numNodes: (() { final guardedValue = map['numNodes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      processingUnits: (() { final guardedValue = map['processingUnits']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
