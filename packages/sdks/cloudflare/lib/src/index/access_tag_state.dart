// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessTag resources.
class AccessTagState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// The name of the tag
  final pulumi.Input<String?>? name;

  /// Creates a new [AccessTagState].
  /// [accountId] Identifier.
  /// [name] The name of the tag
  const AccessTagState({
    this.accountId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'name': ?name,
    };
  }

  factory AccessTagState.fromMap(Map<String, dynamic> map) {
    return AccessTagState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
