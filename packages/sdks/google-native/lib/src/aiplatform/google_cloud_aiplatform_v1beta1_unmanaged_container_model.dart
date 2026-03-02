// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_model_container_spec.dart';
import 'google_cloud_aiplatform_v1beta1_predict_schemata.dart';

/// Contains model information necessary to perform batch prediction without requiring a full model import.
class GoogleCloudAiplatformV1beta1UnmanagedContainerModel {
  /// The path to the directory containing the Model artifact and any of its supporting files.
  final pulumi.Input<String>? artifactUri;
  /// Input only. The specification of the container that is to be used when deploying this Model.
  final pulumi.Input<GoogleCloudAiplatformV1beta1ModelContainerSpec>? containerSpec;
  /// Contains the schemata used in Model's predictions and explanations
  final pulumi.Input<GoogleCloudAiplatformV1beta1PredictSchemata>? predictSchemata;

  /// Creates a new [GoogleCloudAiplatformV1beta1UnmanagedContainerModel].
  /// [artifactUri] The path to the directory containing the Model artifact and any of its supporting files.
  /// [containerSpec] Input only. The specification of the container that is to be used when deploying this Model.
  /// [predictSchemata] Contains the schemata used in Model's predictions and explanations
  GoogleCloudAiplatformV1beta1UnmanagedContainerModel({
    this.artifactUri,
    this.containerSpec,
    this.predictSchemata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactUri': ?artifactUri,
      'containerSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1ModelContainerSpec, Map<String, dynamic>>(containerSpec, (value) => value.toMap()),
      'predictSchemata': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1PredictSchemata, Map<String, dynamic>>(predictSchemata, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1UnmanagedContainerModel.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1UnmanagedContainerModel(
      artifactUri: map['artifactUri'] == null ? null : (map['artifactUri']! as String).input(),
      containerSpec: map['containerSpec'] == null ? null : (GoogleCloudAiplatformV1beta1ModelContainerSpec.fromMap((map['containerSpec']! as Map).cast<String, dynamic>())).input(),
      predictSchemata: map['predictSchemata'] == null ? null : (GoogleCloudAiplatformV1beta1PredictSchemata.fromMap((map['predictSchemata']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

