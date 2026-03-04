// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_postgresql_flexible_server_configuration_flexible_server_configuration_args_doc}
/// The set of arguments for FlexibleServerConfiguration.
/// {@endtemplate}
/// {@macro pulumi_postgresql_flexible_server_configuration_flexible_server_configuration_args_doc}
class FlexibleServerConfigurationArgs {
  /// Specifies the name of the PostgreSQL Configuration, which needs [to be a valid PostgreSQL configuration name](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIER). Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** PostgreSQL provides the ability to extend the functionality using azure extensions, with PostgreSQL azure extensions you should specify the `name` value as `azure.extensions` and the `value` you wish to allow in the [extensions list](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-extensions?WT.mc_id=Portal-Microsoft_Azure_OSSDatabases#extension-versions).
  final pulumi.Input<String>? name;

  /// The ID of the PostgreSQL Flexible Server where we want to change configuration. Changing this forces a new PostgreSQL Flexible Server Configuration resource.
  final pulumi.Input<String> serverId;

  /// Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values.
  final pulumi.Input<String> value;

  /// Creates a new [FlexibleServerConfigurationArgs].
  /// [name] Specifies the name of the PostgreSQL Configuration, which needs [to be a valid PostgreSQL configuration name](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIER). Changing this forces a new resource to be created.
  /// [serverId] The ID of the PostgreSQL Flexible Server where we want to change configuration. Changing this forces a new PostgreSQL Flexible Server Configuration resource.
  /// [value] Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values.
  FlexibleServerConfigurationArgs({
    this.name,
    required this.serverId,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'serverId': serverId,
      'value': value,
    };
  }

  factory FlexibleServerConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return FlexibleServerConfigurationArgs(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverId: pulumi.Input.fromValue(map['serverId'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
