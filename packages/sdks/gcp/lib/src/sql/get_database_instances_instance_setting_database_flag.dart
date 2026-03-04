// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceSettingDatabaseFlag {
  /// Name of the flag.
  final pulumi.Input<String> name;

  /// Value of the flag.
  final pulumi.Input<String> value;

  /// Creates a new [GetDatabaseInstancesInstanceSettingDatabaseFlag].
  /// [name] Name of the flag.
  /// [value] Value of the flag.
  GetDatabaseInstancesInstanceSettingDatabaseFlag({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory GetDatabaseInstancesInstanceSettingDatabaseFlag.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstancesInstanceSettingDatabaseFlag(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
