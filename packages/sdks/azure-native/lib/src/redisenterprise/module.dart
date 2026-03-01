// ignore_for_file: unused_element, unnecessary_cast


/// Specifies configuration of a redis module
class Module {
  /// Configuration options for the module, e.g. 'ERROR_RATE 0.01 INITIAL_SIZE 400'.
  final String? args;
  /// The name of the module, e.g. 'RedisBloom', 'RediSearch', 'RedisTimeSeries'
  final String name;

  /// Creates a new [Module].
  /// [args] Configuration options for the module, e.g. 'ERROR_RATE 0.01 INITIAL_SIZE 400'.
  /// [name] The name of the module, e.g. 'RedisBloom', 'RediSearch', 'RedisTimeSeries'
  Module({
    this.args,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'name': name,
    };
  }

  factory Module.fromMap(Map<String, dynamic> map) {
    return Module(
      args: map['args'] == null ? null : map['args'] as String,
      name: map['name'] as String,
    );
  }
}

