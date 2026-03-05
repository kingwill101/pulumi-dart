// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_feed_feed_output_config_pubsub_destination.dart';

class OrganizationFeedFeedOutputConfig {
  /// Destination on Cloud Pubsub.
  /// Structure is documented below.
  final pulumi.Input<OrganizationFeedFeedOutputConfigPubsubDestination> pubsubDestination;

  /// Creates a new [OrganizationFeedFeedOutputConfig].
  /// [pubsubDestination] Destination on Cloud Pubsub.
  OrganizationFeedFeedOutputConfig({
    required this.pubsubDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsubDestination': pulumi.Input.mapInputValue<OrganizationFeedFeedOutputConfigPubsubDestination, Map<String, dynamic>>(pubsubDestination, (value) => value.toMap()),
    };
  }

  factory OrganizationFeedFeedOutputConfig.fromMap(Map<String, dynamic> map) {
    return OrganizationFeedFeedOutputConfig(
      pubsubDestination: pulumi.Input.fromValue(OrganizationFeedFeedOutputConfigPubsubDestination.fromMap((map['pubsubDestination']! as Map).cast<String, dynamic>())),
    );
  }
}

