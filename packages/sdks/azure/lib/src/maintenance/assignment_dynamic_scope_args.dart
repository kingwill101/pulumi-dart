// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_dynamic_scope_filter.dart';

/// {@template pulumi_maintenance_assignment_dynamic_scope_assignment_dynamic_scope_args_doc}
/// The set of arguments for AssignmentDynamicScope.
/// {@endtemplate}
/// {@macro pulumi_maintenance_assignment_dynamic_scope_assignment_dynamic_scope_args_doc}
class AssignmentDynamicScopeArgs {
  /// A `filter` block as defined below.
  final pulumi.Input<AssignmentDynamicScopeFilter> filter;
  /// The ID of the Maintenance Configuration Resource. Changing this forces a new Dynamic Maintenance Assignment to be created.
  final pulumi.Input<String> maintenanceConfigurationId;
  /// The name which should be used for this Dynamic Maintenance Assignment. Changing this forces a new Dynamic Maintenance Assignment to be created.
  ///
  /// > **Note:** The `name` must be unique per subscription.
  final pulumi.Input<String>? name;

  /// Creates a new [AssignmentDynamicScopeArgs].
  /// [filter] A `filter` block as defined below.
  /// [maintenanceConfigurationId] The ID of the Maintenance Configuration Resource. Changing this forces a new Dynamic Maintenance Assignment to be created.
  /// [name] The name which should be used for this Dynamic Maintenance Assignment. Changing this forces a new Dynamic Maintenance Assignment to be created.
  AssignmentDynamicScopeArgs({
    required pulumi.Output<AssignmentDynamicScopeFilter> filter,
    required pulumi.Output<String> maintenanceConfigurationId,
    pulumi.Output<String>? name,
  }) :
      filter = pulumi.Input.asInput<AssignmentDynamicScopeFilter>(filter),
      maintenanceConfigurationId = pulumi.Input.asInput<String>(maintenanceConfigurationId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': pulumi.Input.mapInputValue<AssignmentDynamicScopeFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'maintenanceConfigurationId': maintenanceConfigurationId,
      'name': ?name,
    };
  }

  factory AssignmentDynamicScopeArgs.fromMap(Map<String, dynamic> map) {
    return AssignmentDynamicScopeArgs(
      filter: pulumi.Output.create<AssignmentDynamicScopeFilter>(AssignmentDynamicScopeFilter.fromMap((map['filter'] as Map).cast<String, dynamic>())),
      maintenanceConfigurationId: pulumi.Output.create<String>(map['maintenanceConfigurationId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

