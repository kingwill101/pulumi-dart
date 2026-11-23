// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoogleApiSourceOrganizationSubscription {
  /// Enable org level subscription.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GoogleApiSourceOrganizationSubscription].
  /// [enabled] Enable org level subscription.
  const GoogleApiSourceOrganizationSubscription({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
    };
  }

  factory GoogleApiSourceOrganizationSubscription.fromMap(Map<String, dynamic> map) {
    return GoogleApiSourceOrganizationSubscription(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}
