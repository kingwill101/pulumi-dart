// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkcloud_get_console_args_doc}
/// Arguments for getConsole.
/// {@endtemplate}
/// {@macro pulumi_networkcloud_get_console_args_doc}
class GetConsoleArgs {
  /// The name of the virtual machine console.
  final pulumi.Input<String> consoleName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the virtual machine.
  final pulumi.Input<String> virtualMachineName;

  /// Creates a new [GetConsoleArgs].
  /// [consoleName] The name of the virtual machine console.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [virtualMachineName] The name of the virtual machine.
  GetConsoleArgs({
    required this.consoleName,
    required this.resourceGroupName,
    required this.virtualMachineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consoleName': consoleName,
      'resourceGroupName': resourceGroupName,
      'virtualMachineName': virtualMachineName,
    };
  }

  factory GetConsoleArgs.fromMap(Map<String, dynamic> map) {
    return GetConsoleArgs(
      consoleName: (map['consoleName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      virtualMachineName: (map['virtualMachineName'] as String).input(),
    );
  }
}

