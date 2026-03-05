// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork {
  final pulumi.Input<String> expirationTime;
  /// The name of the instance.
  final pulumi.Input<String> name;
  final pulumi.Input<String> value;

  /// Creates a new [GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork].
  /// [expirationTime] Required.
  /// [name] The name of the instance.
  /// [value] Required.
  GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork({
    required this.expirationTime,
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationTime': expirationTime,
      'name': name,
      'value': value,
    };
  }

  factory GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingIpConfigurationAuthorizedNetwork(
      expirationTime: pulumi.Input.fromValue(map['expirationTime'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

