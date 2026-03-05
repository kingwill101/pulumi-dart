// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MemcacheParametersMemcacheV1beta2 {
  /// User defined set of parameters to use in the memcached process.
  final pulumi.Input<Map<String, String>>? params;

  /// Creates a new [MemcacheParametersMemcacheV1beta2].
  /// [params] User defined set of parameters to use in the memcached process.
  MemcacheParametersMemcacheV1beta2({
    this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': ?params,
    };
  }

  factory MemcacheParametersMemcacheV1beta2.fromMap(Map<String, dynamic> map) {
    return MemcacheParametersMemcacheV1beta2(
      params: (() { final guardedValue = map['params']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

