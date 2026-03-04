// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction {
  /// The command run when this `auto_heal` action is triggered.
  final pulumi.Input<String> executable;

  /// The parameters passed to the `executable`.
  final pulumi.Input<String> parameters;

  /// Creates a new [GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction].
  /// [executable] The command run when this `auto_heal` action is triggered.
  /// [parameters] The parameters passed to the `executable`.
  GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction({
    required this.executable,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executable': executable,
      'parameters': parameters,
    };
  }

  factory GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWindowsWebAppSiteConfigAutoHealSettingActionCustomAction(
      executable: pulumi.Input.fromValue(map['executable'] as String),
      parameters: pulumi.Input.fromValue(map['parameters'] as String),
    );
  }
}
