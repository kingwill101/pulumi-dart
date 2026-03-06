// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_task_metadata_response.dart';
import 'enterprise_crm_eventbus_proto_task_ui_config_response.dart';
import 'enterprise_crm_eventbus_stats_response.dart';
import 'enterprise_crm_frontends_eventbus_proto_param_specs_message_response.dart';

/// Contains a task's metadata and associated information. Next available id: 7
class EnterpriseCrmFrontendsEventbusProtoTaskEntityResponse {
  /// True if the task has conflict with vpcsc
  final pulumi.Input<bool> disabledForVpcSc;
  /// Metadata inclueds the task name, author and so on.
  final pulumi.Input<EnterpriseCrmEventbusProtoTaskMetadataResponse> metadata;
  /// Declarations for inputs/outputs for a TypedTask. This is also associated with the METADATA mask.
  final pulumi.Input<EnterpriseCrmFrontendsEventbusProtoParamSpecsMessageResponse> paramSpecs;
  /// Deprecated - statistics from the Monarch query.
  final pulumi.Input<EnterpriseCrmEventbusStatsResponse> stats;
  /// Defines the type of the task
  final pulumi.Input<String> taskType;
  /// UI configuration for this task Also associated with the METADATA mask.
  final pulumi.Input<EnterpriseCrmEventbusProtoTaskUiConfigResponse> uiConfig;

  /// Creates a new [EnterpriseCrmFrontendsEventbusProtoTaskEntityResponse].
  /// [disabledForVpcSc] True if the task has conflict with vpcsc
  /// [metadata] Metadata inclueds the task name, author and so on.
  /// [paramSpecs] Declarations for inputs/outputs for a TypedTask. This is also associated with the METADATA mask.
  /// [stats] Deprecated - statistics from the Monarch query.
  /// [taskType] Defines the type of the task
  /// [uiConfig] UI configuration for this task Also associated with the METADATA mask.
  const EnterpriseCrmFrontendsEventbusProtoTaskEntityResponse({
    required this.disabledForVpcSc,
    required this.metadata,
    required this.paramSpecs,
    required this.stats,
    required this.taskType,
    required this.uiConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabledForVpcSc': disabledForVpcSc,
      'metadata': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoTaskMetadataResponse, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'paramSpecs': pulumi.Input.mapInputValue<EnterpriseCrmFrontendsEventbusProtoParamSpecsMessageResponse, Map<String, dynamic>>(paramSpecs, (value) => value.toMap()),
      'stats': pulumi.Input.mapInputValue<EnterpriseCrmEventbusStatsResponse, Map<String, dynamic>>(stats, (value) => value.toMap()),
      'taskType': taskType,
      'uiConfig': pulumi.Input.mapInputValue<EnterpriseCrmEventbusProtoTaskUiConfigResponse, Map<String, dynamic>>(uiConfig, (value) => value.toMap()),
    };
  }

  factory EnterpriseCrmFrontendsEventbusProtoTaskEntityResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmFrontendsEventbusProtoTaskEntityResponse(
      disabledForVpcSc: pulumi.Input.fromValue(map['disabledForVpcSc'] as bool),
      metadata: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoTaskMetadataResponse.fromMap((map['metadata']! as Map).cast<String, dynamic>())),
      paramSpecs: pulumi.Input.fromValue(EnterpriseCrmFrontendsEventbusProtoParamSpecsMessageResponse.fromMap((map['paramSpecs']! as Map).cast<String, dynamic>())),
      stats: pulumi.Input.fromValue(EnterpriseCrmEventbusStatsResponse.fromMap((map['stats']! as Map).cast<String, dynamic>())),
      taskType: pulumi.Input.fromValue(map['taskType'] as String),
      uiConfig: pulumi.Input.fromValue(EnterpriseCrmEventbusProtoTaskUiConfigResponse.fromMap((map['uiConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

