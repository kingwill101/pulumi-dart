// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSubscriptionCloudStorageConfigTextConfig {
  /// Output only. Placeholder to allow the empty textConfig block.
  final pulumi.Input<String> state;

  /// Creates a new [GetSubscriptionCloudStorageConfigTextConfig].
  /// [state] Output only. Placeholder to allow the empty textConfig block.
  const GetSubscriptionCloudStorageConfigTextConfig({
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': state,
    };
  }

  factory GetSubscriptionCloudStorageConfigTextConfig.fromMap(Map<String, dynamic> map) {
    return GetSubscriptionCloudStorageConfigTextConfig(
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
