// ignore_for_file: unused_element, unnecessary_cast


/// Defines how resources deployed by the Deployment stack are locked.
class DenySettingsResponse {
  /// DenySettings will be applied to child resource scopes of every managed resource with a deny assignment.
  final bool? applyToChildScopes;
  /// List of role-based management operations that are excluded from the denySettings. Up to 200 actions are permitted. If the denySetting mode is set to 'denyWriteAndDelete', then the following actions are automatically appended to 'excludedActions': '*\/read' and 'Microsoft.Authorization/locks/delete'. If the denySetting mode is set to 'denyDelete', then the following actions are automatically appended to 'excludedActions': 'Microsoft.Authorization/locks/delete'. Duplicate actions will be removed.
  final List<String>? excludedActions;
  /// List of AAD principal IDs excluded from the lock. Up to 5 principals are permitted.
  final List<String>? excludedPrincipals;
  /// denySettings Mode that defines denied actions.
  final String mode;

  /// Creates a new [DenySettingsResponse].
  /// [applyToChildScopes] DenySettings will be applied to child resource scopes of every managed resource with a deny assignment.
  /// [excludedActions] List of role-based management operations that are excluded from the denySettings. Up to 200 actions are permitted. If the denySetting mode is set to 'denyWriteAndDelete', then the following actions are automatically appended to 'excludedActions': '*\/read' and 'Microsoft.Authorization/locks/delete'. If the denySetting mode is set to 'denyDelete', then the following actions are automatically appended to 'excludedActions': 'Microsoft.Authorization/locks/delete'. Duplicate actions will be removed.
  /// [excludedPrincipals] List of AAD principal IDs excluded from the lock. Up to 5 principals are permitted.
  /// [mode] denySettings Mode that defines denied actions.
  DenySettingsResponse({
    this.applyToChildScopes,
    this.excludedActions,
    this.excludedPrincipals,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyToChildScopes': ?applyToChildScopes,
      'excludedActions': ?excludedActions,
      'excludedPrincipals': ?excludedPrincipals,
      'mode': mode,
    };
  }

  factory DenySettingsResponse.fromMap(Map<String, dynamic> map) {
    return DenySettingsResponse(
      applyToChildScopes: map['applyToChildScopes'] == null ? null : map['applyToChildScopes'] as bool,
      excludedActions: map['excludedActions'] == null ? null : (map['excludedActions'] as List).cast<String>(),
      excludedPrincipals: map['excludedPrincipals'] == null ? null : (map['excludedPrincipals'] as List).cast<String>(),
      mode: map['mode'] as String,
    );
  }
}

