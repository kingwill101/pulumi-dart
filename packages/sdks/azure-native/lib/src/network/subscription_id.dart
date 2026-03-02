// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionId {
  /// Subscription id in the ARM id format.
  final pulumi.Input<String>? id;

  /// Creates a new [SubscriptionId].
  /// [id] Subscription id in the ARM id format.
  SubscriptionId({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory SubscriptionId.fromMap(Map<String, dynamic> map) {
    return SubscriptionId(
      id: map['id'] == null ? null : (map['id']! as String).input(),
    );
  }
}

