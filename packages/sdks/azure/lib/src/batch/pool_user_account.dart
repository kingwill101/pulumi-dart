// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pool_user_account_linux_user_configuration.dart';
import 'pool_user_account_windows_user_configuration.dart';

class PoolUserAccount {
  /// The elevation level of the user account. "NonAdmin" - The auto user is a standard user without elevated access. "Admin" - The auto user is a user with elevated access and operates with full Administrator permissions. The default value is nonAdmin.
  final String elevationLevel;
  /// The `linux_user_configuration` block defined below is a linux-specific user configuration for the user account. This property is ignored if specified on a Windows pool. If not specified, the user is created with the default options.
  final List<PoolUserAccountLinuxUserConfiguration>? linuxUserConfigurations;
  /// The name of the user account.
  final String name;
  /// The password for the user account.
  final String password;
  /// The `windows_user_configuration` block defined below is a windows-specific user configuration for the user account. This property can only be specified if the user is on a Windows pool. If not specified and on a Windows pool, the user is created with the default options.
  final List<PoolUserAccountWindowsUserConfiguration>? windowsUserConfigurations;

  /// Creates a new [PoolUserAccount].
  /// [elevationLevel] The elevation level of the user account. "NonAdmin" - The auto user is a standard user without elevated access. "Admin" - The auto user is a user with elevated access and operates with full Administrator permissions. The default value is nonAdmin.
  /// [linuxUserConfigurations] The `linux_user_configuration` block defined below is a linux-specific user configuration for the user account. This property is ignored if specified on a Windows pool. If not specified, the user is created with the default options.
  /// [name] The name of the user account.
  /// [password] The password for the user account.
  /// [windowsUserConfigurations] The `windows_user_configuration` block defined below is a windows-specific user configuration for the user account. This property can only be specified if the user is on a Windows pool. If not specified and on a Windows pool, the user is created with the default options.
  PoolUserAccount({
    required this.elevationLevel,
    this.linuxUserConfigurations,
    required this.name,
    required this.password,
    this.windowsUserConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elevationLevel': elevationLevel,
      'linuxUserConfigurations': ?linuxUserConfigurations == null ? null : pulumi.Input.encodeList<PoolUserAccountLinuxUserConfiguration, Map<String, dynamic>>(linuxUserConfigurations!, (value) => value.toMap()),
      'name': name,
      'password': password,
      'windowsUserConfigurations': ?windowsUserConfigurations == null ? null : pulumi.Input.encodeList<PoolUserAccountWindowsUserConfiguration, Map<String, dynamic>>(windowsUserConfigurations!, (value) => value.toMap()),
    };
  }

  factory PoolUserAccount.fromMap(Map<String, dynamic> map) {
    return PoolUserAccount(
      elevationLevel: map['elevationLevel'] as String,
      linuxUserConfigurations: map['linuxUserConfigurations'] == null ? null : pulumi.Input.decodeList<PoolUserAccountLinuxUserConfiguration>(map['linuxUserConfigurations'], (value) => PoolUserAccountLinuxUserConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      password: map['password'] as String,
      windowsUserConfigurations: map['windowsUserConfigurations'] == null ? null : pulumi.Input.decodeList<PoolUserAccountWindowsUserConfiguration>(map['windowsUserConfigurations'], (value) => PoolUserAccountWindowsUserConfiguration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

