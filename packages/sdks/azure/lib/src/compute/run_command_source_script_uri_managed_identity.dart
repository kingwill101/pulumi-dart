// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RunCommandSourceScriptUriManagedIdentity {
  /// The client ID of the managed identity.
  final pulumi.Input<String>? clientId;
  /// The object ID of the managed identity.
  final pulumi.Input<String>? objectId;

  /// Creates a new [RunCommandSourceScriptUriManagedIdentity].
  /// [clientId] The client ID of the managed identity.
  /// [objectId] The object ID of the managed identity.
  const RunCommandSourceScriptUriManagedIdentity({
    this.clientId,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'objectId': ?objectId,
    };
  }

  factory RunCommandSourceScriptUriManagedIdentity.fromMap(Map<String, dynamic> map) {
    return RunCommandSourceScriptUriManagedIdentity(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

