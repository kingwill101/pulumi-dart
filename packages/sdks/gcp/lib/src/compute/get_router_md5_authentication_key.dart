// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouterMd5AuthenticationKey {
  /// Value of the key used for MD5 authentication.
  final pulumi.Input<String> key;
  /// The name of the router.
  final pulumi.Input<String> name;

  /// Creates a new [GetRouterMd5AuthenticationKey].
  /// [key] Value of the key used for MD5 authentication.
  /// [name] The name of the router.
  GetRouterMd5AuthenticationKey({
    required this.key,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'name': name,
    };
  }

  factory GetRouterMd5AuthenticationKey.fromMap(Map<String, dynamic> map) {
    return GetRouterMd5AuthenticationKey(
      key: (map['key'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

