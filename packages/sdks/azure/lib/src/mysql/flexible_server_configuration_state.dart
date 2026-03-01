// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FlexibleServerConfiguration resources.
class FlexibleServerConfigurationState {
  /// Specifies the name of the MySQL Flexible Server Configuration, which needs [to be a valid MySQL configuration name](https://dev.mysql.com/doc/refman/5.7/en/server-configuration.html). Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the MySQL Flexible Server exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? serverName;
  /// Specifies the value of the MySQL Flexible Server Configuration. See the MySQL documentation for valid values.
  final pulumi.Input<String>? value;

  /// Creates a new [FlexibleServerConfigurationState].
  /// [name] Specifies the name of the MySQL Flexible Server Configuration, which needs [to be a valid MySQL configuration name](https://dev.mysql.com/doc/refman/5.7/en/server-configuration.html). Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the MySQL Flexible Server exists. Changing this forces a new resource to be created.
  /// [serverName] Specifies the name of the MySQL Flexible Server. Changing this forces a new resource to be created.
  /// [value] Specifies the value of the MySQL Flexible Server Configuration. See the MySQL documentation for valid values.
  FlexibleServerConfigurationState({
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

  factory FlexibleServerConfigurationState.fromMap(Map<String, dynamic> map) {
    return FlexibleServerConfigurationState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: map['serverName'] == null ? null : pulumi.Output.create<String>(map['serverName'] as String),
      value: map['value'] == null ? null : pulumi.Output.create<String>(map['value'] as String),
    );
  }
}

