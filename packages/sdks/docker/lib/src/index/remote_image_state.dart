// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_image_build.dart';

/// Input properties used for looking up and filtering RemoteImage resources.
class RemoteImageState {
  final pulumi.Input<RemoteImageBuild>? build;
  /// If true, then the image is removed forcibly when the resource is destroyed.
  final pulumi.Input<bool>? forceRemove;
  /// The ID of the image (as seen when executing `docker inspect` on the image). Can be used to reference the image via its ID in other resources.
  final pulumi.Input<String>? imageId;
  /// If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker local storage on destroy operation.
  final pulumi.Input<bool>? keepLocally;
  /// The name of the Docker image, including any tags or SHA256 repo digests.
  final pulumi.Input<String>? name;
  /// The platform to use when pulling the image. Defaults to the platform of the current machine.
  final pulumi.Input<String>? platform;
  /// List of values which cause an image pull when changed. This is used to store the image digest from the registry when using the docker*registry*image.
  final pulumi.Input<List<String>>? pullTriggers;
  /// The image sha256 digest in the form of `repo[:tag]@sha256:<hash>`. This may not be populated when building an image, because it is read from the local Docker client and so may be available only when the image was either pulled from the repo or pushed to the repo (perhaps using `docker.RegistryImage`) in a previous run.
  final pulumi.Input<String>? repoDigest;
  /// A map of arbitrary strings that, when changed, will force the `docker.RemoteImage` resource to be replaced. This can be used to rebuild an image when contents of source code folders change
  final pulumi.Input<Map<String, String>>? triggers;

  /// Creates a new [RemoteImageState].
  /// [build] Optional.
  /// [forceRemove] If true, then the image is removed forcibly when the resource is destroyed.
  /// [imageId] The ID of the image (as seen when executing `docker inspect` on the image). Can be used to reference the image via its ID in other resources.
  /// [keepLocally] If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker local storage on destroy operation.
  /// [name] The name of the Docker image, including any tags or SHA256 repo digests.
  /// [platform] The platform to use when pulling the image. Defaults to the platform of the current machine.
  /// [pullTriggers] List of values which cause an image pull when changed. This is used to store the image digest from the registry when using the docker*registry*image.
  /// [repoDigest] The image sha256 digest in the form of `repo[:tag]@sha256:<hash>`. This may not be populated when building an image, because it is read from the local Docker client and so may be available only when the image was either pulled from the repo or pushed to the repo (perhaps using `docker.RegistryImage`) in a previous run.
  /// [triggers] A map of arbitrary strings that, when changed, will force the `docker.RemoteImage` resource to be replaced. This can be used to rebuild an image when contents of source code folders change
  RemoteImageState({
    this.build,
    this.forceRemove,
    this.imageId,
    this.keepLocally,
    this.name,
    this.platform,
    this.pullTriggers,
    this.repoDigest,
    this.triggers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'build': ?pulumi.Input.mapOptionalInputValue<RemoteImageBuild, Map<String, dynamic>>(build, (value) => value.toMap()),
      'forceRemove': ?forceRemove,
      'imageId': ?imageId,
      'keepLocally': ?keepLocally,
      'name': ?name,
      'platform': ?platform,
      'pullTriggers': ?pullTriggers,
      'repoDigest': ?repoDigest,
      'triggers': ?triggers,
    };
  }

  factory RemoteImageState.fromMap(Map<String, dynamic> map) {
    return RemoteImageState(
      build: map['build'] == null ? null : (RemoteImageBuild.fromMap((map['build'] as Map).cast<String, dynamic>())).input(),
      forceRemove: map['forceRemove'] == null ? null : (map['forceRemove'] as bool).input(),
      imageId: map['imageId'] == null ? null : (map['imageId'] as String).input(),
      keepLocally: map['keepLocally'] == null ? null : (map['keepLocally'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      platform: map['platform'] == null ? null : (map['platform'] as String).input(),
      pullTriggers: map['pullTriggers'] == null ? null : ((map['pullTriggers'] as List).cast<String>()).input(),
      repoDigest: map['repoDigest'] == null ? null : (map['repoDigest'] as String).input(),
      triggers: map['triggers'] == null ? null : ((map['triggers'] as Map).cast<String, String>()).input(),
    );
  }
}

