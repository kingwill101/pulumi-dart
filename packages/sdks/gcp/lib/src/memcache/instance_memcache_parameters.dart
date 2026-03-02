// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceMemcacheParameters {
  /// (Output)
  /// This is a unique ID associated with this set of parameters.
  final pulumi.Input<String>? id;
  /// User-defined set of parameters to use in the memcache process.
  final pulumi.Input<Map<String, String>>? params;

  /// Creates a new [InstanceMemcacheParameters].
  /// [id] (Output)
  /// [params] User-defined set of parameters to use in the memcache process.
  InstanceMemcacheParameters({
    this.id,
    this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'params': ?params,
    };
  }

  factory InstanceMemcacheParameters.fromMap(Map<String, dynamic> map) {
    return InstanceMemcacheParameters(
      id: map['id'] == null ? null : (map['id'] as String).input(),
      params: map['params'] == null ? null : ((map['params'] as Map).cast<String, String>()).input(),
    );
  }
}

