// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDexTestTargetPolicy {
  /// Whether the DEX rule is the account default.
  final pulumi.Input<bool?>? default_;
  /// The id of the DEX rule.
  final pulumi.Input<String> id;
  /// The name of the DEX rule.
  final pulumi.Input<String?>? name;

  /// Creates a new [ZeroTrustDexTestTargetPolicy].
  /// [default_] Whether the DEX rule is the account default.
  /// [id] The id of the DEX rule.
  /// [name] The name of the DEX rule.
  const ZeroTrustDexTestTargetPolicy({
    this.default_,
    required this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'id': id,
      'name': ?name,
    };
  }

  factory ZeroTrustDexTestTargetPolicy.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDexTestTargetPolicy(
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
