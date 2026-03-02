// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed application locking policy.
class ApplicationPackageLockingPolicyDefinition {
  /// The deny assignment excluded actions.
  final pulumi.Input<List<String>>? allowedActions;
  /// The deny assignment excluded data actions.
  final pulumi.Input<List<String>>? allowedDataActions;

  /// Creates a new [ApplicationPackageLockingPolicyDefinition].
  /// [allowedActions] The deny assignment excluded actions.
  /// [allowedDataActions] The deny assignment excluded data actions.
  ApplicationPackageLockingPolicyDefinition({
    this.allowedActions,
    this.allowedDataActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedActions': ?allowedActions,
      'allowedDataActions': ?allowedDataActions,
    };
  }

  factory ApplicationPackageLockingPolicyDefinition.fromMap(Map<String, dynamic> map) {
    return ApplicationPackageLockingPolicyDefinition(
      allowedActions: map['allowedActions'] == null ? null : ((map['allowedActions'] as List).cast<String>()).input(),
      allowedDataActions: map['allowedDataActions'] == null ? null : ((map['allowedDataActions'] as List).cast<String>()).input(),
    );
  }
}

