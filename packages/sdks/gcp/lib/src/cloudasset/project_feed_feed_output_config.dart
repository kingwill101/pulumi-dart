// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_feed_feed_output_config_pubsub_destination.dart';

class ProjectFeedFeedOutputConfig {
  /// Destination on Cloud Pubsub.
  /// Structure is documented below.
  final pulumi.Input<ProjectFeedFeedOutputConfigPubsubDestination> pubsubDestination;

  /// Creates a new [ProjectFeedFeedOutputConfig].
  /// [pubsubDestination] Destination on Cloud Pubsub.
  const ProjectFeedFeedOutputConfig({
    required this.pubsubDestination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pubsubDestination': pulumi.Input.mapInputValue<ProjectFeedFeedOutputConfigPubsubDestination, Map<String, dynamic>>(pubsubDestination, (value) => value.toMap()),
    };
  }

  factory ProjectFeedFeedOutputConfig.fromMap(Map<String, dynamic> map) {
    return ProjectFeedFeedOutputConfig(
      pubsubDestination: pulumi.Input.fromValue(ProjectFeedFeedOutputConfigPubsubDestination.fromMap((map['pubsubDestination']! as Map).cast<String, dynamic>())),
    );
  }
}

