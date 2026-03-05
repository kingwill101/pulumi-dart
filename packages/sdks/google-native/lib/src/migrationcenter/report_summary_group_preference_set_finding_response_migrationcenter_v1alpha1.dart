// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'money_response_migrationcenter_v1alpha1.dart';
import 'report_summary_machine_finding_response.dart';
import 'report_summary_sole_tenant_finding_response_migrationcenter_v1alpha1.dart';
import 'report_summary_vmware_engine_finding_response.dart';
import 'virtual_machine_preferences_response_migrationcenter_v1alpha1.dart';

/// Summary Findings for a specific Group/PreferenceSet combination.
class ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1 {
  /// Description for the Preference Set.
  final pulumi.Input<String> description;
  /// Display Name of the Preference Set
  final pulumi.Input<String> displayName;
  /// A set of findings that applies to all machines in the input.
  final pulumi.Input<ReportSummaryMachineFindingResponse> machineFinding;
  /// A set of preferences that applies to all machines in the context.
  final pulumi.Input<VirtualMachinePreferencesResponseMigrationcenterV1alpha1> machinePreferences;
  /// Compute monthly cost for this preference set.
  final pulumi.Input<MoneyResponseMigrationcenterV1alpha1> monthlyCostCompute;
  /// Network Egress monthly cost for this preference set.
  final pulumi.Input<MoneyResponseMigrationcenterV1alpha1> monthlyCostNetworkEgress;
  /// Licensing monthly cost for this preference set.
  final pulumi.Input<MoneyResponseMigrationcenterV1alpha1> monthlyCostOsLicense;
  /// Miscellaneous monthly cost for this preference set.
  final pulumi.Input<MoneyResponseMigrationcenterV1alpha1> monthlyCostOther;
  /// Storage monthly cost for this preference set.
  final pulumi.Input<MoneyResponseMigrationcenterV1alpha1> monthlyCostStorage;
  /// Total monthly cost for this preference set.
  final pulumi.Input<MoneyResponseMigrationcenterV1alpha1> monthlyCostTotal;
  /// Target region for this Preference Set
  final pulumi.Input<String> preferredRegion;
  /// Text describing the pricing track specified for this Preference Set
  final pulumi.Input<String> pricingTrack;
  /// A set of findings that applies to Stole-Tenant machines in the input.
  final pulumi.Input<ReportSummarySoleTenantFindingResponseMigrationcenterV1alpha1> soleTenantFinding;
  /// Text describing the business priority specified for this Preference Set
  final pulumi.Input<String> topPriority;
  /// A set of findings that applies to VMWare machines in the input.
  final pulumi.Input<ReportSummaryVMWareEngineFindingResponse> vmwareEngineFinding;

  /// Creates a new [ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1].
  /// [description] Description for the Preference Set.
  /// [displayName] Display Name of the Preference Set
  /// [machineFinding] A set of findings that applies to all machines in the input.
  /// [machinePreferences] A set of preferences that applies to all machines in the context.
  /// [monthlyCostCompute] Compute monthly cost for this preference set.
  /// [monthlyCostNetworkEgress] Network Egress monthly cost for this preference set.
  /// [monthlyCostOsLicense] Licensing monthly cost for this preference set.
  /// [monthlyCostOther] Miscellaneous monthly cost for this preference set.
  /// [monthlyCostStorage] Storage monthly cost for this preference set.
  /// [monthlyCostTotal] Total monthly cost for this preference set.
  /// [preferredRegion] Target region for this Preference Set
  /// [pricingTrack] Text describing the pricing track specified for this Preference Set
  /// [soleTenantFinding] A set of findings that applies to Stole-Tenant machines in the input.
  /// [topPriority] Text describing the business priority specified for this Preference Set
  /// [vmwareEngineFinding] A set of findings that applies to VMWare machines in the input.
  ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1({
    required this.description,
    required this.displayName,
    required this.machineFinding,
    required this.machinePreferences,
    required this.monthlyCostCompute,
    required this.monthlyCostNetworkEgress,
    required this.monthlyCostOsLicense,
    required this.monthlyCostOther,
    required this.monthlyCostStorage,
    required this.monthlyCostTotal,
    required this.preferredRegion,
    required this.pricingTrack,
    required this.soleTenantFinding,
    required this.topPriority,
    required this.vmwareEngineFinding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'machineFinding': pulumi.Input.mapInputValue<ReportSummaryMachineFindingResponse, Map<String, dynamic>>(machineFinding, (value) => value.toMap()),
      'machinePreferences': pulumi.Input.mapInputValue<VirtualMachinePreferencesResponseMigrationcenterV1alpha1, Map<String, dynamic>>(machinePreferences, (value) => value.toMap()),
      'monthlyCostCompute': pulumi.Input.mapInputValue<MoneyResponseMigrationcenterV1alpha1, Map<String, dynamic>>(monthlyCostCompute, (value) => value.toMap()),
      'monthlyCostNetworkEgress': pulumi.Input.mapInputValue<MoneyResponseMigrationcenterV1alpha1, Map<String, dynamic>>(monthlyCostNetworkEgress, (value) => value.toMap()),
      'monthlyCostOsLicense': pulumi.Input.mapInputValue<MoneyResponseMigrationcenterV1alpha1, Map<String, dynamic>>(monthlyCostOsLicense, (value) => value.toMap()),
      'monthlyCostOther': pulumi.Input.mapInputValue<MoneyResponseMigrationcenterV1alpha1, Map<String, dynamic>>(monthlyCostOther, (value) => value.toMap()),
      'monthlyCostStorage': pulumi.Input.mapInputValue<MoneyResponseMigrationcenterV1alpha1, Map<String, dynamic>>(monthlyCostStorage, (value) => value.toMap()),
      'monthlyCostTotal': pulumi.Input.mapInputValue<MoneyResponseMigrationcenterV1alpha1, Map<String, dynamic>>(monthlyCostTotal, (value) => value.toMap()),
      'preferredRegion': preferredRegion,
      'pricingTrack': pricingTrack,
      'soleTenantFinding': pulumi.Input.mapInputValue<ReportSummarySoleTenantFindingResponseMigrationcenterV1alpha1, Map<String, dynamic>>(soleTenantFinding, (value) => value.toMap()),
      'topPriority': topPriority,
      'vmwareEngineFinding': pulumi.Input.mapInputValue<ReportSummaryVMWareEngineFindingResponse, Map<String, dynamic>>(vmwareEngineFinding, (value) => value.toMap()),
    };
  }

  factory ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupPreferenceSetFindingResponseMigrationcenterV1alpha1(
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      machineFinding: pulumi.Input.fromValue(ReportSummaryMachineFindingResponse.fromMap((map['machineFinding']! as Map).cast<String, dynamic>())),
      machinePreferences: pulumi.Input.fromValue(VirtualMachinePreferencesResponseMigrationcenterV1alpha1.fromMap((map['machinePreferences']! as Map).cast<String, dynamic>())),
      monthlyCostCompute: pulumi.Input.fromValue(MoneyResponseMigrationcenterV1alpha1.fromMap((map['monthlyCostCompute']! as Map).cast<String, dynamic>())),
      monthlyCostNetworkEgress: pulumi.Input.fromValue(MoneyResponseMigrationcenterV1alpha1.fromMap((map['monthlyCostNetworkEgress']! as Map).cast<String, dynamic>())),
      monthlyCostOsLicense: pulumi.Input.fromValue(MoneyResponseMigrationcenterV1alpha1.fromMap((map['monthlyCostOsLicense']! as Map).cast<String, dynamic>())),
      monthlyCostOther: pulumi.Input.fromValue(MoneyResponseMigrationcenterV1alpha1.fromMap((map['monthlyCostOther']! as Map).cast<String, dynamic>())),
      monthlyCostStorage: pulumi.Input.fromValue(MoneyResponseMigrationcenterV1alpha1.fromMap((map['monthlyCostStorage']! as Map).cast<String, dynamic>())),
      monthlyCostTotal: pulumi.Input.fromValue(MoneyResponseMigrationcenterV1alpha1.fromMap((map['monthlyCostTotal']! as Map).cast<String, dynamic>())),
      preferredRegion: pulumi.Input.fromValue(map['preferredRegion'] as String),
      pricingTrack: pulumi.Input.fromValue(map['pricingTrack'] as String),
      soleTenantFinding: pulumi.Input.fromValue(ReportSummarySoleTenantFindingResponseMigrationcenterV1alpha1.fromMap((map['soleTenantFinding']! as Map).cast<String, dynamic>())),
      topPriority: pulumi.Input.fromValue(map['topPriority'] as String),
      vmwareEngineFinding: pulumi.Input.fromValue(ReportSummaryVMWareEngineFindingResponse.fromMap((map['vmwareEngineFinding']! as Map).cast<String, dynamic>())),
    );
  }
}

