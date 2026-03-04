// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthorizationActionMapping {
  /// The desired action name.
  final pulumi.Input<String>? desired;

  /// The original action name.
  final pulumi.Input<String>? original;

  /// Creates a new [AuthorizationActionMapping].
  /// [desired] The desired action name.
  /// [original] The original action name.
  AuthorizationActionMapping({this.desired, this.original});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'desired': ?desired, 'original': ?original};
  }

  factory AuthorizationActionMapping.fromMap(Map<String, dynamic> map) {
    return AuthorizationActionMapping(
      desired: (() {
        final guardedValue = map['desired'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      original: (() {
        final guardedValue = map['original'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
