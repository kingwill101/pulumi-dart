// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork {
  final pulumi.Input<String> expirationTime;
  final pulumi.Input<String> name;
  final pulumi.Input<String> value;

  /// Creates a new [GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork].
  /// [expirationTime] Required.
  /// [name] Required.
  /// [value] Required.
  GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork({
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

  factory GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingIpConfigurationAuthorizedNetwork(
      expirationTime: (map['expirationTime'] as String).input(),
      name: (map['name'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

