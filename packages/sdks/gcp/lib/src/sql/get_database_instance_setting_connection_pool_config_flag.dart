// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceSettingConnectionPoolConfigFlag {
  /// The name of the instance.
  final pulumi.Input<String> name;
  /// Value of the flag.
  final pulumi.Input<String> value;

  /// Creates a new [GetDatabaseInstanceSettingConnectionPoolConfigFlag].
  /// [name] The name of the instance.
  /// [value] Value of the flag.
  GetDatabaseInstanceSettingConnectionPoolConfigFlag({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetDatabaseInstanceSettingConnectionPoolConfigFlag.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingConnectionPoolConfigFlag(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

