// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsBootMenu {
  /// Enables or disables the boot menu for user selection during startup.
  final pulumi.Input<String>? enable;
  /// Sets the amount of time the boot menu remains visible before booting the default device.
  final pulumi.Input<String>? timeout;

  /// Creates a new [DomainOsBootMenu].
  /// [enable] Enables or disables the boot menu for user selection during startup.
  /// [timeout] Sets the amount of time the boot menu remains visible before booting the default device.
  DomainOsBootMenu({
    this.enable,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'timeout': ?timeout,
    };
  }

  factory DomainOsBootMenu.fromMap(Map<String, dynamic> map) {
    return DomainOsBootMenu(
      enable: map['enable'] == null ? null : (map['enable'] as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as String).input(),
    );
  }
}

