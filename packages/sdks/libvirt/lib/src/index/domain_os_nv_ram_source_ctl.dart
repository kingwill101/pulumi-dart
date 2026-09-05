// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceCtl {
  final pulumi.Input<String> dev;

  /// Creates a new [DomainOsNvRamSourceCtl].
  /// [dev] Required.
  const DomainOsNvRamSourceCtl({
    required this.dev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dev': dev,
    };
  }

  factory DomainOsNvRamSourceCtl.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceCtl(
      dev: pulumi.Input.fromValue(map['dev'] as String),
    );
  }
}
