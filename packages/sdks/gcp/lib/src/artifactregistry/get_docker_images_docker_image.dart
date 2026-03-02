// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDockerImagesDockerImage {
  /// The time, as a RFC 3339 string, this image was built.
  final pulumi.Input<String> buildTime;
  /// Extracted short name of the image (last part of `name`, without tag or digest). For example, from `.../nginx@sha256:...` → `nginx`.
  final pulumi.Input<String> imageName;
  /// Calculated size of the image in bytes.
  final pulumi.Input<String> imageSizeBytes;
  /// Media type of this image, e.g. `application/vnd.docker.distribution.manifest.v2+json`.
  final pulumi.Input<String> mediaType;
  /// The fully qualified name of the fetched image.  This name has the form: `projects/{{project}}/locations/{{location}}/repository/{{repository_id}}/dockerImages/{{docker_image}}`. For example, `projects/test-project/locations/us-west4/repositories/test-repo/dockerImages/nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf`
  final pulumi.Input<String> name;
  /// The URI to access the image.  For example, `us-west4-docker.pkg.dev/test-project/test-repo/nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf`
  final pulumi.Input<String> selfLink;
  /// A list of all tags associated with the image.
  final pulumi.Input<List<String>> tags;
  /// The time, as a RFC 3339 string, this image was updated.
  final pulumi.Input<String> updateTime;
  /// The time, as a RFC 3339 string, the image was uploaded. For example, `2014-10-02T15:01:23.045123456Z`.
  final pulumi.Input<String> uploadTime;

  /// Creates a new [GetDockerImagesDockerImage].
  /// [buildTime] The time, as a RFC 3339 string, this image was built.
  /// [imageName] Extracted short name of the image (last part of `name`, without tag or digest). For example, from `.../nginx@sha256:...` → `nginx`.
  /// [imageSizeBytes] Calculated size of the image in bytes.
  /// [mediaType] Media type of this image, e.g. `application/vnd.docker.distribution.manifest.v2+json`.
  /// [name] The fully qualified name of the fetched image.  This name has the form: `projects/{{project}}/locations/{{location}}/repository/{{repository_id}}/dockerImages/{{docker_image}}`. For example, `projects/test-project/locations/us-west4/repositories/test-repo/dockerImages/nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf`
  /// [selfLink] The URI to access the image.  For example, `us-west4-docker.pkg.dev/test-project/test-repo/nginx@sha256:e9954c1fc875017be1c3e36eca16be2d9e9bccc4bf072163515467d6a823c7cf`
  /// [tags] A list of all tags associated with the image.
  /// [updateTime] The time, as a RFC 3339 string, this image was updated.
  /// [uploadTime] The time, as a RFC 3339 string, the image was uploaded. For example, `2014-10-02T15:01:23.045123456Z`.
  GetDockerImagesDockerImage({
    required this.buildTime,
    required this.imageName,
    required this.imageSizeBytes,
    required this.mediaType,
    required this.name,
    required this.selfLink,
    required this.tags,
    required this.updateTime,
    required this.uploadTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildTime': buildTime,
      'imageName': imageName,
      'imageSizeBytes': imageSizeBytes,
      'mediaType': mediaType,
      'name': name,
      'selfLink': selfLink,
      'tags': tags,
      'updateTime': updateTime,
      'uploadTime': uploadTime,
    };
  }

  factory GetDockerImagesDockerImage.fromMap(Map<String, dynamic> map) {
    return GetDockerImagesDockerImage(
      buildTime: (map['buildTime'] as String).input(),
      imageName: (map['imageName'] as String).input(),
      imageSizeBytes: (map['imageSizeBytes'] as String).input(),
      mediaType: (map['mediaType'] as String).input(),
      name: (map['name'] as String).input(),
      selfLink: (map['selfLink'] as String).input(),
      tags: ((map['tags'] as List).cast<String>()).input(),
      updateTime: (map['updateTime'] as String).input(),
      uploadTime: (map['uploadTime'] as String).input(),
    );
  }
}

