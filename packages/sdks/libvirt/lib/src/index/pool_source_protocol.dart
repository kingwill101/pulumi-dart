// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolSourceProtocol {
  /// Indicates the version of the protocol being used for the connection.
  final pulumi.Input<String> version;

  /// Creates a new [PoolSourceProtocol].
  /// [version] Indicates the version of the protocol being used for the connection.
  PoolSourceProtocol({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': version,
    };
  }

  factory PoolSourceProtocol.fromMap(Map<String, dynamic> map) {
    return PoolSourceProtocol(
      version: (map['version'] as String).input(),
    );
  }
}

