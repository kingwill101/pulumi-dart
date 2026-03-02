// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sole_tenant_node_type_response.dart';

/// Preferences concerning Sole Tenancy nodes and VMs.
class SoleTenancyPreferencesResponse {
  /// Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  final pulumi.Input<String> commitmentPlan;
  /// CPU overcommit ratio. Acceptable values are between 1.0 and 2.0 inclusive.
  final pulumi.Input<double> cpuOvercommitRatio;
  /// Sole Tenancy nodes maintenance policy.
  final pulumi.Input<String> hostMaintenancePolicy;
  /// A list of sole tenant node types. An empty list means that all possible node types will be considered.
  final pulumi.Input<List<SoleTenantNodeTypeResponse>> nodeTypes;

  /// Creates a new [SoleTenancyPreferencesResponse].
  /// [commitmentPlan] Commitment plan to consider when calculating costs for virtual machine insights and recommendations. If you are unsure which value to set, a 3 year commitment plan is often a good value to start with.
  /// [cpuOvercommitRatio] CPU overcommit ratio. Acceptable values are between 1.0 and 2.0 inclusive.
  /// [hostMaintenancePolicy] Sole Tenancy nodes maintenance policy.
  /// [nodeTypes] A list of sole tenant node types. An empty list means that all possible node types will be considered.
  SoleTenancyPreferencesResponse({
    required this.commitmentPlan,
    required this.cpuOvercommitRatio,
    required this.hostMaintenancePolicy,
    required this.nodeTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitmentPlan': commitmentPlan,
      'cpuOvercommitRatio': cpuOvercommitRatio,
      'hostMaintenancePolicy': hostMaintenancePolicy,
      'nodeTypes': pulumi.Input.mapInputValue<List<SoleTenantNodeTypeResponse>, List<Map<String, dynamic>>>(nodeTypes, (value) => pulumi.Input.encodeList<SoleTenantNodeTypeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SoleTenancyPreferencesResponse.fromMap(Map<String, dynamic> map) {
    return SoleTenancyPreferencesResponse(
      commitmentPlan: (map['commitmentPlan'] as String).input(),
      cpuOvercommitRatio: (map['cpuOvercommitRatio'] as double).input(),
      hostMaintenancePolicy: (map['hostMaintenancePolicy'] as String).input(),
      nodeTypes: (pulumi.Input.decodeList<SoleTenantNodeTypeResponse>(map['nodeTypes'], (value) => SoleTenantNodeTypeResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

