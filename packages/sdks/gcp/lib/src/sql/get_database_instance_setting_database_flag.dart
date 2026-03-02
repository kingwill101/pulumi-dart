// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceSettingDatabaseFlag {
  /// The name of the instance.
  final pulumi.Input<String> name;
  /// Value of the flag.
  final pulumi.Input<String> value;

  /// Creates a new [GetDatabaseInstanceSettingDatabaseFlag].
  /// [name] The name of the instance.
  /// [value] Value of the flag.
  GetDatabaseInstanceSettingDatabaseFlag({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetDatabaseInstanceSettingDatabaseFlag.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingDatabaseFlag(
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

