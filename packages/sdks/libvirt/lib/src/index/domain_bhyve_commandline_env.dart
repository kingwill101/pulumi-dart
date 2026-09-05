// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainBhyveCommandlineEnv {
  /// Configures the name of the domain, which should be unique within the host environment.
  final pulumi.Input<String> name;
  /// Sets the optional value for the named bhyve environment variable.
  final pulumi.Input<String?>? value;

  /// Creates a new [DomainBhyveCommandlineEnv].
  /// [name] Configures the name of the domain, which should be unique within the host environment.
  /// [value] Sets the optional value for the named bhyve environment variable.
  const DomainBhyveCommandlineEnv({
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
    };
  }

  factory DomainBhyveCommandlineEnv.fromMap(Map<String, dynamic> map) {
    return DomainBhyveCommandlineEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
