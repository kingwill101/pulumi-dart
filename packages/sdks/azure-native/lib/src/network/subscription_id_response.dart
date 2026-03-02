// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionIdResponse {
  /// Subscription id in the ARM id format.
  final pulumi.Input<String>? id;

  /// Creates a new [SubscriptionIdResponse].
  /// [id] Subscription id in the ARM id format.
  SubscriptionIdResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SubscriptionIdResponse.fromMap(Map<String, dynamic> map) {
    return SubscriptionIdResponse(
      id: map['id'] == null ? null : (map['id'] as String).input(),
    );
  }
}

