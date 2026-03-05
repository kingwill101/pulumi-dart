// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRemoteImage.
class GetRemoteImageResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The name of the Docker image, including any tags or SHA256 repo digests.
  final String name;
  /// The image sha256 digest in the form of `repo[:tag]@sha256:&lt;hash&gt;`. It may be empty in the edge case where the local image was pulled from a repo, tagged locally, and then referred to in the data source by that local name/tag.
  final String repoDigest;

  /// Creates a new [GetRemoteImageResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the Docker image, including any tags or SHA256 repo digests.
  /// [repoDigest] The image sha256 digest in the form of `repo[:tag]@sha256:&lt;hash&gt;`. It may be empty in the edge case where the local image was pulled from a repo, tagged locally, and then referred to in the data source by that local name/tag.
  GetRemoteImageResult({
    required this.id,
    required this.name,
    required this.repoDigest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'repoDigest': repoDigest,
    };
  }

  factory GetRemoteImageResult.fromMap(Map<String, dynamic> map) {
    return GetRemoteImageResult(
      id: map['id'] as String,
      name: map['name'] as String,
      repoDigest: map['repoDigest'] as String,
    );
  }
}

