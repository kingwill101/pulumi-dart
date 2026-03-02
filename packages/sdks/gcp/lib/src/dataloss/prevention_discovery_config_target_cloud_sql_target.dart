// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_cloud_sql_target_conditions.dart';
import 'prevention_discovery_config_target_cloud_sql_target_filter.dart';
import 'prevention_discovery_config_target_cloud_sql_target_generation_cadence.dart';

class PreventionDiscoveryConfigTargetCloudSqlTarget {
  /// In addition to matching the filter, these conditions must be true before a profile is generated.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudSqlTargetConditions>? conditions;
  /// Disable profiling for database resources that match this filter.
  final pulumi.Input<Map<String, dynamic>>? disabled;
  /// Required. The tables the discovery cadence applies to. The first target with a matching filter will be the one to apply to a table.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudSqlTargetFilter> filter;
  /// How often and when to update profiles. New tables that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadence>? generationCadence;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudSqlTarget].
  /// [conditions] In addition to matching the filter, these conditions must be true before a profile is generated.
  /// [disabled] Disable profiling for database resources that match this filter.
  /// [filter] Required. The tables the discovery cadence applies to. The first target with a matching filter will be the one to apply to a table.
  /// [generationCadence] How often and when to update profiles. New tables that match both the filter and conditions are scanned as quickly as possible depending on system capacity.
  PreventionDiscoveryConfigTargetCloudSqlTarget({
    this.conditions,
    this.disabled,
    required this.filter,
    this.generationCadence,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetCloudSqlTargetConditions, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'disabled': ?disabled,
      'filter': pulumi.Input.mapInputValue<PreventionDiscoveryConfigTargetCloudSqlTargetFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'generationCadence': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadence, Map<String, dynamic>>(generationCadence, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetCloudSqlTarget.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudSqlTarget(
      conditions: map['conditions'] == null ? null : (PreventionDiscoveryConfigTargetCloudSqlTargetConditions.fromMap((map['conditions']! as Map).cast<String, dynamic>())).input(),
      disabled: map['disabled'] == null ? null : ((map['disabled']! as Map).cast<String, dynamic>()).input(),
      filter: (PreventionDiscoveryConfigTargetCloudSqlTargetFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())).input(),
      generationCadence: map['generationCadence'] == null ? null : (PreventionDiscoveryConfigTargetCloudSqlTargetGenerationCadence.fromMap((map['generationCadence']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

