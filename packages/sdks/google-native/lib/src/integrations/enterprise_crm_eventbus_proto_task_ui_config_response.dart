// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_task_ui_module_config_response.dart';

/// Task authors would use this type to configure the UI for a particular task by specifying what UI config modules should be included to compose the UI. Learn more about config module framework:
class EnterpriseCrmEventbusProtoTaskUiConfigResponse {
  /// Configurations of included config modules.
  final pulumi.Input<List<EnterpriseCrmEventbusProtoTaskUiModuleConfigResponse>> taskUiModuleConfigs;

  /// Creates a new [EnterpriseCrmEventbusProtoTaskUiConfigResponse].
  /// [taskUiModuleConfigs] Configurations of included config modules.
  EnterpriseCrmEventbusProtoTaskUiConfigResponse({
    required this.taskUiModuleConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'taskUiModuleConfigs': pulumi.Input.mapInputValue<List<EnterpriseCrmEventbusProtoTaskUiModuleConfigResponse>, List<Map<String, dynamic>>>(taskUiModuleConfigs, (value) => pulumi.Input.encodeList<EnterpriseCrmEventbusProtoTaskUiModuleConfigResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnterpriseCrmEventbusProtoTaskUiConfigResponse.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTaskUiConfigResponse(
      taskUiModuleConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<EnterpriseCrmEventbusProtoTaskUiModuleConfigResponse>(map['taskUiModuleConfigs']!, (value) => EnterpriseCrmEventbusProtoTaskUiModuleConfigResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

