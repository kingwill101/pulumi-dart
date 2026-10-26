// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSubscription.
class GetSubscriptionResult {
  /// Represents that, if subscription will renew or end when the term ends.
  final bool? autoRenewEnabled;
  /// Create time of the subscription.
  final String? createTime;
  /// End time of the subscription.
  final String? endTime;
  /// Unique resource name of the Subscription. The name is ignored when creating a subscription.
  final String? name;
  /// Optional. Number of seats in the subscription.
  final String? seatCount;
  /// SKU of subscription.
  final String? sku;
  /// Start time of the subscription.
  final String? startTime;
  /// The current state of the subscription.
  final String? state;
  /// Type of subscription.
  final String? type;

  /// Creates a new [GetSubscriptionResult].
  /// [autoRenewEnabled] Represents that, if subscription will renew or end when the term ends.
  /// [createTime] Create time of the subscription.
  /// [endTime] End time of the subscription.
  /// [name] Unique resource name of the Subscription. The name is ignored when creating a subscription.
  /// [seatCount] Optional. Number of seats in the subscription.
  /// [sku] SKU of subscription.
  /// [startTime] Start time of the subscription.
  /// [state] The current state of the subscription.
  /// [type] Type of subscription.
  const GetSubscriptionResult({
    this.autoRenewEnabled,
    this.createTime,
    this.endTime,
    this.name,
    this.seatCount,
    this.sku,
    this.startTime,
    this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenewEnabled': ?autoRenewEnabled,
      'createTime': ?createTime,
      'endTime': ?endTime,
      'name': ?name,
      'seatCount': ?seatCount,
      'sku': ?sku,
      'startTime': ?startTime,
      'state': ?state,
      'type': ?type,
    };
  }

  factory GetSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionResult(
      autoRenewEnabled: (() { final guardedValue = map['autoRenewEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      seatCount: (() { final guardedValue = map['seatCount']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
