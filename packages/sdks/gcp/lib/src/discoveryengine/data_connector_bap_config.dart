// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataConnectorBapConfig {
  /// The list of enabled actions for this connector. Supported
  /// values include: `createIssue`, `updateIssue`,
  /// `changeIssueStatus`, `createComment`, `updateComment`,
  /// `uploadAttachment`.
  final pulumi.Input<List<String>?>? enabledActions;
  /// The connector modes supported by the BAP configuration.
  /// The possible values include: `ACTIONS`.
  final pulumi.Input<List<String>?>? supportedConnectorModes;

  /// Creates a new [DataConnectorBapConfig].
  /// [enabledActions] The list of enabled actions for this connector. Supported
  /// [supportedConnectorModes] The connector modes supported by the BAP configuration.
  const DataConnectorBapConfig({
    this.enabledActions,
    this.supportedConnectorModes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabledActions': ?enabledActions,
      'supportedConnectorModes': ?supportedConnectorModes,
    };
  }

  factory DataConnectorBapConfig.fromMap(Map<String, dynamic> map) {
    return DataConnectorBapConfig(
      enabledActions: (() { final guardedValue = map['enabledActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      supportedConnectorModes: (() { final guardedValue = map['supportedConnectorModes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
