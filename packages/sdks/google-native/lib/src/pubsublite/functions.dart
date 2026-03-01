import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_args.dart';
import 'get_reservation_result.dart';
import 'get_subscription_args.dart';
import 'get_subscription_result.dart';
import 'get_topic_args.dart';
import 'get_topic_result.dart';

/// Returns the reservation configuration.
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsublite_v1_get_reservation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReservationResult> getReservation(
  GetReservationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsublite/v1:getReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationResult.fromMap(result);
}

/// Returns the subscription configuration.
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsublite_v1_get_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionResult> getSubscription(
  GetSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsublite/v1:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult.fromMap(result);
}

/// Returns the topic configuration.
/// [args] Arguments passed to this invoke. {@macro pulumi_pubsublite_v1_get_topic_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTopicResult> getTopic(
  GetTopicArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:pubsublite/v1:getTopic',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTopicResult.fromMap(result);
}
