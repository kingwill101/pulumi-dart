// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AnomalyAlert resources.
class AnomalyAlertState {
  /// The display name which should be used for this Cost Anomaly Alert.
  final pulumi.Input<String>? displayName;
  /// Specifies a list of email addresses which the Anomaly Alerts are send to.
  final pulumi.Input<List<String>>? emailAddresses;
  /// The email subject of the Cost Anomaly Alerts. Maximum length of the subject is 70.
  final pulumi.Input<String>? emailSubject;
  /// The message of the Cost Anomaly Alert. Maximum length of the message is 250.
  final pulumi.Input<String>? message;
  /// The name which should be used for this Cost Anomaly Alert. Changing this forces a new resource to be created. The name can contain only lowercase letters, numbers and hyphens.
  final pulumi.Input<String>? name;
  /// The email address of the point of contact that should get the unsubscribe requests and notification emails.
  final pulumi.Input<String>? notificationEmail;
  /// The ID of the Subscription this Cost Anomaly Alert is scoped to. Changing this forces a new resource to be created. When not supplied this defaults to the subscription configured in the provider.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [AnomalyAlertState].
  /// [displayName] The display name which should be used for this Cost Anomaly Alert.
  /// [emailAddresses] Specifies a list of email addresses which the Anomaly Alerts are send to.
  /// [emailSubject] The email subject of the Cost Anomaly Alerts. Maximum length of the subject is 70.
  /// [message] The message of the Cost Anomaly Alert. Maximum length of the message is 250.
  /// [name] The name which should be used for this Cost Anomaly Alert. Changing this forces a new resource to be created. The name can contain only lowercase letters, numbers and hyphens.
  /// [notificationEmail] The email address of the point of contact that should get the unsubscribe requests and notification emails.
  /// [subscriptionId] The ID of the Subscription this Cost Anomaly Alert is scoped to. Changing this forces a new resource to be created. When not supplied this defaults to the subscription configured in the provider.
  AnomalyAlertState({
    this.displayName,
    this.emailAddresses,
    this.emailSubject,
    this.message,
    this.name,
    this.notificationEmail,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'emailAddresses': ?emailAddresses,
      'emailSubject': ?emailSubject,
      'message': ?message,
      'name': ?name,
      'notificationEmail': ?notificationEmail,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory AnomalyAlertState.fromMap(Map<String, dynamic> map) {
    return AnomalyAlertState(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      emailAddresses: map['emailAddresses'] == null ? null : ((map['emailAddresses']! as List).cast<String>()).input(),
      emailSubject: map['emailSubject'] == null ? null : (map['emailSubject']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      notificationEmail: map['notificationEmail'] == null ? null : (map['notificationEmail']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
    );
  }
}

