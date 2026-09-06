// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_hub_free_hour_increment_entry_response.dart';

/// Result data returned by getBillingHubServiceFreeHourBalance.
class GetBillingHubServiceFreeHourBalanceResult {
  final List<BillingHubFreeHourIncrementEntryResponse>? incrementEntries;
  final double? totalRemainingFreeHours;

  /// Creates a new [GetBillingHubServiceFreeHourBalanceResult].
  /// [incrementEntries] Optional.
  /// [totalRemainingFreeHours] Optional.
  const GetBillingHubServiceFreeHourBalanceResult({
    this.incrementEntries,
    this.totalRemainingFreeHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'incrementEntries': ?(() { final guardedValue = incrementEntries; if (guardedValue == null) return null; return pulumi.Input.encodeList<BillingHubFreeHourIncrementEntryResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'totalRemainingFreeHours': ?totalRemainingFreeHours,
    };
  }

  factory GetBillingHubServiceFreeHourBalanceResult.fromMap(Map<String, dynamic> map) {
    return GetBillingHubServiceFreeHourBalanceResult(
      incrementEntries: (() { final guardedValue = map['incrementEntries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<BillingHubFreeHourIncrementEntryResponse>(guardedValue, (value) => BillingHubFreeHourIncrementEntryResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      totalRemainingFreeHours: (() { final guardedValue = map['totalRemainingFreeHours']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
    );
  }
}
