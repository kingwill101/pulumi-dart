// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_automation_args_doc}
/// Arguments for getAutomation.
/// {@endtemplate}
/// {@macro pulumi_security_get_automation_args_doc}
class GetAutomationArgs {
  /// The security automation name.
  final pulumi.Input<String> automationName;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAutomationArgs].
  /// [automationName] The security automation name.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetAutomationArgs({
    required this.automationName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationName': automationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAutomationArgs.fromMap(Map<String, dynamic> map) {
    return GetAutomationArgs(
      automationName: (map['automationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

