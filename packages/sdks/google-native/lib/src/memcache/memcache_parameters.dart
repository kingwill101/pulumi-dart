// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MemcacheParameters {
  /// User defined set of parameters to use in the memcached process.
  final pulumi.Input<Map<String, String>>? params;

  /// Creates a new [MemcacheParameters].
  /// [params] User defined set of parameters to use in the memcached process.
  const MemcacheParameters({
    this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': ?params,
    };
  }

  factory MemcacheParameters.fromMap(Map<String, dynamic> map) {
    return MemcacheParameters(
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

