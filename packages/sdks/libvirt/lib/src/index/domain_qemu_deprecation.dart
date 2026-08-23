// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainQemuDeprecation {
  /// Sets the deprecation handling mode requested from libvirt for QEMU-specific deprecated behavior.
  final pulumi.Input<String>? behavior;

  /// Creates a new [DomainQemuDeprecation].
  /// [behavior] Sets the deprecation handling mode requested from libvirt for QEMU-specific deprecated behavior.
  const DomainQemuDeprecation({
    this.behavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': ?behavior,
    };
  }

  factory DomainQemuDeprecation.fromMap(Map<String, dynamic> map) {
    return DomainQemuDeprecation(
      behavior: (() { final guardedValue = map['behavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
