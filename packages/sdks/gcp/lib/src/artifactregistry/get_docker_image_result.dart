// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDockerImage.
class GetDockerImageResult {
  /// The time, as a RFC 3339 string, this image was built.
  final String? buildTime;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? imageName;
  /// Calculated size of the image in bytes.
  final String? imageSizeBytes;
  final String? location;
  /// Media type of this image, e.g. `application/vnd.docker.distribution.manifest.v2+json`.
  final String? mediaType;
  /// The fully qualified name of the fetched image.  This name has the form: `projects/{{project}}/locations/{{location}}/repository/{{repository_id}}/dockerImages/{{docker_image}}`. For example,
  /// ```
  /// projects/test-project/locations/us-west4/repositories/test-repo/dockerImages/nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf
  /// ```
  final String? name;
  final String? project;
  final String? repositoryId;
  /// The URI to access the image.  For example,
  /// ```
  /// us-west4-docker.pkg.dev/test-project/test-repo/nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf
  /// ```
  final String? selfLink;
  /// A list of all tags associated with the image.
  final List<String>? tags;
  /// The time, as a RFC 3339 string, this image was updated.
  final String? updateTime;
  /// The time, as a RFC 3339 string, the image was uploaded. For example, `2014-10-02T15:01:23.045123456Z`.
  final String? uploadTime;

  /// Creates a new [GetDockerImageResult].
  /// [buildTime] The time, as a RFC 3339 string, this image was built.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageName] Optional.
  /// [imageSizeBytes] Calculated size of the image in bytes.
  /// [location] Optional.
  /// [mediaType] Media type of this image, e.g. `application/vnd.docker.distribution.manifest.v2+json`.
  /// [name] The fully qualified name of the fetched image.  This name has the form: `projects/{{project}}/locations/{{location}}/repository/{{repository_id}}/dockerImages/{{docker_image}}`. For example,
  /// [project] Optional.
  /// [repositoryId] Optional.
  /// [selfLink] The URI to access the image.  For example,
  /// [tags] A list of all tags associated with the image.
  /// [updateTime] The time, as a RFC 3339 string, this image was updated.
  /// [uploadTime] The time, as a RFC 3339 string, the image was uploaded. For example, `2014-10-02T15:01:23.045123456Z`.
  const GetDockerImageResult({
    this.buildTime,
    this.id,
    this.imageName,
    this.imageSizeBytes,
    this.location,
    this.mediaType,
    this.name,
    this.project,
    this.repositoryId,
    this.selfLink,
    this.tags,
    this.updateTime,
    this.uploadTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildTime': ?buildTime,
      'id': ?id,
      'imageName': ?imageName,
      'imageSizeBytes': ?imageSizeBytes,
      'location': ?location,
      'mediaType': ?mediaType,
      'name': ?name,
      'project': ?project,
      'repositoryId': ?repositoryId,
      'selfLink': ?selfLink,
      'tags': ?tags,
      'updateTime': ?updateTime,
      'uploadTime': ?uploadTime,
    };
  }

  factory GetDockerImageResult.fromMap(Map<String, dynamic> map) {
    return GetDockerImageResult(
      buildTime: (() { final guardedValue = map['buildTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageName: (() { final guardedValue = map['imageName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageSizeBytes: (() { final guardedValue = map['imageSizeBytes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mediaType: (() { final guardedValue = map['mediaType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositoryId: (() { final guardedValue = map['repositoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uploadTime: (() { final guardedValue = map['uploadTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
