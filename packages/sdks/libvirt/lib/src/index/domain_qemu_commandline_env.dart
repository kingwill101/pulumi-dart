// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainQemuCommandlineEnv {
  /// Configures the name of the domain, which should be unique within the host environment.
  final pulumi.Input<String> name;
  /// Sets the optional value for the named QEMU environment variable; if omitted, the variable is declared without an explicit value.
  ///
  /// See: &lt;https://libvirt.org/kbase/qemu-passthrough-security.html#xml-document-additions&gt;
  final pulumi.Input<String?>? value;

  /// Creates a new [DomainQemuCommandlineEnv].
  /// [name] Configures the name of the domain, which should be unique within the host environment.
  /// [value] Sets the optional value for the named QEMU environment variable; if omitted, the variable is declared without an explicit value.
  const DomainQemuCommandlineEnv({
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
    };
  }

  factory DomainQemuCommandlineEnv.fromMap(Map<String, dynamic> map) {
    return DomainQemuCommandlineEnv(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
