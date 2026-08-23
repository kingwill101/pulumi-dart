// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy.dart';

class SignedIdentifier {
  /// Access policy
  final pulumi.Input<AccessPolicy>? accessPolicy;
  /// An unique identifier of the stored access policy.
  final pulumi.Input<String>? id;

  /// Creates a new [SignedIdentifier].
  /// [accessPolicy] Access policy
  /// [id] An unique identifier of the stored access policy.
  const SignedIdentifier({
    this.accessPolicy,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessPolicy': ?pulumi.Input.mapOptionalInputValue<AccessPolicy, Map<String, dynamic>>(accessPolicy, (value) => value.toMap()),
      'id': ?id,
    };
  }

  factory SignedIdentifier.fromMap(Map<String, dynamic> map) {
    return SignedIdentifier(
      accessPolicy: (() { final guardedValue = map['accessPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
