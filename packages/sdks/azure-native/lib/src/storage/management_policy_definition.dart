// ignore_for_file: unused_element, unnecessary_cast

import 'management_policy_action.dart';
import 'management_policy_filter.dart';

/// An object that defines the Lifecycle rule. Each definition is made up with a filters set and an actions set.
class ManagementPolicyDefinition {
  /// An object that defines the action set.
  final ManagementPolicyAction actions;
  /// An object that defines the filter set.
  final ManagementPolicyFilter? filters;

  /// Creates a new [ManagementPolicyDefinition].
  /// [actions] An object that defines the action set.
  /// [filters] An object that defines the filter set.
  ManagementPolicyDefinition({
    required this.actions,
    this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions.toMap(),
      'filters': ?filters == null ? null : filters!.toMap(),
    };
  }

  factory ManagementPolicyDefinition.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyDefinition(
      actions: ManagementPolicyAction.fromMap((map['actions'] as Map).cast<String, dynamic>()),
      filters: map['filters'] == null ? null : ManagementPolicyFilter.fromMap((map['filters'] as Map).cast<String, dynamic>()),
    );
  }
}

