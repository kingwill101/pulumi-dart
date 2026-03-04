// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Task author would use this type to configure a config module.
class EnterpriseCrmEventbusProtoTaskUiModuleConfigResponse {
  /// ID of the config module.
  final pulumi.Input<String> moduleId;

  /// Creates a new [EnterpriseCrmEventbusProtoTaskUiModuleConfigResponse].
  /// [moduleId] ID of the config module.
  EnterpriseCrmEventbusProtoTaskUiModuleConfigResponse({
    required this.moduleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'moduleId': moduleId};
  }

  factory EnterpriseCrmEventbusProtoTaskUiModuleConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnterpriseCrmEventbusProtoTaskUiModuleConfigResponse(
      moduleId: pulumi.Input.fromValue(map['moduleId'] as String),
    );
  }
}
