// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationAdditionalUnattendContent {
  /// The XML formatted content that is added to the unattend.xml file for the specified path and component. Changing this forces a new resource to be created.
  final pulumi.Input<String> content;
  /// The name of the setting to which the content applies. Possible values are `AutoLogon` and `FirstLogonCommands`. Changing this forces a new resource to be created.
  final pulumi.Input<String> setting;

  /// Creates a new [OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationAdditionalUnattendContent].
  /// [content] The XML formatted content that is added to the unattend.xml file for the specified path and component. Changing this forces a new resource to be created.
  /// [setting] The name of the setting to which the content applies. Possible values are `AutoLogon` and `FirstLogonCommands`. Changing this forces a new resource to be created.
  const OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationAdditionalUnattendContent({
    required this.content,
    required this.setting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content,
      'setting': setting,
    };
  }

  factory OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationAdditionalUnattendContent.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetOsProfileWindowsConfigurationAdditionalUnattendContent(
      content: pulumi.Input.fromValue(map['content'] as String),
      setting: pulumi.Input.fromValue(map['setting'] as String),
    );
  }
}
