// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_get_subscriptions_get_subscriptions_args_doc}
/// Arguments for getSubscriptions.
/// {@endtemplate}
/// {@macro pulumi_core_get_subscriptions_get_subscriptions_args_doc}
class GetSubscriptionsArgs {
  /// A case-insensitive value which must be contained within the `display_name` field, used to filter the results
  final pulumi.Input<String>? displayNameContains;
  /// A case-insensitive prefix which can be used to filter on the `display_name` field
  final pulumi.Input<String>? displayNamePrefix;

  /// Creates a new [GetSubscriptionsArgs].
  /// [displayNameContains] A case-insensitive value which must be contained within the `display_name` field, used to filter the results
  /// [displayNamePrefix] A case-insensitive prefix which can be used to filter on the `display_name` field
  GetSubscriptionsArgs({
    pulumi.Output<String>? displayNameContains,
    pulumi.Output<String>? displayNamePrefix,
  }) :
      displayNameContains = pulumi.Input.asOptionalInput<String>(displayNameContains),
      displayNamePrefix = pulumi.Input.asOptionalInput<String>(displayNamePrefix);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayNameContains': ?displayNameContains,
      'displayNamePrefix': ?displayNamePrefix,
    };
  }

  factory GetSubscriptionsArgs.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionsArgs(
      displayNameContains: map['displayNameContains'] == null ? null : pulumi.Output.create<String>(map['displayNameContains'] as String),
      displayNamePrefix: map['displayNamePrefix'] == null ? null : pulumi.Output.create<String>(map['displayNamePrefix'] as String),
    );
  }
}

