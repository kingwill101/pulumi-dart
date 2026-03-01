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
    pulumi.Output<String>? apiproduct,
    required pulumi.Output<String> developerId,
    pulumi.Output<String>? endTime,
    required pulumi.Output<String> organizationId,
    pulumi.Output<String>? startTime,
  }) :
      apiproduct = pulumi.Input.asOptionalInput<String>(apiproduct),
      developerId = pulumi.Input.asInput<String>(developerId),
      endTime = pulumi.Input.asOptionalInput<String>(endTime),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      startTime = pulumi.Input.asOptionalInput<String>(startTime);

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
      apiproduct: map['apiproduct'] == null ? null : pulumi.Output.create<String>(map['apiproduct'] as String),
      developerId: pulumi.Output.create<String>(map['developerId'] as String),
      endTime: map['endTime'] == null ? null : pulumi.Output.create<String>(map['endTime'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
      startTime: map['startTime'] == null ? null : pulumi.Output.create<String>(map['startTime'] as String),
    );
  }
}

