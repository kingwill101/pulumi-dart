// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsVirtualMachineScaleSetAdditionalUnattendContent {
  /// The XML formatted content that is added to the unattend.xml file for the specified path and component. Changing this forces a new resource to be created.
  final pulumi.Input<String> content;

  /// The name of the setting to which the content applies. Possible values are `AutoLogon` and `FirstLogonCommands`. Changing this forces a new resource to be created.
  final pulumi.Input<String> setting;

  /// Creates a new [WindowsVirtualMachineScaleSetAdditionalUnattendContent].
  /// [content] The XML formatted content that is added to the unattend.xml file for the specified path and component. Changing this forces a new resource to be created.
  /// [setting] The name of the setting to which the content applies. Possible values are `AutoLogon` and `FirstLogonCommands`. Changing this forces a new resource to be created.
  WindowsVirtualMachineScaleSetAdditionalUnattendContent({
    required this.content,
    required this.setting,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'content': content, 'setting': setting};
  }

  factory WindowsVirtualMachineScaleSetAdditionalUnattendContent.fromMap(
    Map<String, dynamic> map,
  ) {
    return WindowsVirtualMachineScaleSetAdditionalUnattendContent(
      content: pulumi.Input.fromValue(map['content'] as String),
      setting: pulumi.Input.fromValue(map['setting'] as String),
    );
  }
}
