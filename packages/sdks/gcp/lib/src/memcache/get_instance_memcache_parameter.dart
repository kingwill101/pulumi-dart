// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceMemcacheParameter {
  /// This is a unique ID associated with this set of parameters.
  final pulumi.Input<String> id;
  /// User-defined set of parameters to use in the memcache process.
  final pulumi.Input<Map<String, String>> params;

  /// Creates a new [GetInstanceMemcacheParameter].
  /// [id] This is a unique ID associated with this set of parameters.
  /// [params] User-defined set of parameters to use in the memcache process.
  const GetInstanceMemcacheParameter({
    required this.id,
    required this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'params': params,
    };
  }

  factory GetInstanceMemcacheParameter.fromMap(Map<String, dynamic> map) {
    return GetInstanceMemcacheParameter(
      id: pulumi.Input.fromValue(map['id'] as String),
      params: pulumi.Input.fromValue((map['params'] as Map).cast<String, String>()),
    );
  }
}
