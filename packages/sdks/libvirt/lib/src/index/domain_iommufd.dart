// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainIommufd {
  final pulumi.Input<String> enabled;
  final pulumi.Input<String?>? fdGroup;

  /// Creates a new [DomainIommufd].
  /// [enabled] Required.
  /// [fdGroup] Optional.
  const DomainIommufd({
    required this.enabled,
    this.fdGroup,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'fdGroup': ?fdGroup,
    };
  }

  factory DomainIommufd.fromMap(Map<String, dynamic> map) {
    return DomainIommufd(
      enabled: pulumi.Input.fromValue(map['enabled'] as String),
      fdGroup: (() { final guardedValue = map['fdGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
