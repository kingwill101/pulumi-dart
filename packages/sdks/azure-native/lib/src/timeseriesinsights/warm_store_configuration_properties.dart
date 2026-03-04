// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The warm store configuration provides the details to create a warm store cache that will retain a copy of the environment's data available for faster query.
class WarmStoreConfigurationProperties {
  /// ISO8601 timespan specifying the number of days the environment's events will be available for query from the warm store.
  final pulumi.Input<String> dataRetention;

  /// Creates a new [WarmStoreConfigurationProperties].
  /// [dataRetention] ISO8601 timespan specifying the number of days the environment's events will be available for query from the warm store.
  WarmStoreConfigurationProperties({required this.dataRetention});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'dataRetention': dataRetention};
  }

  factory WarmStoreConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return WarmStoreConfigurationProperties(
      dataRetention: pulumi.Input.fromValue(map['dataRetention'] as String),
    );
  }
}
