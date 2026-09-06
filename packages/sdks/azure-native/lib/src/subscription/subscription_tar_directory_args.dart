// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_directory_request_properties.dart';

/// {@template pulumi_subscription_subscription_tar_directory_args_doc}
/// The set of arguments for SubscriptionTarDirectory.
/// {@endtemplate}
/// {@macro pulumi_subscription_subscription_tar_directory_args_doc}
class SubscriptionTarDirectoryArgs {
  /// Target Directory request properties.
  final pulumi.Input<TargetDirectoryRequestProperties?>? properties;
  /// Subscription Id.
  final pulumi.Input<String?>? subscriptionId;

  /// Creates a new [SubscriptionTarDirectoryArgs].
  /// [properties] Target Directory request properties.
  /// [subscriptionId] Subscription Id.
  const SubscriptionTarDirectoryArgs({
    this.properties,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<TargetDirectoryRequestProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'subscriptionId': ?subscriptionId,
    };
  }

  factory SubscriptionTarDirectoryArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionTarDirectoryArgs(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TargetDirectoryRequestProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
