// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnterpriseDatabaseModule {
  /// Configuration options for the module (e.g. `ERROR_RATE 0.00 INITIAL_SIZE 400`). Changing this forces a new resource to be created. Defaults to `""`.
  final pulumi.Input<String>? args;
  /// The name which should be used for this module. Possible values are `RedisBloom`, `RedisTimeSeries`, `RediSearch` and `RedisJSON`. Changing this forces a new Redis Enterprise Database to be created.
  final pulumi.Input<String> name;
  final pulumi.Input<String>? version;

  /// Creates a new [EnterpriseDatabaseModule].
  /// [args] Configuration options for the module (e.g. `ERROR_RATE 0.00 INITIAL_SIZE 400`). Changing this forces a new resource to be created. Defaults to `""`.
  /// [name] The name which should be used for this module. Possible values are `RedisBloom`, `RedisTimeSeries`, `RediSearch` and `RedisJSON`. Changing this forces a new Redis Enterprise Database to be created.
  /// [version] Optional.
  EnterpriseDatabaseModule({
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

  factory EnterpriseDatabaseModule.fromMap(Map<String, dynamic> map) {
    return EnterpriseDatabaseModule(
      args: map['args'] == null ? null : (map['args']! as String).input(),
      name: (map['name'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

