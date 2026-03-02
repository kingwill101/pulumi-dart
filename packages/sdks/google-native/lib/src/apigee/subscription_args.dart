// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigee_v1_subscription_args_doc}
/// The set of arguments for Subscription.
/// {@endtemplate}
/// {@macro pulumi_apigee_v1_subscription_args_doc}
class SubscriptionArgs {
  /// Name of the API product for which the developer is purchasing a subscription.
  final pulumi.Input<String>? apiproduct;
  final pulumi.Input<String> developerId;
  /// Time when the API product subscription ends in milliseconds since epoch.
  final pulumi.Input<String>? endTime;
  final pulumi.Input<String> organizationId;
  /// Time when the API product subscription starts in milliseconds since epoch.
  final pulumi.Input<String>? startTime;

  /// Creates a new [SubscriptionArgs].
  /// [apiproduct] Name of the API product for which the developer is purchasing a subscription.
  /// [developerId] Required.
  /// [endTime] Time when the API product subscription ends in milliseconds since epoch.
  /// [organizationId] Required.
  /// [startTime] Time when the API product subscription starts in milliseconds since epoch.
  SubscriptionArgs({
    this.apiproduct,
    required this.developerId,
    this.endTime,
    required this.organizationId,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiproduct': ?apiproduct,
      'developerId': developerId,
      'endTime': ?endTime,
      'organizationId': organizationId,
      'startTime': ?startTime,
    };
  }

  factory SubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionArgs(
      apiproduct: map['apiproduct'] == null ? null : (map['apiproduct'] as String).input(),
      developerId: (map['developerId'] as String).input(),
      endTime: map['endTime'] == null ? null : (map['endTime'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
      startTime: map['startTime'] == null ? null : (map['startTime'] as String).input(),
    );
  }
}

