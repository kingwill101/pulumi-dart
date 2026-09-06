// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_hub_usage_grouped_by_update_type_response.dart';

class BillingHubPackageUsageResponse {
  final pulumi.Input<String?>? applicationName;
  final pulumi.Input<String?>? applicationVersion;
  final pulumi.Input<String?>? azureResourceUri;
  final pulumi.Input<double?>? totalCharges;
  final pulumi.Input<double?>? totalUsedBillableHours;
  final pulumi.Input<double?>? totalUsedFreeHours;
  final pulumi.Input<List<BillingHubUsageGroupedByUpdateTypeResponse>?>? usageEntriesGroupedByUpdateType;

  /// Creates a new [BillingHubPackageUsageResponse].
  /// [applicationName] Optional.
  /// [applicationVersion] Optional.
  /// [azureResourceUri] Optional.
  /// [totalCharges] Optional.
  /// [totalUsedBillableHours] Optional.
  /// [totalUsedFreeHours] Optional.
  /// [usageEntriesGroupedByUpdateType] Optional.
  const BillingHubPackageUsageResponse({
    this.applicationName,
    this.applicationVersion,
    this.azureResourceUri,
    this.totalCharges,
    this.totalUsedBillableHours,
    this.totalUsedFreeHours,
    this.usageEntriesGroupedByUpdateType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': ?applicationName,
      'applicationVersion': ?applicationVersion,
      'azureResourceUri': ?azureResourceUri,
      'totalCharges': ?totalCharges,
      'totalUsedBillableHours': ?totalUsedBillableHours,
      'totalUsedFreeHours': ?totalUsedFreeHours,
      'usageEntriesGroupedByUpdateType': ?pulumi.Input.mapOptionalInputValue<List<BillingHubUsageGroupedByUpdateTypeResponse>, List<Map<String, dynamic>>>(usageEntriesGroupedByUpdateType, (value) => pulumi.Input.encodeList<BillingHubUsageGroupedByUpdateTypeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BillingHubPackageUsageResponse.fromMap(Map<String, dynamic> map) {
    return BillingHubPackageUsageResponse(
      applicationName: (() { final guardedValue = map['applicationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationVersion: (() { final guardedValue = map['applicationVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureResourceUri: (() { final guardedValue = map['azureResourceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      totalCharges: (() { final guardedValue = map['totalCharges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      totalUsedBillableHours: (() { final guardedValue = map['totalUsedBillableHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      totalUsedFreeHours: (() { final guardedValue = map['totalUsedFreeHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      usageEntriesGroupedByUpdateType: (() { final guardedValue = map['usageEntriesGroupedByUpdateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BillingHubUsageGroupedByUpdateTypeResponse>(guardedValue, (value) => BillingHubUsageGroupedByUpdateTypeResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
