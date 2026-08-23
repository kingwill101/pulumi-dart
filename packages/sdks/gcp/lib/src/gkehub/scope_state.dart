// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScopeState {
  /// (Output)
  /// Code describes the state of a Scope resource.
  final pulumi.Input<String>? code;

  /// Creates a new [ScopeState].
  /// [code] (Output)
  const ScopeState({
    this.code,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
    };
  }

  factory ScopeState.fromMap(Map<String, dynamic> map) {
    return ScopeState(
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
