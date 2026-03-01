// ignore_for_file: unused_element, unnecessary_cast


/// Managed application locking policy.
class ApplicationPackageLockingPolicyDefinitionResponse {
  /// The deny assignment excluded actions.
  final List<String>? allowedActions;
  /// The deny assignment excluded data actions.
  final List<String>? allowedDataActions;

  /// Creates a new [ApplicationPackageLockingPolicyDefinitionResponse].
  /// [allowedActions] The deny assignment excluded actions.
  /// [allowedDataActions] The deny assignment excluded data actions.
  ApplicationPackageLockingPolicyDefinitionResponse({
    this.allowedActions,
    this.allowedDataActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedActions': ?allowedActions,
      'allowedDataActions': ?allowedDataActions,
    };
  }

  factory ApplicationPackageLockingPolicyDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ApplicationPackageLockingPolicyDefinitionResponse(
      allowedActions: map['allowedActions'] == null ? null : (map['allowedActions'] as List).cast<String>(),
      allowedDataActions: map['allowedDataActions'] == null ? null : (map['allowedDataActions'] as List).cast<String>(),
    );
  }
}

