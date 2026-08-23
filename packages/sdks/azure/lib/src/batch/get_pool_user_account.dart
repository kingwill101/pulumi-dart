// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_pool_user_account_linux_user_configuration.dart';
import 'get_pool_user_account_windows_user_configuration.dart';

class GetPoolUserAccount {
  /// The elevation level of the user account. "NonAdmin" - The auto user is a standard user without elevated access. "Admin" - The auto user is a user with elevated access and operates with full Administrator permissions. The default value is nonAdmin.
  final pulumi.Input<String> elevationLevel;
  /// The `linuxUserConfiguration` block defined below is a linux-specific user configuration for the user account. This property is ignored if specified on a Windows pool. If not specified, the user is created with the default options.
  final pulumi.Input<List<GetPoolUserAccountLinuxUserConfiguration>> linuxUserConfigurations;
  /// The name of the Batch pool.
  final pulumi.Input<String> name;
  /// The password for the user account.
  final pulumi.Input<String> password;
  /// The `windowsUserConfiguration` block defined below is a windows-specific user configuration for the user account. This property can only be specified if the user is on a Windows pool. If not specified and on a Windows pool, the user is created with the default options.
  final pulumi.Input<List<GetPoolUserAccountWindowsUserConfiguration>> windowsUserConfigurations;

  /// Creates a new [GetPoolUserAccount].
  /// [elevationLevel] The elevation level of the user account. "NonAdmin" - The auto user is a standard user without elevated access. "Admin" - The auto user is a user with elevated access and operates with full Administrator permissions. The default value is nonAdmin.
  /// [linuxUserConfigurations] The `linuxUserConfiguration` block defined below is a linux-specific user configuration for the user account. This property is ignored if specified on a Windows pool. If not specified, the user is created with the default options.
  /// [name] The name of the Batch pool.
  /// [password] The password for the user account.
  /// [windowsUserConfigurations] The `windowsUserConfiguration` block defined below is a windows-specific user configuration for the user account. This property can only be specified if the user is on a Windows pool. If not specified and on a Windows pool, the user is created with the default options.
  const GetPoolUserAccount({
    required this.elevationLevel,
    required this.linuxUserConfigurations,
    required this.name,
    required this.password,
    required this.windowsUserConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elevationLevel': elevationLevel,
      'linuxUserConfigurations': pulumi.Input.mapInputValue<List<GetPoolUserAccountLinuxUserConfiguration>, List<Map<String, dynamic>>>(linuxUserConfigurations, (value) => pulumi.Input.encodeList<GetPoolUserAccountLinuxUserConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'password': password,
      'windowsUserConfigurations': pulumi.Input.mapInputValue<List<GetPoolUserAccountWindowsUserConfiguration>, List<Map<String, dynamic>>>(windowsUserConfigurations, (value) => pulumi.Input.encodeList<GetPoolUserAccountWindowsUserConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetPoolUserAccount.fromMap(Map<String, dynamic> map) {
    return GetPoolUserAccount(
      elevationLevel: pulumi.Input.fromValue(map['elevationLevel'] as String),
      linuxUserConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPoolUserAccountLinuxUserConfiguration>(map['linuxUserConfigurations']!, (value) => GetPoolUserAccountLinuxUserConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      password: pulumi.Input.fromValue(map['password'] as String),
      windowsUserConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetPoolUserAccountWindowsUserConfiguration>(map['windowsUserConfigurations']!, (value) => GetPoolUserAccountWindowsUserConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
