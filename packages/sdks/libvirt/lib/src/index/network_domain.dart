// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkDomain {
  /// Sets whether the domain is local only, preventing it from being accessible externally.
  final pulumi.Input<String?>? localOnly;
  /// Specifies the name of the domain within the network configuration.
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? register;

  /// Creates a new [NetworkDomain].
  /// [localOnly] Sets whether the domain is local only, preventing it from being accessible externally.
  /// [name] Specifies the name of the domain within the network configuration.
  /// [register] Optional.
  const NetworkDomain({
    this.localOnly,
    this.name,
    this.register,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localOnly': ?localOnly,
      'name': ?name,
      'register': ?register,
    };
  }

  factory NetworkDomain.fromMap(Map<String, dynamic> map) {
    return NetworkDomain(
      localOnly: (() { final guardedValue = map['localOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      register: (() { final guardedValue = map['register']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
