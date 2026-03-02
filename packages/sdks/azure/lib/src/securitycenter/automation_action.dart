// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationAction {
  /// A connection string to send data to the target Event Hub namespace, this should include a key with send permissions.
  ///
  /// > **Note:** `connection_string` is required when `type` is `EventHub`.
  final pulumi.Input<String>? connectionString;
  /// The resource id of the target Logic App, Event Hub namespace or Log Analytics workspace.
  final pulumi.Input<String> resourceId;
  /// The callback URL to trigger the Logic App that will receive and process data sent by this automation. This can be found in the Azure Portal under "See trigger history"
  ///
  /// > **Note:** `trigger_url` is required when `type` is `LogicApp`.
  final pulumi.Input<String>? triggerUrl;
  /// Type of Azure resource to send data to. Possible values are `EventHub`, `LogicApp` and `Workspace`.
  final pulumi.Input<String>? type;

  /// Creates a new [AutomationAction].
  /// [connectionString] A connection string to send data to the target Event Hub namespace, this should include a key with send permissions.
  /// [resourceId] The resource id of the target Logic App, Event Hub namespace or Log Analytics workspace.
  /// [triggerUrl] The callback URL to trigger the Logic App that will receive and process data sent by this automation. This can be found in the Azure Portal under "See trigger history"
  /// [type] Type of Azure resource to send data to. Possible values are `EventHub`, `LogicApp` and `Workspace`.
  AutomationAction({
    this.connectionString,
    required this.resourceId,
    this.triggerUrl,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': ?connectionString,
      'resourceId': resourceId,
      'triggerUrl': ?triggerUrl,
      'type': ?type,
    };
  }

  factory AutomationAction.fromMap(Map<String, dynamic> map) {
    return AutomationAction(
      connectionString: map['connectionString'] == null ? null : (map['connectionString']! as String).input(),
      resourceId: (map['resourceId'] as String).input(),
      triggerUrl: map['triggerUrl'] == null ? null : (map['triggerUrl']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

