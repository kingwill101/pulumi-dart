// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource move policy.
class ResourceTypeRegistrationPropertiesResourceMovePolicy {
  /// Whether cross resource group move is enabled.
  final pulumi.Input<bool>? crossResourceGroupMoveEnabled;
  /// Whether cross subscription move is enabled.
  final pulumi.Input<bool>? crossSubscriptionMoveEnabled;
  /// Whether validation is required.
  final pulumi.Input<bool>? validationRequired;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceMovePolicy].
  /// [crossResourceGroupMoveEnabled] Whether cross resource group move is enabled.
  /// [crossSubscriptionMoveEnabled] Whether cross subscription move is enabled.
  /// [validationRequired] Whether validation is required.
  const ResourceTypeRegistrationPropertiesResourceMovePolicy({
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

  factory ResourceTypeRegistrationPropertiesResourceMovePolicy.fromMap(Map<String, dynamic> map) {
    return ResourceTypeRegistrationPropertiesResourceMovePolicy(
      crossResourceGroupMoveEnabled: (() { final guardedValue = map['crossResourceGroupMoveEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      crossSubscriptionMoveEnabled: (() { final guardedValue = map['crossSubscriptionMoveEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      validationRequired: (() { final guardedValue = map['validationRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

