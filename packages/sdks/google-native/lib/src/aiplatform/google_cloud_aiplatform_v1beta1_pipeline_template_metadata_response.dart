// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Pipeline template metadata if PipelineJob.template_uri is from supported template registry. Currently, the only supported registry is Artifact Registry.
class GoogleCloudAiplatformV1beta1PipelineTemplateMetadataResponse {
  /// The version_name in artifact registry. Will always be presented in output if the PipelineJob.template_uri is from supported template registry. Format is "sha256:abcdef123456...".
  final pulumi.Input<String> version;

  /// Creates a new [GoogleCloudAiplatformV1beta1PipelineTemplateMetadataResponse].
  /// [version] The version_name in artifact registry. Will always be presented in output if the PipelineJob.template_uri is from supported template registry. Format is "sha256:abcdef123456...".
  GoogleCloudAiplatformV1beta1PipelineTemplateMetadataResponse({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'version': version};
  }

  factory GoogleCloudAiplatformV1beta1PipelineTemplateMetadataResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1PipelineTemplateMetadataResponse(
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
