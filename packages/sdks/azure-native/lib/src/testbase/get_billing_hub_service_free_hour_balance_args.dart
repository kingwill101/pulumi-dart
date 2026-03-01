// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_get_billing_hub_service_free_hour_balance_args_doc}
/// Arguments for getBillingHubServiceFreeHourBalance.
/// {@endtemplate}
/// {@macro pulumi_testbase_get_billing_hub_service_free_hour_balance_args_doc}
class GetBillingHubServiceFreeHourBalanceArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [GetBillingHubServiceFreeHourBalanceArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  GetBillingHubServiceFreeHourBalanceArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> testBaseAccountName,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory GetBillingHubServiceFreeHourBalanceArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingHubServiceFreeHourBalanceArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      testBaseAccountName: pulumi.Output.create<String>(map['testBaseAccountName'] as String),
    );
  }
}

