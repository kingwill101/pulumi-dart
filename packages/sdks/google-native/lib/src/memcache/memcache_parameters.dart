// ignore_for_file: unused_element, unnecessary_cast


class MemcacheParameters {
  /// User defined set of parameters to use in the memcached process.
  final Map<String, String>? params;

  /// Creates a new [MemcacheParameters].
  /// [params] User defined set of parameters to use in the memcached process.
  MemcacheParameters({
    this.params,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'params': ?params,
    };
  }

  factory MemcacheParameters.fromMap(Map<String, dynamic> map) {
    return MemcacheParameters(
      params: map['params'] == null ? null : (map['params'] as Map).cast<String, String>(),
    );
  }
}

