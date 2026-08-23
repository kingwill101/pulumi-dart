// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SubscriptionCloudStorageConfigTextConfig {
  /// (Output)
  /// Output only. Placeholder to allow the empty textConfig block.
  final pulumi.Input<String>? state;

  /// Creates a new [SubscriptionCloudStorageConfigTextConfig].
  /// [state] (Output)
  const SubscriptionCloudStorageConfigTextConfig({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?state,
    };
  }

  factory SubscriptionCloudStorageConfigTextConfig.fromMap(Map<String, dynamic> map) {
    return SubscriptionCloudStorageConfigTextConfig(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
