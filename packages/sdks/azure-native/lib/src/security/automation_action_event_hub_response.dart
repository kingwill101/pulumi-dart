// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The target Event Hub to which event data will be exported. To learn more about Microsoft Defender for Cloud continuous export capabilities, visit https://aka.ms/ASCExportLearnMore
class AutomationActionEventHubResponse {
  /// The type of the action that will be triggered by the Automation
  /// Expected value is 'EventHub'.
  final pulumi.Input<String> actionType;

  /// The target Event Hub connection string (it will not be included in any response).
  final pulumi.Input<String>? connectionString;

  /// The target Event Hub Azure Resource ID.
  final pulumi.Input<String>? eventHubResourceId;

  /// Indicates whether the trusted service is enabled or not.
  final pulumi.Input<bool>? isTrustedServiceEnabled;

  /// The target Event Hub SAS policy name.
  final pulumi.Input<String> sasPolicyName;

  /// Creates a new [AutomationActionEventHubResponse].
  /// [actionType] The type of the action that will be triggered by the Automation
  /// [connectionString] The target Event Hub connection string (it will not be included in any response).
  /// [eventHubResourceId] The target Event Hub Azure Resource ID.
  /// [isTrustedServiceEnabled] Indicates whether the trusted service is enabled or not.
  /// [sasPolicyName] The target Event Hub SAS policy name.
  AutomationActionEventHubResponse({
    required this.actionType,
    this.connectionString,
    this.eventHubResourceId,
    this.isTrustedServiceEnabled,
    required this.sasPolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionType': actionType,
      'connectionString': ?connectionString,
      'eventHubResourceId': ?eventHubResourceId,
      'isTrustedServiceEnabled': ?isTrustedServiceEnabled,
      'sasPolicyName': sasPolicyName,
    };
  }

  factory AutomationActionEventHubResponse.fromMap(Map<String, dynamic> map) {
    return AutomationActionEventHubResponse(
      actionType: pulumi.Input.fromValue(map['actionType'] as String),
      connectionString: (() {
        final guardedValue = map['connectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      eventHubResourceId: (() {
        final guardedValue = map['eventHubResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isTrustedServiceEnabled: (() {
        final guardedValue = map['isTrustedServiceEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sasPolicyName: pulumi.Input.fromValue(map['sasPolicyName'] as String),
    );
  }
}
