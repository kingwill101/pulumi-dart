// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'report_summary_group_finding_preference_set_finding_compute_engine_finding.dart';
import 'report_summary_group_finding_preference_set_finding_machine_preference.dart';
import 'report_summary_group_finding_preference_set_finding_monthly_cost_compute.dart';
import 'report_summary_group_finding_preference_set_finding_monthly_cost_network_egress.dart';
import 'report_summary_group_finding_preference_set_finding_monthly_cost_os_license.dart';
import 'report_summary_group_finding_preference_set_finding_monthly_cost_other.dart';
import 'report_summary_group_finding_preference_set_finding_monthly_cost_storage.dart';
import 'report_summary_group_finding_preference_set_finding_monthly_cost_total.dart';
import 'report_summary_group_finding_preference_set_finding_sole_tenant_finding.dart';
import 'report_summary_group_finding_preference_set_finding_vmware_engine_finding.dart';

class ReportSummaryGroupFindingPreferenceSetFinding {
  /// (Output)
  /// A set of findings that applies to assets destined for Compute Engine.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFinding>>? computeEngineFindings;
  /// Free-text description.
  final pulumi.Input<String>? description;
  /// User-friendly display name. Maximum length is 63 characters.
  final pulumi.Input<String>? displayName;
  /// (Output)
  /// The type of machines to consider when calculating virtual machine migration
  /// insights and recommendations.
  /// Not all machine types are available in all zones and regions.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingMachinePreference>>? machinePreferences;
  /// (Output)
  /// Represents an amount of money with its currency type.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostCompute>>? monthlyCostComputes;
  /// (Output)
  /// Represents an amount of money with its currency type.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostNetworkEgress>>? monthlyCostNetworkEgresses;
  /// (Output)
  /// Represents an amount of money with its currency type.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostOsLicense>>? monthlyCostOsLicenses;
  /// (Output)
  /// Represents an amount of money with its currency type.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostOther>>? monthlyCostOthers;
  /// (Output)
  /// Represents an amount of money with its currency type.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostStorage>>? monthlyCostStorages;
  /// (Output)
  /// Represents an amount of money with its currency type.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostTotal>>? monthlyCostTotals;
  /// (Output)
  /// A set of findings that applies to assets destined for Sole-Tenant nodes.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFinding>>? soleTenantFindings;
  /// (Output)
  /// A set of findings that applies to assets destined for VMWare Engine.
  /// Structure is documented below.
  final pulumi.Input<List<ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFinding>>? vmwareEngineFindings;

  /// Creates a new [ReportSummaryGroupFindingPreferenceSetFinding].
  /// [computeEngineFindings] (Output)
  /// [description] Free-text description.
  /// [displayName] User-friendly display name. Maximum length is 63 characters.
  /// [machinePreferences] (Output)
  /// [monthlyCostComputes] (Output)
  /// [monthlyCostNetworkEgresses] (Output)
  /// [monthlyCostOsLicenses] (Output)
  /// [monthlyCostOthers] (Output)
  /// [monthlyCostStorages] (Output)
  /// [monthlyCostTotals] (Output)
  /// [soleTenantFindings] (Output)
  /// [vmwareEngineFindings] (Output)
  const ReportSummaryGroupFindingPreferenceSetFinding({
    this.computeEngineFindings,
    this.description,
    this.displayName,
    this.machinePreferences,
    this.monthlyCostComputes,
    this.monthlyCostNetworkEgresses,
    this.monthlyCostOsLicenses,
    this.monthlyCostOthers,
    this.monthlyCostStorages,
    this.monthlyCostTotals,
    this.soleTenantFindings,
    this.vmwareEngineFindings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeEngineFindings': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFinding>, List<Map<String, dynamic>>>(computeEngineFindings, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFinding, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'displayName': ?displayName,
      'machinePreferences': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingMachinePreference>, List<Map<String, dynamic>>>(machinePreferences, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingMachinePreference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monthlyCostComputes': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostCompute>, List<Map<String, dynamic>>>(monthlyCostComputes, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostCompute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monthlyCostNetworkEgresses': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostNetworkEgress>, List<Map<String, dynamic>>>(monthlyCostNetworkEgresses, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostNetworkEgress, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monthlyCostOsLicenses': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostOsLicense>, List<Map<String, dynamic>>>(monthlyCostOsLicenses, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostOsLicense, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monthlyCostOthers': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostOther>, List<Map<String, dynamic>>>(monthlyCostOthers, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostOther, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monthlyCostStorages': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostStorage>, List<Map<String, dynamic>>>(monthlyCostStorages, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostStorage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'monthlyCostTotals': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostTotal>, List<Map<String, dynamic>>>(monthlyCostTotals, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostTotal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'soleTenantFindings': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFinding>, List<Map<String, dynamic>>>(soleTenantFindings, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFinding, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmwareEngineFindings': ?pulumi.Input.mapOptionalInputValue<List<ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFinding>, List<Map<String, dynamic>>>(vmwareEngineFindings, (value) => pulumi.Input.encodeList<ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFinding, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReportSummaryGroupFindingPreferenceSetFinding.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupFindingPreferenceSetFinding(
      computeEngineFindings: (() { final guardedValue = map['computeEngineFindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFinding>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingComputeEngineFinding.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machinePreferences: (() { final guardedValue = map['machinePreferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingMachinePreference>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingMachinePreference.fromMap((value as Map).cast<String, dynamic>()))); })(),
      monthlyCostComputes: (() { final guardedValue = map['monthlyCostComputes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostCompute>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostCompute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      monthlyCostNetworkEgresses: (() { final guardedValue = map['monthlyCostNetworkEgresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostNetworkEgress>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostNetworkEgress.fromMap((value as Map).cast<String, dynamic>()))); })(),
      monthlyCostOsLicenses: (() { final guardedValue = map['monthlyCostOsLicenses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostOsLicense>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostOsLicense.fromMap((value as Map).cast<String, dynamic>()))); })(),
      monthlyCostOthers: (() { final guardedValue = map['monthlyCostOthers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostOther>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostOther.fromMap((value as Map).cast<String, dynamic>()))); })(),
      monthlyCostStorages: (() { final guardedValue = map['monthlyCostStorages']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostStorage>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostStorage.fromMap((value as Map).cast<String, dynamic>()))); })(),
      monthlyCostTotals: (() { final guardedValue = map['monthlyCostTotals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostTotal>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingMonthlyCostTotal.fromMap((value as Map).cast<String, dynamic>()))); })(),
      soleTenantFindings: (() { final guardedValue = map['soleTenantFindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFinding>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingSoleTenantFinding.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vmwareEngineFindings: (() { final guardedValue = map['vmwareEngineFindings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFinding>(guardedValue, (value) => ReportSummaryGroupFindingPreferenceSetFindingVmwareEngineFinding.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
