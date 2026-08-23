// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines how resources deployed by the Deployment stack are locked.
class DenySettings {
  /// DenySettings will be applied to child resource scopes of every managed resource with a deny assignment.
  final pulumi.Input<bool>? applyToChildScopes;
  /// List of role-based management operations that are excluded from the denySettings. Up to 200 actions are permitted. If the denySetting mode is set to 'denyWriteAndDelete', then the following actions are automatically appended to 'excludedActions': '*\/read' and 'Microsoft.Authorization/locks/delete'. If the denySetting mode is set to 'denyDelete', then the following actions are automatically appended to 'excludedActions': 'Microsoft.Authorization/locks/delete'. Duplicate actions will be removed.
  final pulumi.Input<List<String>>? excludedActions;
  /// List of AAD principal IDs excluded from the lock. Up to 5 principals are permitted.
  final pulumi.Input<List<String>>? excludedPrincipals;
  /// denySettings Mode that defines denied actions.
  final pulumi.Input<String> mode;

  /// Creates a new [DenySettings].
  /// [applyToChildScopes] DenySettings will be applied to child resource scopes of every managed resource with a deny assignment.
  /// [excludedActions] List of role-based management operations that are excluded from the denySettings. Up to 200 actions are permitted. If the denySetting mode is set to 'denyWriteAndDelete', then the following actions are automatically appended to 'excludedActions': '*\/read' and 'Microsoft.Authorization/locks/delete'. If the denySetting mode is set to 'denyDelete', then the following actions are automatically appended to 'excludedActions': 'Microsoft.Authorization/locks/delete'. Duplicate actions will be removed.
  /// [excludedPrincipals] List of AAD principal IDs excluded from the lock. Up to 5 principals are permitted.
  /// [mode] denySettings Mode that defines denied actions.
  const DenySettings({
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

  factory DenySettings.fromMap(Map<String, dynamic> map) {
    return DenySettings(
      applyToChildScopes: (() { final guardedValue = map['applyToChildScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      excludedActions: (() { final guardedValue = map['excludedActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      excludedPrincipals: (() { final guardedValue = map['excludedPrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}
