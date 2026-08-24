// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDexTestTargetPolicy {
  /// Whether the DEX rule is the account default.
  final pulumi.Input<bool> default_;
  /// The id of the DEX rule.
  final pulumi.Input<String> id;
  /// The name of the DEX rule.
  final pulumi.Input<String> name;

  /// Creates a new [GetZeroTrustDexTestTargetPolicy].
  /// [default_] Whether the DEX rule is the account default.
  /// [id] The id of the DEX rule.
  /// [name] The name of the DEX rule.
  const GetZeroTrustDexTestTargetPolicy({
    required this.default_,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': default_,
      'id': id,
      'name': name,
    };
  }

  factory GetZeroTrustDexTestTargetPolicy.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDexTestTargetPolicy(
      default_: pulumi.Input.fromValue(map['default'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
