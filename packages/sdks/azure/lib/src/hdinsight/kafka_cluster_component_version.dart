// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KafkaClusterComponentVersion {
  /// The version of Kafka which should be used for this HDInsight Kafka Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> kafka;

  /// Creates a new [KafkaClusterComponentVersion].
  /// [kafka] The version of Kafka which should be used for this HDInsight Kafka Cluster. Changing this forces a new resource to be created.
  KafkaClusterComponentVersion({required this.kafka});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kafka': kafka};
  }

  factory KafkaClusterComponentVersion.fromMap(Map<String, dynamic> map) {
    return KafkaClusterComponentVersion(
      kafka: pulumi.Input.fromValue(map['kafka'] as String),
    );
  }
}
