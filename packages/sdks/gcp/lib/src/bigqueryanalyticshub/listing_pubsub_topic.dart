// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListingPubsubTopic {
  /// Region hint on where the data might be published. Data affinity regions are modifiable.
  /// See https://cloud.google.com/about/locations for full listing of possible Cloud regions.
  final pulumi.Input<List<String>?>? dataAffinityRegions;
  /// Resource name of the Pub/Sub topic source for this listing. e.g. projects/myproject/topics/topicId
  final pulumi.Input<String> topic;

  /// Creates a new [ListingPubsubTopic].
  /// [dataAffinityRegions] Region hint on where the data might be published. Data affinity regions are modifiable.
  /// [topic] Resource name of the Pub/Sub topic source for this listing. e.g. projects/myproject/topics/topicId
  const ListingPubsubTopic({
    this.dataAffinityRegions,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataAffinityRegions': ?dataAffinityRegions,
      'topic': topic,
    };
  }

  factory ListingPubsubTopic.fromMap(Map<String, dynamic> map) {
    return ListingPubsubTopic(
      dataAffinityRegions: (() { final guardedValue = map['dataAffinityRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}
