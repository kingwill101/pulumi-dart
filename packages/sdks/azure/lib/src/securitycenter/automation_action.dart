// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutomationAction {
  /// A connection string to send data to the target Event Hub namespace, this should include a key with send permissions.
  ///
  /// &gt; **Note:** `connectionString` is required when `type` is `EventHub`.
  final pulumi.Input<String>? connectionString;
  /// The resource id of the target Logic App, Event Hub namespace or Log Analytics workspace.
  final pulumi.Input<String> resourceId;
  /// The callback URL to trigger the Logic App that will receive and process data sent by this automation. This can be found in the Azure Portal under "See trigger history"
  ///
  /// &gt; **Note:** `triggerUrl` is required when `type` is `LogicApp`.
  final pulumi.Input<String>? triggerUrl;
  /// Type of Azure resource to send data to. Possible values are `EventHub`, `LogicApp` and `Workspace`.
  final pulumi.Input<String>? type;

  /// Creates a new [AutomationAction].
  /// [connectionString] A connection string to send data to the target Event Hub namespace, this should include a key with send permissions.
  /// [resourceId] The resource id of the target Logic App, Event Hub namespace or Log Analytics workspace.
  /// [triggerUrl] The callback URL to trigger the Logic App that will receive and process data sent by this automation. This can be found in the Azure Portal under "See trigger history"
  /// [type] Type of Azure resource to send data to. Possible values are `EventHub`, `LogicApp` and `Workspace`.
  const AutomationAction({
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
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      triggerUrl: (() { final guardedValue = map['triggerUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
