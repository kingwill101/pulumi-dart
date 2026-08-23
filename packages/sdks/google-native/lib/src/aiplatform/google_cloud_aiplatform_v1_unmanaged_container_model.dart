// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1_model_container_spec.dart';
import 'google_cloud_aiplatform_v1_predict_schemata.dart';

/// Contains model information necessary to perform batch prediction without requiring a full model import.
class GoogleCloudAiplatformV1UnmanagedContainerModel {
  /// The path to the directory containing the Model artifact and any of its supporting files.
  final pulumi.Input<String>? artifactUri;
  /// Input only. The specification of the container that is to be used when deploying this Model.
  final pulumi.Input<GoogleCloudAiplatformV1ModelContainerSpec>? containerSpec;
  /// Contains the schemata used in Model's predictions and explanations
  final pulumi.Input<GoogleCloudAiplatformV1PredictSchemata>? predictSchemata;

  /// Creates a new [GoogleCloudAiplatformV1UnmanagedContainerModel].
  /// [artifactUri] The path to the directory containing the Model artifact and any of its supporting files.
  /// [containerSpec] Input only. The specification of the container that is to be used when deploying this Model.
  /// [predictSchemata] Contains the schemata used in Model's predictions and explanations
  const GoogleCloudAiplatformV1UnmanagedContainerModel({
    this.artifactUri,
    this.containerSpec,
    this.predictSchemata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactUri': ?artifactUri,
      'containerSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1ModelContainerSpec, Map<String, dynamic>>(containerSpec, (value) => value.toMap()),
      'predictSchemata': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1PredictSchemata, Map<String, dynamic>>(predictSchemata, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1UnmanagedContainerModel.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1UnmanagedContainerModel(
      artifactUri: (() { final guardedValue = map['artifactUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerSpec: (() { final guardedValue = map['containerSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1ModelContainerSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      predictSchemata: (() { final guardedValue = map['predictSchemata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1PredictSchemata.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
