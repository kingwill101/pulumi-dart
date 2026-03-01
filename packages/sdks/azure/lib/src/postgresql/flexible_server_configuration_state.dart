// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FlexibleServerConfiguration resources.
class FlexibleServerConfigurationState {
  /// Specifies the name of the PostgreSQL Configuration, which needs [to be a valid PostgreSQL configuration name](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIER). Changing this forces a new resource to be created.
  ///
  /// > **Note:** PostgreSQL provides the ability to extend the functionality using azure extensions, with PostgreSQL azure extensions you should specify the `name` value as `azure.extensions` and the `value` you wish to allow in the [extensions list](https://learn.microsoft.com/en-us/azure/postgresql/flexible-server/concepts-extensions?WT.mc_id=Portal-Microsoft_Azure_OSSDatabases#extension-versions).
  final pulumi.Input<String>? name;
  /// The ID of the PostgreSQL Flexible Server where we want to change configuration. Changing this forces a new PostgreSQL Flexible Server Configuration resource.
  final pulumi.Input<String>? serverId;
  /// Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values.
  final pulumi.Input<String>? value;

  /// Creates a new [FlexibleServerConfigurationState].
  /// [name] Specifies the name of the PostgreSQL Configuration, which needs [to be a valid PostgreSQL configuration name](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIER). Changing this forces a new resource to be created.
  /// [serverId] The ID of the PostgreSQL Flexible Server where we want to change configuration. Changing this forces a new PostgreSQL Flexible Server Configuration resource.
  /// [value] Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values.
  FlexibleServerConfigurationState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? serverId,
    pulumi.Output<String>? value,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      serverId = pulumi.Input.asOptionalInput<String>(serverId),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'serverId': ?serverId,
      'value': ?value,
    };
  }

  factory FlexibleServerConfigurationState.fromMap(Map<String, dynamic> map) {
    return FlexibleServerConfigurationState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      serverId: map['serverId'] == null ? null : pulumi.Output.create<String>(map['serverId'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

