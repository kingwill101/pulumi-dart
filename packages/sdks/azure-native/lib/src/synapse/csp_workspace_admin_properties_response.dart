// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Initial workspace AAD admin properties for a CSP subscription
class CspWorkspaceAdminPropertiesResponse {
  /// AAD object ID of initial workspace admin
  final pulumi.Input<String>? initialWorkspaceAdminObjectId;

  /// Creates a new [CspWorkspaceAdminPropertiesResponse].
  /// [initialWorkspaceAdminObjectId] AAD object ID of initial workspace admin
  const CspWorkspaceAdminPropertiesResponse({
    this.initialWorkspaceAdminObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialWorkspaceAdminObjectId': ?initialWorkspaceAdminObjectId,
    };
  }

  factory CspWorkspaceAdminPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CspWorkspaceAdminPropertiesResponse(
      initialWorkspaceAdminObjectId: (() { final guardedValue = map['initialWorkspaceAdminObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
