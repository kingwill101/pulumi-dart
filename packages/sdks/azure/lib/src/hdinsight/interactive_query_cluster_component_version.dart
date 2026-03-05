// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InteractiveQueryClusterComponentVersion {
  /// The version of Interactive Query which should be used for this HDInsight Interactive Query Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> interactiveHive;

  /// Creates a new [InteractiveQueryClusterComponentVersion].
  /// [interactiveHive] The version of Interactive Query which should be used for this HDInsight Interactive Query Cluster. Changing this forces a new resource to be created.
  InteractiveQueryClusterComponentVersion({
    required this.interactiveHive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interactiveHive': interactiveHive,
    };
  }

  factory InteractiveQueryClusterComponentVersion.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryClusterComponentVersion(
      interactiveHive: pulumi.Input.fromValue(map['interactiveHive'] as String),
    );
  }
}

