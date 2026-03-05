// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_network_get_application_security_group_args_doc}
/// Arguments for getApplicationSecurityGroup.
/// {@endtemplate}
/// {@macro pulumi_network_get_application_security_group_args_doc}
class GetApplicationSecurityGroupArgs {
  /// The name of the application security group.
  final pulumi.Input<String> applicationSecurityGroupName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetApplicationSecurityGroupArgs].
  /// [applicationSecurityGroupName] The name of the application security group.
  /// [resourceGroupName] The name of the resource group.
  GetApplicationSecurityGroupArgs({
    required this.applicationSecurityGroupName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationSecurityGroupName': applicationSecurityGroupName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetApplicationSecurityGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetApplicationSecurityGroupArgs(
      applicationSecurityGroupName: pulumi.Input.fromValue(map['applicationSecurityGroupName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

