// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The visibility list of the private link service.
class PrivateLinkServicePropertiesResponseVisibility {
  /// The list of subscriptions.
  final pulumi.Input<List<String>>? subscriptions;

  /// Creates a new [PrivateLinkServicePropertiesResponseVisibility].
  /// [subscriptions] The list of subscriptions.
  PrivateLinkServicePropertiesResponseVisibility({
    this.subscriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subscriptions': ?subscriptions,
    };
  }

  factory PrivateLinkServicePropertiesResponseVisibility.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServicePropertiesResponseVisibility(
      subscriptions: (() { final guardedValue = map['subscriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

