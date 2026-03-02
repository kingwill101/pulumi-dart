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
  /// > **Note:** The `name` must be unique per subscription.
  final pulumi.Input<String>? name;

  /// Creates a new [AssignmentDynamicScopeState].
  /// [filter] A `filter` block as defined below.
  /// [maintenanceConfigurationId] The ID of the Maintenance Configuration Resource. Changing this forces a new Dynamic Maintenance Assignment to be created.
  /// [name] The name which should be used for this Dynamic Maintenance Assignment. Changing this forces a new Dynamic Maintenance Assignment to be created.
  AssignmentDynamicScopeState({
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
      filter: map['filter'] == null ? null : (AssignmentDynamicScopeFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())).input(),
      maintenanceConfigurationId: map['maintenanceConfigurationId'] == null ? null : (map['maintenanceConfigurationId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

