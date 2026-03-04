// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_portalservices_copilot_setting_args_doc}
/// The set of arguments for CopilotSetting.
/// {@endtemplate}
/// {@macro pulumi_portalservices_copilot_setting_args_doc}
class CopilotSettingArgs {
  /// Boolean indicating if role-based access control is enabled for copilot in this tenant.
  final pulumi.Input<bool> accessControlEnabled;

  /// Creates a new [CopilotSettingArgs].
  /// [accessControlEnabled] Boolean indicating if role-based access control is enabled for copilot in this tenant.
  CopilotSettingArgs({required this.accessControlEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'accessControlEnabled': accessControlEnabled};
  }

  factory CopilotSettingArgs.fromMap(Map<String, dynamic> map) {
    return CopilotSettingArgs(
      accessControlEnabled: pulumi.Input.fromValue(
        map['accessControlEnabled'] as bool,
      ),
    );
  }
}
