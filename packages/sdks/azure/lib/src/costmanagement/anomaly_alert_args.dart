// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_anomaly_alert_anomaly_alert_args_doc}
/// The set of arguments for AnomalyAlert.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_anomaly_alert_anomaly_alert_args_doc}
class AnomalyAlertArgs {
  /// The display name which should be used for this Cost Anomaly Alert.
  final pulumi.Input<String> displayName;
  /// Specifies a list of email addresses which the Anomaly Alerts are send to.
  final pulumi.Input<List<String>> emailAddresses;
  /// The email subject of the Cost Anomaly Alerts. Maximum length of the subject is 70.
  final pulumi.Input<String> emailSubject;
  /// The message of the Cost Anomaly Alert. Maximum length of the message is 250.
  final pulumi.Input<String>? message;
  /// The name which should be used for this Cost Anomaly Alert. Changing this forces a new resource to be created. The name can contain only lowercase letters, numbers and hyphens.
  final pulumi.Input<String>? name;
  /// The email address of the point of contact that should get the unsubscribe requests and notification emails.
  final pulumi.Input<String>? notificationEmail;
  /// The ID of the Subscription this Cost Anomaly Alert is scoped to. Changing this forces a new resource to be created. When not supplied this defaults to the subscription configured in the provider.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [AnomalyAlertArgs].
  /// [displayName] The display name which should be used for this Cost Anomaly Alert.
  /// [emailAddresses] Specifies a list of email addresses which the Anomaly Alerts are send to.
  /// [emailSubject] The email subject of the Cost Anomaly Alerts. Maximum length of the subject is 70.
  /// [message] The message of the Cost Anomaly Alert. Maximum length of the message is 250.
  /// [name] The name which should be used for this Cost Anomaly Alert. Changing this forces a new resource to be created. The name can contain only lowercase letters, numbers and hyphens.
  /// [notificationEmail] The email address of the point of contact that should get the unsubscribe requests and notification emails.
  /// [subscriptionId] The ID of the Subscription this Cost Anomaly Alert is scoped to. Changing this forces a new resource to be created. When not supplied this defaults to the subscription configured in the provider.
  AnomalyAlertArgs({
    required this.displayName,
    required this.emailAddresses,
    required this.emailSubject,
    this.message,
    this.name,
    this.notificationEmail,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'emailAddresses': emailAddresses,
      'emailSubject': emailSubject,
      'message': ?message,
      'name': ?name,
      'notificationEmail': ?notificationEmail,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory AnomalyAlertArgs.fromMap(Map<String, dynamic> map) {
    return AnomalyAlertArgs(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      emailAddresses: pulumi.Input.fromValue((map['emailAddresses'] as List).cast<String>()),
      emailSubject: pulumi.Input.fromValue(map['emailSubject'] as String),
      message: (() { final guardedValue = map['message']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notificationEmail: (() { final guardedValue = map['notificationEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

