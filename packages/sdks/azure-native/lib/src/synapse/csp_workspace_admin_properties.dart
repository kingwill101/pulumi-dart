// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Initial workspace AAD admin properties for a CSP subscription
class CspWorkspaceAdminProperties {
  /// AAD object ID of initial workspace admin
  final pulumi.Input<String>? initialWorkspaceAdminObjectId;

  /// Creates a new [CspWorkspaceAdminProperties].
  /// [initialWorkspaceAdminObjectId] AAD object ID of initial workspace admin
  const CspWorkspaceAdminProperties({
    this.initialWorkspaceAdminObjectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'initialWorkspaceAdminObjectId': ?initialWorkspaceAdminObjectId,
    };
  }

  factory CspWorkspaceAdminProperties.fromMap(Map<String, dynamic> map) {
    return CspWorkspaceAdminProperties(
      initialWorkspaceAdminObjectId: (() { final guardedValue = map['initialWorkspaceAdminObjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

