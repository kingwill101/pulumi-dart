// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_maintenance_policies_filter.dart';
import 'get_maintenance_policies_maintenance_policy.dart';

/// Result data returned by getMaintenancePolicies.
class GetMaintenancePoliciesResult {
  final List<GetMaintenancePoliciesFilter>? filters;
  final String id;
  final List<GetMaintenancePoliciesMaintenancePolicy> maintenancePolicies;

  /// Creates a new [GetMaintenancePoliciesResult].
  /// [filters] Optional.
  /// [id] Required.
  /// [maintenancePolicies] Required.
  GetMaintenancePoliciesResult({
    this.filters,
    required this.id,
    required this.maintenancePolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetMaintenancePoliciesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'maintenancePolicies': pulumi.Input.encodeList<GetMaintenancePoliciesMaintenancePolicy, Map<String, dynamic>>(maintenancePolicies, (value) => value.toMap()),
    };
  }

  factory GetMaintenancePoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetMaintenancePoliciesResult(
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetMaintenancePoliciesFilter>(map['filters'], (value) => GetMaintenancePoliciesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      maintenancePolicies: pulumi.Input.decodeList<GetMaintenancePoliciesMaintenancePolicy>(map['maintenancePolicies'], (value) => GetMaintenancePoliciesMaintenancePolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

