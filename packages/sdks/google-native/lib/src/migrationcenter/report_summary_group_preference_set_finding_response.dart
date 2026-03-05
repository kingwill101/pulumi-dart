// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'money_response.dart';
import 'report_summary_compute_engine_finding_response.dart';
import 'report_summary_sole_tenant_finding_response.dart';
import 'report_summary_vmware_engine_finding_response_2.dart';
import 'virtual_machine_preferences_response.dart';

/// Summary Findings for a specific Group/PreferenceSet combination.
class ReportSummaryGroupPreferenceSetFindingResponse {
  /// A set of findings that applies to Compute Engine machines in the input.
  final pulumi.Input<ReportSummaryComputeEngineFindingResponse> computeEngineFinding;
  /// Description for the Preference Set.
  final pulumi.Input<String> description;
  /// Display Name of the Preference Set
  final pulumi.Input<String> displayName;
  /// A set of preferences that applies to all machines in the context.
  final pulumi.Input<VirtualMachinePreferencesResponse> machinePreferences;
  /// Compute monthly cost for this preference set.
  final pulumi.Input<MoneyResponse> monthlyCostCompute;
  /// Network Egress monthly cost for this preference set.
  final pulumi.Input<MoneyResponse> monthlyCostNetworkEgress;
  /// Licensing monthly cost for this preference set.
  final pulumi.Input<MoneyResponse> monthlyCostOsLicense;
  /// Miscellaneous monthly cost for this preference set.
  final pulumi.Input<MoneyResponse> monthlyCostOther;
  /// Storage monthly cost for this preference set.
  final pulumi.Input<MoneyResponse> monthlyCostStorage;
  /// Total monthly cost for this preference set.
  final pulumi.Input<MoneyResponse> monthlyCostTotal;
  /// A set of findings that applies to Sole-Tenant machines in the input.
  final pulumi.Input<ReportSummarySoleTenantFindingResponse> soleTenantFinding;
  /// A set of findings that applies to VMWare machines in the input.
  final pulumi.Input<ReportSummaryVmwareEngineFindingResponse> vmwareEngineFinding;

  /// Creates a new [ReportSummaryGroupPreferenceSetFindingResponse].
  /// [computeEngineFinding] A set of findings that applies to Compute Engine machines in the input.
  /// [description] Description for the Preference Set.
  /// [displayName] Display Name of the Preference Set
  /// [machinePreferences] A set of preferences that applies to all machines in the context.
  /// [monthlyCostCompute] Compute monthly cost for this preference set.
  /// [monthlyCostNetworkEgress] Network Egress monthly cost for this preference set.
  /// [monthlyCostOsLicense] Licensing monthly cost for this preference set.
  /// [monthlyCostOther] Miscellaneous monthly cost for this preference set.
  /// [monthlyCostStorage] Storage monthly cost for this preference set.
  /// [monthlyCostTotal] Total monthly cost for this preference set.
  /// [soleTenantFinding] A set of findings that applies to Sole-Tenant machines in the input.
  /// [vmwareEngineFinding] A set of findings that applies to VMWare machines in the input.
  ReportSummaryGroupPreferenceSetFindingResponse({
    required this.computeEngineFinding,
    required this.description,
    required this.displayName,
    required this.machinePreferences,
    required this.monthlyCostCompute,
    required this.monthlyCostNetworkEgress,
    required this.monthlyCostOsLicense,
    required this.monthlyCostOther,
    required this.monthlyCostStorage,
    required this.monthlyCostTotal,
    required this.soleTenantFinding,
    required this.vmwareEngineFinding,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeEngineFinding': pulumi.Input.mapInputValue<ReportSummaryComputeEngineFindingResponse, Map<String, dynamic>>(computeEngineFinding, (value) => value.toMap()),
      'description': description,
      'displayName': displayName,
      'machinePreferences': pulumi.Input.mapInputValue<VirtualMachinePreferencesResponse, Map<String, dynamic>>(machinePreferences, (value) => value.toMap()),
      'monthlyCostCompute': pulumi.Input.mapInputValue<MoneyResponse, Map<String, dynamic>>(monthlyCostCompute, (value) => value.toMap()),
      'monthlyCostNetworkEgress': pulumi.Input.mapInputValue<MoneyResponse, Map<String, dynamic>>(monthlyCostNetworkEgress, (value) => value.toMap()),
      'monthlyCostOsLicense': pulumi.Input.mapInputValue<MoneyResponse, Map<String, dynamic>>(monthlyCostOsLicense, (value) => value.toMap()),
      'monthlyCostOther': pulumi.Input.mapInputValue<MoneyResponse, Map<String, dynamic>>(monthlyCostOther, (value) => value.toMap()),
      'monthlyCostStorage': pulumi.Input.mapInputValue<MoneyResponse, Map<String, dynamic>>(monthlyCostStorage, (value) => value.toMap()),
      'monthlyCostTotal': pulumi.Input.mapInputValue<MoneyResponse, Map<String, dynamic>>(monthlyCostTotal, (value) => value.toMap()),
      'soleTenantFinding': pulumi.Input.mapInputValue<ReportSummarySoleTenantFindingResponse, Map<String, dynamic>>(soleTenantFinding, (value) => value.toMap()),
      'vmwareEngineFinding': pulumi.Input.mapInputValue<ReportSummaryVmwareEngineFindingResponse, Map<String, dynamic>>(vmwareEngineFinding, (value) => value.toMap()),
    };
  }

  factory ReportSummaryGroupPreferenceSetFindingResponse.fromMap(Map<String, dynamic> map) {
    return ReportSummaryGroupPreferenceSetFindingResponse(
      computeEngineFinding: pulumi.Input.fromValue(ReportSummaryComputeEngineFindingResponse.fromMap((map['computeEngineFinding']! as Map).cast<String, dynamic>())),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      machinePreferences: pulumi.Input.fromValue(VirtualMachinePreferencesResponse.fromMap((map['machinePreferences']! as Map).cast<String, dynamic>())),
      monthlyCostCompute: pulumi.Input.fromValue(MoneyResponse.fromMap((map['monthlyCostCompute']! as Map).cast<String, dynamic>())),
      monthlyCostNetworkEgress: pulumi.Input.fromValue(MoneyResponse.fromMap((map['monthlyCostNetworkEgress']! as Map).cast<String, dynamic>())),
      monthlyCostOsLicense: pulumi.Input.fromValue(MoneyResponse.fromMap((map['monthlyCostOsLicense']! as Map).cast<String, dynamic>())),
      monthlyCostOther: pulumi.Input.fromValue(MoneyResponse.fromMap((map['monthlyCostOther']! as Map).cast<String, dynamic>())),
      monthlyCostStorage: pulumi.Input.fromValue(MoneyResponse.fromMap((map['monthlyCostStorage']! as Map).cast<String, dynamic>())),
      monthlyCostTotal: pulumi.Input.fromValue(MoneyResponse.fromMap((map['monthlyCostTotal']! as Map).cast<String, dynamic>())),
      soleTenantFinding: pulumi.Input.fromValue(ReportSummarySoleTenantFindingResponse.fromMap((map['soleTenantFinding']! as Map).cast<String, dynamic>())),
      vmwareEngineFinding: pulumi.Input.fromValue(ReportSummaryVmwareEngineFindingResponse.fromMap((map['vmwareEngineFinding']! as Map).cast<String, dynamic>())),
    );
  }
}

