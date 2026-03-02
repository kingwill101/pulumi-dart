// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies configuration of a redis module
class Module {
  /// Configuration options for the module, e.g. 'ERROR_RATE 0.01 INITIAL_SIZE 400'.
  final pulumi.Input<String>? args;
  /// The name of the module, e.g. 'RedisBloom', 'RediSearch', 'RedisTimeSeries'
  final pulumi.Input<String> name;

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
      args: map['args'] == null ? null : (map['args']! as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

