// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an SDK harness container for executing Dataflow pipelines.
class SdkHarnessContainerImageResponse {
  /// The set of capabilities enumerated in the above Environment proto. See also [beam_runner_api.proto](https://github.com/apache/beam/blob/master/model/pipeline/src/main/proto/org/apache/beam/model/pipeline/v1/beam_runner_api.proto)
  final pulumi.Input<List<String>> capabilities;
  /// A docker container image that resides in Google Container Registry.
  final pulumi.Input<String> containerImage;
  /// Environment ID for the Beam runner API proto Environment that corresponds to the current SDK Harness.
  final pulumi.Input<String> environmentId;
  /// If true, recommends the Dataflow service to use only one core per SDK container instance with this image. If false (or unset) recommends using more than one core per SDK container instance with this image for efficiency. Note that Dataflow service may choose to override this property if needed.
  final pulumi.Input<bool> useSingleCorePerContainer;

  /// Creates a new [SdkHarnessContainerImageResponse].
  /// [capabilities] The set of capabilities enumerated in the above Environment proto. See also [beam_runner_api.proto](https://github.com/apache/beam/blob/master/model/pipeline/src/main/proto/org/apache/beam/model/pipeline/v1/beam_runner_api.proto)
  /// [containerImage] A docker container image that resides in Google Container Registry.
  /// [environmentId] Environment ID for the Beam runner API proto Environment that corresponds to the current SDK Harness.
  /// [useSingleCorePerContainer] If true, recommends the Dataflow service to use only one core per SDK container instance with this image. If false (or unset) recommends using more than one core per SDK container instance with this image for efficiency. Note that Dataflow service may choose to override this property if needed.
  SdkHarnessContainerImageResponse({
    required this.capabilities,
    required this.containerImage,
    required this.environmentId,
    required this.useSingleCorePerContainer,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': capabilities,
      'containerImage': containerImage,
      'environmentId': environmentId,
      'useSingleCorePerContainer': useSingleCorePerContainer,
    };
  }

  factory SdkHarnessContainerImageResponse.fromMap(Map<String, dynamic> map) {
    return SdkHarnessContainerImageResponse(
      capabilities: pulumi.Input.fromValue((map['capabilities'] as List).cast<String>()),
      containerImage: pulumi.Input.fromValue(map['containerImage'] as String),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      useSingleCorePerContainer: pulumi.Input.fromValue(map['useSingleCorePerContainer'] as bool),
    );
  }
}

