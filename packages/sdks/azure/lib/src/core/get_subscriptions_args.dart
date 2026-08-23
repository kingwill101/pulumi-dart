// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_get_subscriptions_get_subscriptions_args_doc}
/// Arguments for getSubscriptions.
/// {@endtemplate}
/// {@macro pulumi_core_get_subscriptions_get_subscriptions_args_doc}
class GetSubscriptionsArgs {
  /// A case-insensitive value which must be contained within the `displayName` field, used to filter the results
  final pulumi.Input<String>? displayNameContains;
  /// A case-insensitive prefix which can be used to filter on the `displayName` field
  final pulumi.Input<String>? displayNamePrefix;

  /// Creates a new [GetSubscriptionsArgs].
  /// [displayNameContains] A case-insensitive value which must be contained within the `displayName` field, used to filter the results
  /// [displayNamePrefix] A case-insensitive prefix which can be used to filter on the `displayName` field
  const GetSubscriptionsArgs({
    this.displayNameContains,
    this.displayNamePrefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayNameContains': ?displayNameContains,
      'displayNamePrefix': ?displayNamePrefix,
    };
  }

  factory GetSubscriptionsArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionsArgs(
      displayNameContains: (() { final guardedValue = map['displayNameContains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayNamePrefix: (() { final guardedValue = map['displayNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
