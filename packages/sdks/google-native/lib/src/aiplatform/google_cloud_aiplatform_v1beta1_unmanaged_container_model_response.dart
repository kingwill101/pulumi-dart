// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_model_container_spec_response.dart';
import 'google_cloud_aiplatform_v1beta1_predict_schemata_response.dart';

/// Contains model information necessary to perform batch prediction without requiring a full model import.
class GoogleCloudAiplatformV1beta1UnmanagedContainerModelResponse {
  /// The path to the directory containing the Model artifact and any of its supporting files.
  final pulumi.Input<String> artifactUri;
  /// Input only. The specification of the container that is to be used when deploying this Model.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ModelContainerSpecResponse> containerSpec;
  /// Contains the schemata used in Model's predictions and explanations
  final pulumi.Input<GoogleCloudAiplatformV1beta1PredictSchemataResponse> predictSchemata;

  /// Creates a new [GoogleCloudAiplatformV1beta1UnmanagedContainerModelResponse].
  /// [artifactUri] The path to the directory containing the Model artifact and any of its supporting files.
  /// [containerSpec] Input only. The specification of the container that is to be used when deploying this Model.
  /// [predictSchemata] Contains the schemata used in Model's predictions and explanations
  const GoogleCloudAiplatformV1beta1UnmanagedContainerModelResponse({
    required this.artifactUri,
    required this.containerSpec,
    required this.predictSchemata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactUri': artifactUri,
      'containerSpec': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1ModelContainerSpecResponse, Map<String, dynamic>>(containerSpec, (value) => value.toMap()),
      'predictSchemata': pulumi.Input.mapInputValue<GoogleCloudAiplatformV1beta1PredictSchemataResponse, Map<String, dynamic>>(predictSchemata, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1UnmanagedContainerModelResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1UnmanagedContainerModelResponse(
      artifactUri: pulumi.Input.fromValue(map['artifactUri'] as String),
      containerSpec: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1ModelContainerSpecResponse.fromMap((map['containerSpec']! as Map).cast<String, dynamic>())),
      predictSchemata: pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1PredictSchemataResponse.fromMap((map['predictSchemata']! as Map).cast<String, dynamic>())),
    );
  }
}
