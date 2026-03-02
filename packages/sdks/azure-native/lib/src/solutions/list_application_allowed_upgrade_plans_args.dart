// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_solutions_list_application_allowed_upgrade_plans_args_doc}
/// Arguments for listApplicationAllowedUpgradePlans.
/// {@endtemplate}
/// {@macro pulumi_solutions_list_application_allowed_upgrade_plans_args_doc}
class ListApplicationAllowedUpgradePlansArgs {
  /// The name of the managed application.
  final pulumi.Input<String> applicationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListApplicationAllowedUpgradePlansArgs].
  /// [applicationName] The name of the managed application.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ListApplicationAllowedUpgradePlansArgs({
    required this.applicationName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListApplicationAllowedUpgradePlansArgs.fromMap(Map<String, dynamic> map) {
    return ListApplicationAllowedUpgradePlansArgs(
      applicationName: (map['applicationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

