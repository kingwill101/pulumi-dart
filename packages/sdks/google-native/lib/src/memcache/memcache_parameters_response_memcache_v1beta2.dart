// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MemcacheParametersResponseMemcacheV1beta2 {
  /// User defined set of parameters to use in the memcached process.
  final pulumi.Input<Map<String, String>> params;

  /// Creates a new [MemcacheParametersResponseMemcacheV1beta2].
  /// [params] User defined set of parameters to use in the memcached process.
  const MemcacheParametersResponseMemcacheV1beta2({
    required this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': params,
    };
  }

  factory MemcacheParametersResponseMemcacheV1beta2.fromMap(Map<String, dynamic> map) {
    return MemcacheParametersResponseMemcacheV1beta2(
      params: pulumi.Input.fromValue((map['params'] as Map).cast<String, String>()),
    );
  }
}
