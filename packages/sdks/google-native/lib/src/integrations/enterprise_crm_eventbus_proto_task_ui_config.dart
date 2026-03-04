// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_task_ui_module_config.dart';

/// Task authors would use this type to configure the UI for a particular task by specifying what UI config modules should be included to compose the UI. Learn more about config module framework:
class EnterpriseCrmEventbusProtoTaskUiConfig {
  /// Configurations of included config modules.
  final pulumi.Input<List<EnterpriseCrmEventbusProtoTaskUiModuleConfig>>?
  taskUiModuleConfigs;

  /// Creates a new [EnterpriseCrmEventbusProtoTaskUiConfig].
  /// [taskUiModuleConfigs] Configurations of included config modules.
  EnterpriseCrmEventbusProtoTaskUiConfig({this.taskUiModuleConfigs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'taskUiModuleConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<EnterpriseCrmEventbusProtoTaskUiModuleConfig>,
            List<Map<String, dynamic>>
          >(
            taskUiModuleConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  EnterpriseCrmEventbusProtoTaskUiModuleConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory EnterpriseCrmEventbusProtoTaskUiConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoTaskUiConfig(
      taskUiModuleConfigs: (() {
        final guardedValue = map['taskUiModuleConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EnterpriseCrmEventbusProtoTaskUiModuleConfig>(
            guardedValue,
            (value) => EnterpriseCrmEventbusProtoTaskUiModuleConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
