// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource move policy.
class ResourceTypeRegistrationPropertiesResourceMovePolicyResponse {
  /// Whether cross resource group move is enabled.
  final pulumi.Input<bool>? crossResourceGroupMoveEnabled;
  /// Whether cross subscription move is enabled.
  final pulumi.Input<bool>? crossSubscriptionMoveEnabled;
  /// Whether validation is required.
  final pulumi.Input<bool>? validationRequired;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceMovePolicyResponse].
  /// [crossResourceGroupMoveEnabled] Whether cross resource group move is enabled.
  /// [crossSubscriptionMoveEnabled] Whether cross subscription move is enabled.
  /// [validationRequired] Whether validation is required.
  ResourceTypeRegistrationPropertiesResourceMovePolicyResponse({
    this.crossResourceGroupMoveEnabled,
    this.crossSubscriptionMoveEnabled,
    this.validationRequired,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossResourceGroupMoveEnabled': ?crossResourceGroupMoveEnabled,
      'crossSubscriptionMoveEnabled': ?crossSubscriptionMoveEnabled,
      'validationRequired': ?validationRequired,
    };
  }

  factory ResourceTypeRegistrationPropertiesResourceMovePolicyResponse.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceMovePolicyResponse(
      crossResourceGroupMoveEnabled: map['crossResourceGroupMoveEnabled'] == null ? null : (map['crossResourceGroupMoveEnabled'] as bool).input(),
      crossSubscriptionMoveEnabled: map['crossSubscriptionMoveEnabled'] == null ? null : (map['crossSubscriptionMoveEnabled'] as bool).input(),
      validationRequired: map['validationRequired'] == null ? null : (map['validationRequired'] as bool).input(),
    );
  }
}

