// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata describing the Model's input and output for explanation.
class GoogleCloudAiplatformV1beta1ExplanationMetadataResponse {
  /// Points to a YAML file stored on Google Cloud Storage describing the format of the feature attributions. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). AutoML tabular Models always have this field populated by Vertex AI. Note: The URI given on output may be different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  final pulumi.Input<String> featureAttributionsSchemaUri;
  /// Map from feature names to feature input metadata. Keys are the name of the features. Values are the specification of the feature. An empty InputMetadata is valid. It describes a text feature which has the name specified as the key in ExplanationMetadata.inputs. The baseline of the empty feature is chosen by Vertex AI. For Vertex AI-provided Tensorflow images, the key can be any friendly name of the feature. Once specified, featureAttributions are keyed by this key (if not grouped with another feature). For custom images, the key must match with the key in instance.
  final pulumi.Input<Map<String, String>> inputs;
  /// Name of the source to generate embeddings for example based explanations.
  final pulumi.Input<String> latentSpaceSource;
  /// Map from output names to output metadata. For Vertex AI-provided Tensorflow images, keys can be any user defined string that consists of any UTF-8 characters. For custom images, keys are the name of the output field in the prediction to be explained. Currently only one key is allowed.
  final pulumi.Input<Map<String, String>> outputs;

  /// Creates a new [GoogleCloudAiplatformV1beta1ExplanationMetadataResponse].
  /// [featureAttributionsSchemaUri] Points to a YAML file stored on Google Cloud Storage describing the format of the feature attributions. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). AutoML tabular Models always have this field populated by Vertex AI. Note: The URI given on output may be different, including the URI scheme, than the one given on input. The output URI will point to a location where the user only has a read access.
  /// [inputs] Map from feature names to feature input metadata. Keys are the name of the features. Values are the specification of the feature. An empty InputMetadata is valid. It describes a text feature which has the name specified as the key in ExplanationMetadata.inputs. The baseline of the empty feature is chosen by Vertex AI. For Vertex AI-provided Tensorflow images, the key can be any friendly name of the feature. Once specified, featureAttributions are keyed by this key (if not grouped with another feature). For custom images, the key must match with the key in instance.
  /// [latentSpaceSource] Name of the source to generate embeddings for example based explanations.
  /// [outputs] Map from output names to output metadata. For Vertex AI-provided Tensorflow images, keys can be any user defined string that consists of any UTF-8 characters. For custom images, keys are the name of the output field in the prediction to be explained. Currently only one key is allowed.
  const GoogleCloudAiplatformV1beta1ExplanationMetadataResponse({
    required this.featureAttributionsSchemaUri,
    required this.inputs,
    required this.latentSpaceSource,
    required this.outputs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureAttributionsSchemaUri': featureAttributionsSchemaUri,
      'inputs': inputs,
      'latentSpaceSource': latentSpaceSource,
      'outputs': outputs,
    };
  }

  factory GoogleCloudAiplatformV1beta1ExplanationMetadataResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ExplanationMetadataResponse(
      featureAttributionsSchemaUri: pulumi.Input.fromValue(map['featureAttributionsSchemaUri'] as String),
      inputs: pulumi.Input.fromValue((map['inputs'] as Map).cast<String, String>()),
      latentSpaceSource: pulumi.Input.fromValue(map['latentSpaceSource'] as String),
      outputs: pulumi.Input.fromValue((map['outputs'] as Map).cast<String, String>()),
    );
  }
}
