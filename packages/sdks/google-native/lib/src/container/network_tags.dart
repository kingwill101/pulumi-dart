// ignore_for_file: unused_element, unnecessary_cast


/// Collection of Compute Engine network tags that can be applied to a node's underlying VM instance.
class NetworkTags {
  /// List of network tags.
  final List<String>? tags;

  /// Creates a new [NetworkTags].
  /// [tags] List of network tags.
  NetworkTags({
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tags': ?tags,
    };
  }

  factory NetworkTags.fromMap(Map<String, dynamic> map) {
    return NetworkTags(
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}

