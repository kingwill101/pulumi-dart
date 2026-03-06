// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_crm_eventbus_proto_task_ui_module_config_module_id.dart';

/// Task author would use this type to configure a config module.
class EnterpriseCrmEventbusProtoTaskUiModuleConfig {
  /// ID of the config module.
  final pulumi.Input<EnterpriseCrmEventbusProtoTaskUiModuleConfigModuleId>? moduleId;

  /// Creates a new [EnterpriseCrmEventbusProtoTaskUiModuleConfig].
  /// [moduleId] ID of the config module.
  const EnterpriseCrmEventbusProtoTaskUiModuleConfig({
    this.moduleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moduleId': ?pulumi.Input.mapOptionalInputValue<EnterpriseCrmEventbusProtoTaskUiModuleConfigModuleId, String>(moduleId, (value) => value.wireValue),
    };
  }

  factory EnterpriseCrmEventbusProtoTaskUiModuleConfig.fromMap(Map<String, dynamic> map) {
    return EnterpriseCrmEventbusProtoTaskUiModuleConfig(
      moduleId: (() { final guardedValue = map['moduleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnterpriseCrmEventbusProtoTaskUiModuleConfigModuleId.fromValue(guardedValue as String)); })(),
    );
  }
}

