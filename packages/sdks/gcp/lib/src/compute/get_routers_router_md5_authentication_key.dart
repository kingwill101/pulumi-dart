// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRoutersRouterMd5AuthenticationKey {
  final pulumi.Input<String> key;
  final pulumi.Input<String> name;

  /// Creates a new [GetRoutersRouterMd5AuthenticationKey].
  /// [key] Required.
  /// [name] Required.
  const GetRoutersRouterMd5AuthenticationKey({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'name': name,
    };
  }

  factory GetRoutersRouterMd5AuthenticationKey.fromMap(Map<String, dynamic> map) {
    return GetRoutersRouterMd5AuthenticationKey(
      key: pulumi.Input.fromValue(map['key'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

