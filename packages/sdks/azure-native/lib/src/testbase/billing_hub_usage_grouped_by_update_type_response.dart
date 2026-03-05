// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_hub_usage_group_response.dart';

class BillingHubUsageGroupedByUpdateTypeResponse {
  final pulumi.Input<double>? totalCharges;
  final pulumi.Input<double>? totalUsedBillableHours;
  final pulumi.Input<double>? totalUsedFreeHours;
  final pulumi.Input<String>? updateType;
  final pulumi.Input<List<BillingHubUsageGroupResponse>>? usageGroups;

  /// Creates a new [BillingHubUsageGroupedByUpdateTypeResponse].
  /// [totalCharges] Optional.
  /// [totalUsedBillableHours] Optional.
  /// [totalUsedFreeHours] Optional.
  /// [updateType] Optional.
  /// [usageGroups] Optional.
  BillingHubUsageGroupedByUpdateTypeResponse({
    this.totalCharges,
    this.totalUsedBillableHours,
    this.totalUsedFreeHours,
    this.updateType,
    this.usageGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'totalCharges': ?totalCharges,
      'totalUsedBillableHours': ?totalUsedBillableHours,
      'totalUsedFreeHours': ?totalUsedFreeHours,
      'updateType': ?updateType,
      'usageGroups': ?pulumi.Input.mapOptionalInputValue<List<BillingHubUsageGroupResponse>, List<Map<String, dynamic>>>(usageGroups, (value) => pulumi.Input.encodeList<BillingHubUsageGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BillingHubUsageGroupedByUpdateTypeResponse.fromMap(Map<String, dynamic> map) {
    return BillingHubUsageGroupedByUpdateTypeResponse(
      totalCharges: (() { final guardedValue = map['totalCharges']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      totalUsedBillableHours: (() { final guardedValue = map['totalUsedBillableHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      totalUsedFreeHours: (() { final guardedValue = map['totalUsedFreeHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      updateType: (() { final guardedValue = map['updateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usageGroups: (() { final guardedValue = map['usageGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BillingHubUsageGroupResponse>(guardedValue, (value) => BillingHubUsageGroupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

