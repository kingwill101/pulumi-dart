// ignore_for_file: unused_element, unnecessary_cast


/// The resource move policy.
class ResourceTypeRegistrationPropertiesResourceMovePolicy {
  /// Whether cross resource group move is enabled.
  final bool? crossResourceGroupMoveEnabled;
  /// Whether cross subscription move is enabled.
  final bool? crossSubscriptionMoveEnabled;
  /// Whether validation is required.
  final bool? validationRequired;

  /// Creates a new [ResourceTypeRegistrationPropertiesResourceMovePolicy].
  /// [crossResourceGroupMoveEnabled] Whether cross resource group move is enabled.
  /// [crossSubscriptionMoveEnabled] Whether cross subscription move is enabled.
  /// [validationRequired] Whether validation is required.
  ResourceTypeRegistrationPropertiesResourceMovePolicy({
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
      crossResourceGroupMoveEnabled: map['crossResourceGroupMoveEnabled'] == null ? null : map['crossResourceGroupMoveEnabled'] as bool,
      crossSubscriptionMoveEnabled: map['crossSubscriptionMoveEnabled'] == null ? null : map['crossSubscriptionMoveEnabled'] as bool,
      validationRequired: map['validationRequired'] == null ? null : map['validationRequired'] as bool,
    );
  }
}

