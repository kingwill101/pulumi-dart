// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_policy_action_response.dart';
import 'management_policy_filter_response.dart';

/// An object that defines the Lifecycle rule. Each definition is made up with a filters set and an actions set.
class ManagementPolicyDefinitionResponse {
  /// An object that defines the action set.
  final pulumi.Input<ManagementPolicyActionResponse> actions;
  /// An object that defines the filter set.
  final pulumi.Input<ManagementPolicyFilterResponse>? filters;

  /// Creates a new [ManagementPolicyDefinitionResponse].
  /// [actions] An object that defines the action set.
  /// [filters] An object that defines the filter set.
  ManagementPolicyDefinitionResponse({
    required this.actions,
    this.filters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<ManagementPolicyActionResponse, Map<String, dynamic>>(actions, (value) => value.toMap()),
      'filters': ?pulumi.Input.mapOptionalInputValue<ManagementPolicyFilterResponse, Map<String, dynamic>>(filters, (value) => value.toMap()),
    };
  }

  factory ManagementPolicyDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ManagementPolicyDefinitionResponse(
      actions: (ManagementPolicyActionResponse.fromMap((map['actions'] as Map).cast<String, dynamic>())).input(),
      filters: map['filters'] == null ? null : (ManagementPolicyFilterResponse.fromMap((map['filters'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

