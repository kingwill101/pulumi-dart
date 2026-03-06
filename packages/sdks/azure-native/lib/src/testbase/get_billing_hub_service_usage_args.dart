// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_get_billing_hub_service_usage_args_doc}
/// Arguments for getBillingHubServiceUsage.
/// {@endtemplate}
/// {@macro pulumi_testbase_get_billing_hub_service_usage_args_doc}
class GetBillingHubServiceUsageArgs {
  final pulumi.Input<String> endTimeStamp;
  final pulumi.Input<int>? pageIndex;
  final pulumi.Input<int>? pageSize;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  final pulumi.Input<String> startTimeStamp;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [GetBillingHubServiceUsageArgs].
  /// [endTimeStamp] Required.
  /// [pageIndex] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [startTimeStamp] Required.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  const GetBillingHubServiceUsageArgs({
    required this.endTimeStamp,
    this.pageIndex,
    this.pageSize,
    required this.resourceGroupName,
    required this.startTimeStamp,
    required this.testBaseAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTimeStamp': endTimeStamp,
      'pageIndex': ?pageIndex,
      'pageSize': ?pageSize,
      'resourceGroupName': resourceGroupName,
      'startTimeStamp': startTimeStamp,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory GetBillingHubServiceUsageArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingHubServiceUsageArgs(
      endTimeStamp: pulumi.Input.fromValue(map['endTimeStamp'] as String),
      pageIndex: (() { final guardedValue = map['pageIndex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      startTimeStamp: pulumi.Input.fromValue(map['startTimeStamp'] as String),
      testBaseAccountName: pulumi.Input.fromValue(map['testBaseAccountName'] as String),
    );
  }
}

