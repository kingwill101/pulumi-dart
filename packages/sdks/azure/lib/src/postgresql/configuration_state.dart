// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Configuration resources.
class ConfigurationState {
  /// Specifies the name of the PostgreSQL Configuration, which needs [to be a valid PostgreSQL configuration name](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIER). Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverName;
  /// Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values. Changing this forces a new resource to be created.
  final pulumi.Input<String>? value;

  /// Creates a new [ConfigurationState].
  /// [name] Specifies the name of the PostgreSQL Configuration, which needs [to be a valid PostgreSQL configuration name](https://www.postgresql.org/docs/current/static/sql-syntax-lexical.html#SQL-SYNTAX-IDENTIFIER). Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the PostgreSQL Server exists. Changing this forces a new resource to be created.
  /// [serverName] Specifies the name of the PostgreSQL Server. Changing this forces a new resource to be created.
  /// [value] Specifies the value of the PostgreSQL Configuration. See the PostgreSQL documentation for valid values. Changing this forces a new resource to be created.
  ConfigurationState({
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? serverName,
    pulumi.Output<String>? value,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      serverName = pulumi.Input.asOptionalInput<String>(serverName),
      value = pulumi.Input.asOptionalInput<String>(value);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'serverName': ?serverName,
      'value': ?value,
    };
  }

  factory ConfigurationState.fromMap(Map<String, dynamic> map) {
    return ConfigurationState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: map['serverName'] == null ? null : pulumi.Output.create<String>(map['serverName'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

