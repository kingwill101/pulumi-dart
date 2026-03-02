// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_hub_usage_grouped_by_update_type_response.dart';

class BillingHubPackageUsageResponse {
  final pulumi.Input<String>? applicationName;
  final pulumi.Input<String>? applicationVersion;
  final pulumi.Input<String>? azureResourceUri;
  final pulumi.Input<double>? totalCharges;
  final pulumi.Input<double>? totalUsedBillableHours;
  final pulumi.Input<double>? totalUsedFreeHours;
  final pulumi.Input<List<BillingHubUsageGroupedByUpdateTypeResponse>>? usageEntriesGroupedByUpdateType;

  /// Creates a new [BillingHubPackageUsageResponse].
  /// [applicationName] Optional.
  /// [applicationVersion] Optional.
  /// [azureResourceUri] Optional.
  /// [totalCharges] Optional.
  /// [totalUsedBillableHours] Optional.
  /// [totalUsedFreeHours] Optional.
  /// [usageEntriesGroupedByUpdateType] Optional.
  BillingHubPackageUsageResponse({
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
      applicationName: map['applicationName'] == null ? null : (map['applicationName'] as String).input(),
      applicationVersion: map['applicationVersion'] == null ? null : (map['applicationVersion'] as String).input(),
      azureResourceUri: map['azureResourceUri'] == null ? null : (map['azureResourceUri'] as String).input(),
      totalCharges: map['totalCharges'] == null ? null : (map['totalCharges'] as double).input(),
      totalUsedBillableHours: map['totalUsedBillableHours'] == null ? null : (map['totalUsedBillableHours'] as double).input(),
      totalUsedFreeHours: map['totalUsedFreeHours'] == null ? null : (map['totalUsedFreeHours'] as double).input(),
      usageEntriesGroupedByUpdateType: map['usageEntriesGroupedByUpdateType'] == null ? null : (pulumi.Input.decodeList<BillingHubUsageGroupedByUpdateTypeResponse>(map['usageEntriesGroupedByUpdateType'], (value) => BillingHubUsageGroupedByUpdateTypeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

