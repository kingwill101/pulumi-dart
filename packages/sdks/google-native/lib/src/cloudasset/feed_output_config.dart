// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pubsub_destination.dart';

/// Output configuration for asset feed destination.
class FeedOutputConfig {
  /// Destination on Pub/Sub.
  final pulumi.Input<PubsubDestination>? pubsubDestination;

  /// Creates a new [FeedOutputConfig].
  /// [pubsubDestination] Destination on Pub/Sub.
  const FeedOutputConfig({
    this.pubsubDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsubDestination': ?pulumi.Input.mapOptionalInputValue<PubsubDestination, Map<String, dynamic>>(pubsubDestination, (value) => value.toMap()),
    };
  }

  factory FeedOutputConfig.fromMap(Map<String, dynamic> map) {
    return FeedOutputConfig(
      pubsubDestination: (() { final guardedValue = map['pubsubDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PubsubDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
