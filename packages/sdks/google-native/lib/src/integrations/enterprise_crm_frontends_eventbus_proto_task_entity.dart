// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_task_metadata.dart';
import 'enterprise_crm_eventbus_proto_task_ui_config.dart';
import 'enterprise_crm_eventbus_stats.dart';
import 'enterprise_crm_frontends_eventbus_proto_param_specs_message.dart';
import 'enterprise_crm_frontends_eventbus_proto_task_entity_task_type.dart';

/// Contains a task's metadata and associated information. Next available id: 7
class EnterpriseCrmFrontendsEventbusProtoTaskEntity {
  /// True if the task has conflict with vpcsc
  final pulumi.Input<bool>? disabledForVpcSc;

  /// Metadata inclueds the task name, author and so on.
  final pulumi.Input<EnterpriseCrmEventbusProtoTaskMetadata>? metadata;

  /// Declarations for inputs/outputs for a TypedTask. This is also associated with the METADATA mask.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage>?
  paramSpecs;

  /// Deprecated - statistics from the Monarch query.
  final pulumi.Input<EnterpriseCrmEventbusStats>? stats;

  /// Defines the type of the task
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoTaskEntityTaskType>?
  taskType;

  /// UI configuration for this task Also associated with the METADATA mask.
  final pulumi.Input<EnterpriseCrmEventbusProtoTaskUiConfig>? uiConfig;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoTaskEntity].
  /// [disabledForVpcSc] True if the task has conflict with vpcsc
  /// [metadata] Metadata inclueds the task name, author and so on.
  /// [paramSpecs] Declarations for inputs/outputs for a TypedTask. This is also associated with the METADATA mask.
  /// [stats] Deprecated - statistics from the Monarch query.
  /// [taskType] Defines the type of the task
  /// [uiConfig] UI configuration for this task Also associated with the METADATA mask.
  EnterpriseCrmFrontendsEventbusProtoTaskEntity({
    this.disabledForVpcSc,
    this.metadata,
    this.paramSpecs,
    this.stats,
    this.taskType,
    this.uiConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledForVpcSc': ?disabledForVpcSc,
      'metadata':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoTaskMetadata,
            Map<String, dynamic>
          >(metadata, (value) => value.toMap()),
      'paramSpecs':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage,
            Map<String, dynamic>
          >(paramSpecs, (value) => value.toMap()),
      'stats':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusStats,
            Map<String, dynamic>
          >(stats, (value) => value.toMap()),
      'taskType':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmFrontendsEventbusProtoTaskEntityTaskType,
            String
          >(taskType, (value) => value.wireValue),
      'uiConfig':
          ?pulumi.Input.mapOptionalInputValue<
            EnterpriseCrmEventbusProtoTaskUiConfig,
            Map<String, dynamic>
          >(uiConfig, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoTaskEntity.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmFrontendsEventbusProtoTaskEntity(
      disabledForVpcSc: (() {
        final guardedValue = map['disabledForVpcSc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoTaskMetadata.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      paramSpecs: (() {
        final guardedValue = map['paramSpecs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmFrontendsEventbusProtoParamSpecsMessage.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      stats: (() {
        final guardedValue = map['stats'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusStats.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      taskType: (() {
        final guardedValue = map['taskType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmFrontendsEventbusProtoTaskEntityTaskType.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      uiConfig: (() {
        final guardedValue = map['uiConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          EnterpriseCrmEventbusProtoTaskUiConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
