// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_dynamic_scope_filter.dart';

/// Input properties used for looking up and filtering AssignmentDynamicScope resources.
class AssignmentDynamicScopeState {
  /// A `filter` block as defined below.
  final pulumi.Input<AssignmentDynamicScopeFilter>? filter;
  /// The ID of the Maintenance Configuration Resource. Changing this forces a new Dynamic Maintenance Assignment to be created.
  final pulumi.Input<String>? maintenanceConfigurationId;
  /// The name which should be used for this Dynamic Maintenance Assignment. Changing this forces a new Dynamic Maintenance Assignment to be created.
  ///
  /// &gt; **Note:** The `name` must be unique per subscription.
  final pulumi.Input<String>? name;

  /// Creates a new [AssignmentDynamicScopeState].
  /// [filter] A `filter` block as defined below.
  /// [maintenanceConfigurationId] The ID of the Maintenance Configuration Resource. Changing this forces a new Dynamic Maintenance Assignment to be created.
  /// [name] The name which should be used for this Dynamic Maintenance Assignment. Changing this forces a new Dynamic Maintenance Assignment to be created.
  const AssignmentDynamicScopeState({
    this.filter,
    this.maintenanceConfigurationId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?pulumi.Input.mapOptionalInputValue<AssignmentDynamicScopeFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
      'name': ?name,
    };
  }

  factory AssignmentDynamicScopeState.fromMap(Map<String, dynamic> map) {
    return AssignmentDynamicScopeState(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssignmentDynamicScopeFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maintenanceConfigurationId: (() { final guardedValue = map['maintenanceConfigurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

