// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataConnectorActionConfig {
  /// Params needed to configure the actions in the format of
  /// String-to-String (Key, Value) pairs. Contains connection
  /// credentials and configuration for the action connector.
  final pulumi.Input<Map<String, String>?>? actionParams;
  /// Whether to create a BAP (Business Application Platform) connection
  /// for this action connector.
  final pulumi.Input<bool?>? createBapConnection;
  /// (Output)
  /// Whether the action connector is fully configured. Set by the system
  /// after the action configuration is validated.
  final pulumi.Input<bool?>? isActionConfigured;

  /// Creates a new [DataConnectorActionConfig].
  /// [actionParams] Params needed to configure the actions in the format of
  /// [createBapConnection] Whether to create a BAP (Business Application Platform) connection
  /// [isActionConfigured] (Output)
  const DataConnectorActionConfig({
    this.actionParams,
    this.createBapConnection,
    this.isActionConfigured,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionParams': ?actionParams,
      'createBapConnection': ?createBapConnection,
      'isActionConfigured': ?isActionConfigured,
    };
  }

  factory DataConnectorActionConfig.fromMap(Map<String, dynamic> map) {
    return DataConnectorActionConfig(
      actionParams: (() { final guardedValue = map['actionParams']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      createBapConnection: (() { final guardedValue = map['createBapConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isActionConfigured: (() { final guardedValue = map['isActionConfigured']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
