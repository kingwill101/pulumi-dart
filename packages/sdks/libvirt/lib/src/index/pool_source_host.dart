// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolSourceHost {
  /// Sets the name of the host where the storage source is located.
  final pulumi.Input<String> name;
  /// Configures the port number to be used for connecting to the storage source on the host.
  final pulumi.Input<String>? port;

  /// Creates a new [PoolSourceHost].
  /// [name] Sets the name of the host where the storage source is located.
  /// [port] Configures the port number to be used for connecting to the storage source on the host.
  PoolSourceHost({
    required this.name,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'port': ?port,
    };
  }

  factory PoolSourceHost.fromMap(Map<String, dynamic> map) {
    return PoolSourceHost(
      name: (map['name'] as String).input(),
      port: map['port'] == null ? null : (map['port'] as String).input(),
    );
  }
}

