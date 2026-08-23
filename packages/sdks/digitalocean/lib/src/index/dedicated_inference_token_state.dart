// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DedicatedInferenceToken resources.
class DedicatedInferenceTokenState {
  /// The date and time when the token was created.
  final pulumi.Input<String>? createdAt;
  /// The ID of the dedicated inference endpoint this token belongs to. Changing this forces a new resource.
  final pulumi.Input<String>? dedicatedInferenceId;
  /// A human-readable name for the token. Changing this forces a new resource.
  final pulumi.Input<String>? name;
  /// (Sensitive) The token value. Only available immediately after creation and not retrievable afterwards.
  final pulumi.Input<String>? token;

  /// Creates a new [DedicatedInferenceTokenState].
  /// [createdAt] The date and time when the token was created.
  /// [dedicatedInferenceId] The ID of the dedicated inference endpoint this token belongs to. Changing this forces a new resource.
  /// [name] A human-readable name for the token. Changing this forces a new resource.
  /// [token] (Sensitive) The token value. Only available immediately after creation and not retrievable afterwards.
  const DedicatedInferenceTokenState({
    this.createdAt,
    this.dedicatedInferenceId,
    this.name,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'dedicatedInferenceId': ?dedicatedInferenceId,
      'name': ?name,
      'token': ?token,
    };
  }

  factory DedicatedInferenceTokenState.fromMap(Map<String, dynamic> map) {
    return DedicatedInferenceTokenState(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dedicatedInferenceId: (() { final guardedValue = map['dedicatedInferenceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
