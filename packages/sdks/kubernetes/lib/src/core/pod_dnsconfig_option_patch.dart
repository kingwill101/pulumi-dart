// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PodDNSConfigOption defines DNS resolver options of a pod.
class PodDNSConfigOptionPatch {
  /// Name is this DNS resolver option's name. Required.
  final pulumi.Input<String>? name;
  /// Value is this DNS resolver option's value.
  final pulumi.Input<String>? value;

  /// Creates a new [PodDNSConfigOptionPatch].
  /// [name] Name is this DNS resolver option's name. Required.
  /// [value] Value is this DNS resolver option's value.
  PodDNSConfigOptionPatch({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory PodDNSConfigOptionPatch.fromMap(Map<String, dynamic> map) {
    return PodDNSConfigOptionPatch(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

