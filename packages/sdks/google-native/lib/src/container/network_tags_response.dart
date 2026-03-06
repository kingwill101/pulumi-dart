// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Collection of Compute Engine network tags that can be applied to a node's underlying VM instance.
class NetworkTagsResponse {
  /// List of network tags.
  final pulumi.Input<List<String>> tags;

  /// Creates a new [NetworkTagsResponse].
  /// [tags] List of network tags.
  const NetworkTagsResponse({
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': tags,
    };
  }

  factory NetworkTagsResponse.fromMap(Map<String, dynamic> map) {
    return NetworkTagsResponse(
      tags: pulumi.Input.fromValue((map['tags'] as List).cast<String>()),
    );
  }
}

