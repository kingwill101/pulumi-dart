// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedRedisDefaultDatabaseModule {
  /// Configuration options for the module (e.g. `ERROR_RATE 0.00 INITIAL_SIZE 400`).
  ///
  /// !> **Note:** Changing `args` forces database recreation. Data will be lost and Managed Redis will be unavailable during the operation.
  ///
  /// > **Note:** Only `RediSearch` and `RedisJSON` modules are allowed with geo-replication.
  final pulumi.Input<String>? args;
  /// The name which should be used for this module. Possible values are `RedisBloom`, `RedisTimeSeries`, `RediSearch` and `RedisJSON`.
  ///
  /// !> **Note:** Changing `name` forces database recreation. Data will be lost and Managed Redis will be unavailable during the operation.
  final pulumi.Input<String> name;
  /// Version of the module to be used.
  final pulumi.Input<String>? version;

  /// Creates a new [ManagedRedisDefaultDatabaseModule].
  /// [args] Configuration options for the module (e.g. `ERROR_RATE 0.00 INITIAL_SIZE 400`).
  /// [name] The name which should be used for this module. Possible values are `RedisBloom`, `RedisTimeSeries`, `RediSearch` and `RedisJSON`.
  /// [version] Version of the module to be used.
  ManagedRedisDefaultDatabaseModule({
    this.args,
    required this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'name': name,
      'version': ?version,
    };
  }

  factory ManagedRedisDefaultDatabaseModule.fromMap(Map<String, dynamic> map) {
    return ManagedRedisDefaultDatabaseModule(
      args: map['args'] == null ? null : (map['args'] as String).input(),
      name: (map['name'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

