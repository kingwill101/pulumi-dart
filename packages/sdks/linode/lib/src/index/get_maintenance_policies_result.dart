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
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetMaintenancePoliciesFilter,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'id': id,
      'maintenancePolicies':
          pulumi.Input.encodeList<
            GetMaintenancePoliciesMaintenancePolicy,
            Map<String, dynamic>
          >(maintenancePolicies, (value) => value.toMap()),
    };
  }

  factory GetMaintenancePoliciesResult.fromMap(Map<String, dynamic> map) {
    return GetMaintenancePoliciesResult(
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetMaintenancePoliciesFilter>(
          guardedValue,
          (value) => GetMaintenancePoliciesFilter.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      id: map['id'] as String,
      maintenancePolicies:
          pulumi.Input.decodeList<GetMaintenancePoliciesMaintenancePolicy>(
            map['maintenancePolicies']!,
            (value) => GetMaintenancePoliciesMaintenancePolicy.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
