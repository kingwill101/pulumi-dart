// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceSettingsDatabaseFlag {
  /// Name of the flag.
  final pulumi.Input<String> name;

  /// Value of the flag.
  final pulumi.Input<String> value;

  /// Creates a new [DatabaseInstanceSettingsDatabaseFlag].
  /// [name] Name of the flag.
  /// [value] Value of the flag.
  DatabaseInstanceSettingsDatabaseFlag({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory DatabaseInstanceSettingsDatabaseFlag.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseInstanceSettingsDatabaseFlag(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
