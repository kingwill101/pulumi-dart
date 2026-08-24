// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustAccessTag resources.
class ZeroTrustAccessTagState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// The name of the tag
  final pulumi.Input<String?>? name;

  /// Creates a new [ZeroTrustAccessTagState].
  /// [accountId] Identifier.
  /// [name] The name of the tag
  const ZeroTrustAccessTagState({
    this.accountId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'name': ?name,
    };
  }

  factory ZeroTrustAccessTagState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessTagState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
