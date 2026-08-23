// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeyReleasePolicy {
  /// Whether this policy is immutable. Defaults to `false`.
  ///
  /// &gt; **Note:** When `immutable` is set to `true`, changing either `immutable` or `json` will force a new resource to be created.
  final pulumi.Input<bool>? immutable;
  /// The policy contents in JSON format.
  final pulumi.Input<String> json;

  /// Creates a new [KeyReleasePolicy].
  /// [immutable] Whether this policy is immutable. Defaults to `false`.
  /// [json] The policy contents in JSON format.
  const KeyReleasePolicy({
    this.immutable,
    required this.json,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'immutable': ?immutable,
      'json': json,
    };
  }

  factory KeyReleasePolicy.fromMap(Map<String, dynamic> map) {
    return KeyReleasePolicy(
      immutable: (() { final guardedValue = map['immutable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      json: pulumi.Input.fromValue(map['json'] as String),
    );
  }
}
