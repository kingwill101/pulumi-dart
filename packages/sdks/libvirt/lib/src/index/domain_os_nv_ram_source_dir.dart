// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceDir {
  /// Defines the specific directory path for the backing store source configuration.
  final pulumi.Input<String>? dir;

  /// Creates a new [DomainOsNvRamSourceDir].
  /// [dir] Defines the specific directory path for the backing store source configuration.
  DomainOsNvRamSourceDir({this.dir});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dir': ?dir};
  }

  factory DomainOsNvRamSourceDir.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceDir(
      dir: (() {
        final guardedValue = map['dir'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
