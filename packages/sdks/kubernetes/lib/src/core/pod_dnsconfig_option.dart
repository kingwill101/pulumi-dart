// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PodDNSConfigOption defines DNS resolver options of a pod.
class PodDNSConfigOption {
  /// Name is this DNS resolver option's name. Required.
  final pulumi.Input<String?>? name;
  /// Value is this DNS resolver option's value.
  final pulumi.Input<String?>? value;

  /// Creates a new [PodDNSConfigOption].
  /// [name] Name is this DNS resolver option's name. Required.
  /// [value] Value is this DNS resolver option's value.
  const PodDNSConfigOption({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory PodDNSConfigOption.fromMap(Map<String, dynamic> map) {
    return PodDNSConfigOption(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
