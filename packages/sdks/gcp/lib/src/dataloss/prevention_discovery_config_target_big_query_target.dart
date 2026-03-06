// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_discovery_config_target_big_query_target_cadence.dart';
import 'prevention_discovery_config_target_big_query_target_conditions.dart';
import 'prevention_discovery_config_target_big_query_target_filter.dart';

class PreventionDiscoveryConfigTargetBigQueryTarget {
  /// How often and when to update profiles. New tables that match both the fiter and conditions are scanned as quickly as possible depending on system capacity.
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetBigQueryTargetCadence>? cadence;
  /// In addition to matching the filter, these conditions must be true before a profile is generated
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetBigQueryTargetConditions>? conditions;
  /// Tables that match this filter will not have profiles created.
  final pulumi.Input<Map<String, dynamic>>? disabled;
  /// Required. The tables the discovery cadence applies to. The first target with a matching filter will be the one to apply to a table
  /// Structure is documented below.
  final pulumi.Input<PreventionDiscoveryConfigTargetBigQueryTargetFilter>? filter;

  /// Creates a new [PreventionDiscoveryConfigTargetBigQueryTarget].
  /// [cadence] How often and when to update profiles. New tables that match both the fiter and conditions are scanned as quickly as possible depending on system capacity.
  /// [conditions] In addition to matching the filter, these conditions must be true before a profile is generated
  /// [disabled] Tables that match this filter will not have profiles created.
  /// [filter] Required. The tables the discovery cadence applies to. The first target with a matching filter will be the one to apply to a table
  const PreventionDiscoveryConfigTargetBigQueryTarget({
    this.cadence,
    this.conditions,
    this.disabled,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cadence': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetBigQueryTargetCadence, Map<String, dynamic>>(cadence, (value) => value.toMap()),
      'conditions': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetBigQueryTargetConditions, Map<String, dynamic>>(conditions, (value) => value.toMap()),
      'disabled': ?disabled,
      'filter': ?pulumi.Input.mapOptionalInputValue<PreventionDiscoveryConfigTargetBigQueryTargetFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
    };
  }

  factory PreventionDiscoveryConfigTargetBigQueryTarget.fromMap(Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetBigQueryTarget(
      cadence: (() { final guardedValue = map['cadence']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetBigQueryTargetCadence.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetBigQueryTargetConditions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionDiscoveryConfigTargetBigQueryTargetFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

