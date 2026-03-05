// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_action.dart';
import 'management_policy_filter.dart';

/// An object that defines the Lifecycle rule. Each definition is made up with a filters set and an actions set.
class ManagementPolicyDefinition {
  /// An object that defines the action set.
  final pulumi.Input<ManagementPolicyAction> actions;
  /// An object that defines the filter set.
  final pulumi.Input<ManagementPolicyFilter>? filters;

  /// Creates a new [ManagementPolicyDefinition].
  /// [actions] An object that defines the action set.
  /// [filters] An object that defines the filter set.
  ManagementPolicyDefinition({
    required this.actions,
    this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<ManagementPolicyAction, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'filters': ?pulumi.Input.mapOptionalInputValue<ManagementPolicyFilter, Map<String, dynamic>>(filters, (value) => value.toMap()),
    };
  }

  factory ManagementPolicyDefinition.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyDefinition(
      actions: pulumi.Input.fromValue(ManagementPolicyAction.fromMap((map['actions']! as Map).cast<String, dynamic>())),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagementPolicyFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

