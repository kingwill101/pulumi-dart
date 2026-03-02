// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkDomain {
  /// Sets whether the domain is local only, preventing it from being accessible externally.
  final pulumi.Input<String>? localOnly;
  /// Specifies the name of the domain within the network configuration.
  final pulumi.Input<String>? name;

  /// Creates a new [NetworkDomain].
  /// [localOnly] Sets whether the domain is local only, preventing it from being accessible externally.
  /// [name] Specifies the name of the domain within the network configuration.
  NetworkDomain({
    this.localOnly,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localOnly': ?localOnly,
      'name': ?name,
    };
  }

  factory NetworkDomain.fromMap(Map<String, dynamic> map) {
    return NetworkDomain(
      localOnly: map['localOnly'] == null ? null : (map['localOnly'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

