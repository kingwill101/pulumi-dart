// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScaleSetOsProfileWindowsConfigAdditionalUnattendConfig {
  /// Specifies the name of the component to configure with the added content. The only allowable value is `Microsoft-Windows-Shell-Setup`.
  final pulumi.Input<String> component;
  /// Specifies the base-64 encoded XML formatted content that is added to the unattend.xml file for the specified path and component.
  final pulumi.Input<String> content;
  /// Specifies the name of the pass that the content applies to. The only allowable value is `oobeSystem`.
  final pulumi.Input<String> pass;
  /// Specifies the name of the setting to which the content applies. Possible values are: `FirstLogonCommands` and `AutoLogon`.
  final pulumi.Input<String> settingName;

  /// Creates a new [ScaleSetOsProfileWindowsConfigAdditionalUnattendConfig].
  /// [component] Specifies the name of the component to configure with the added content. The only allowable value is `Microsoft-Windows-Shell-Setup`.
  /// [content] Specifies the base-64 encoded XML formatted content that is added to the unattend.xml file for the specified path and component.
  /// [pass] Specifies the name of the pass that the content applies to. The only allowable value is `oobeSystem`.
  /// [settingName] Specifies the name of the setting to which the content applies. Possible values are: `FirstLogonCommands` and `AutoLogon`.
  ScaleSetOsProfileWindowsConfigAdditionalUnattendConfig({
    required this.component,
    required this.content,
    required this.pass,
    required this.settingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'component': component,
      'content': content,
      'pass': pass,
      'settingName': settingName,
    };
  }

  factory ScaleSetOsProfileWindowsConfigAdditionalUnattendConfig.fromMap(Map<String, dynamic> map) {
    return ScaleSetOsProfileWindowsConfigAdditionalUnattendConfig(
      component: pulumi.Input.fromValue(map['component'] as String),
      content: pulumi.Input.fromValue(map['content'] as String),
      pass: pulumi.Input.fromValue(map['pass'] as String),
      settingName: pulumi.Input.fromValue(map['settingName'] as String),
    );
  }
}

