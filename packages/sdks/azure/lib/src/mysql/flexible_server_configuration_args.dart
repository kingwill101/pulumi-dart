// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mysql_flexible_server_configuration_flexible_server_configuration_args_doc}
/// The set of arguments for FlexibleServerConfiguration.
/// {@endtemplate}
/// {@macro pulumi_mysql_flexible_server_configuration_flexible_server_configuration_args_doc}
class FlexibleServerConfigurationArgs {
  /// Specifies the name of the MySQL Flexible Server Configuration, which needs [to be a valid MySQL configuration name](https://dev.mysql.com/doc/refman/5.7/en/server-configuration.html). Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the MySQL Flexible Server exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created.
  final pulumi.Input<String> serverName;
  /// Specifies the value of the MySQL Flexible Server Configuration. See the MySQL documentation for valid values.
  final pulumi.Input<String> value;

  /// Creates a new [FlexibleServerConfigurationArgs].
  /// [name] Specifies the name of the MySQL Flexible Server Configuration, which needs [to be a valid MySQL configuration name](https://dev.mysql.com/doc/refman/5.7/en/server-configuration.html). Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the MySQL Flexible Server exists. Changing this forces a new resource to be created.
  /// [serverName] Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created.
  /// [value] Specifies the value of the MySQL Flexible Server Configuration. See the MySQL documentation for valid values.
  const FlexibleServerConfigurationArgs({
    this.name,
    required this.resourceGroupName,
    required this.serverName,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'value': value,
    };
  }

  factory FlexibleServerConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return FlexibleServerConfigurationArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

