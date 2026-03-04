// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceQueryKey {
  /// The value of this Query Key.
  final pulumi.Input<String> key;

  /// The Name of the Search Service.
  final pulumi.Input<String> name;

  /// Creates a new [GetServiceQueryKey].
  /// [key] The value of this Query Key.
  /// [name] The Name of the Search Service.
  GetServiceQueryKey({required this.key, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'name': name};
  }

  factory GetServiceQueryKey.fromMap(Map<String, dynamic> map) {
    return GetServiceQueryKey(
      key: pulumi.Input.fromValue(map['key'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
