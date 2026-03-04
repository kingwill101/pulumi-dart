// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Credentials to access the event streaming service attached to the purview account.
class Credentials {
  /// Identity identifier for UserAssign type.
  final pulumi.Input<String>? identityId;

  /// Identity Type.
  final pulumi.Input<String>? type;

  /// Creates a new [Credentials].
  /// [identityId] Identity identifier for UserAssign type.
  /// [type] Identity Type.
  Credentials({this.identityId, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'identityId': ?identityId, 'type': ?type};
  }

  factory Credentials.fromMap(Map<String, dynamic> map) {
    return Credentials(
      identityId: (() {
        final guardedValue = map['identityId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
