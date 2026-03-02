// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Collection of Compute Engine network tags that can be applied to a node's underlying VM instance. (See `tags` field in [`NodeConfig`](/kubernetes-engine/docs/reference/rest/v1/NodeConfig)).
class NetworkTagsResponseContainerV1beta1 {
  /// List of network tags.
  final pulumi.Input<List<String>> tags;

  /// Creates a new [NetworkTagsResponseContainerV1beta1].
  /// [tags] List of network tags.
  NetworkTagsResponseContainerV1beta1({
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': tags,
    };
  }

  factory NetworkTagsResponseContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkTagsResponseContainerV1beta1(
      tags: ((map['tags'] as List).cast<String>()).input(),
    );
  }
}

