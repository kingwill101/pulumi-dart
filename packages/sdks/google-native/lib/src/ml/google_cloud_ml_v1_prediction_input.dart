// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_prediction_input_data_format.dart';
import 'google_cloud_ml_v1_prediction_input_output_data_format.dart';

/// Represents input parameters for a prediction job.
class GoogleCloudMlV1PredictionInput {
  /// Optional. Number of records per batch, defaults to 64. The service will buffer batch_size number of records in memory before invoking one Tensorflow prediction call internally. So take the record size and memory available into consideration when setting this parameter.
  final pulumi.Input<String>? batchSize;
  /// The format of the input data files.
  final pulumi.Input<GoogleCloudMlV1PredictionInputDataFormat> dataFormat;
  /// The Cloud Storage location of the input data files. May contain wildcards.
  final pulumi.Input<List<String>> inputPaths;
  /// Optional. The maximum number of workers to be used for parallel processing. Defaults to 10 if not specified.
  final pulumi.Input<String>? maxWorkerCount;
  /// Use this field if you want to use the default version for the specified model. The string must use the following format: `"projects/YOUR_PROJECT/models/YOUR_MODEL"`
  final pulumi.Input<String>? modelName;
  /// Optional. Format of the output data files, defaults to JSON.
  final pulumi.Input<GoogleCloudMlV1PredictionInputOutputDataFormat>? outputDataFormat;
  /// The output Google Cloud Storage location.
  final pulumi.Input<String> outputPath;
  /// The Google Compute Engine region to run the prediction job in. See the available regions for AI Platform services.
  final pulumi.Input<String> region;
  /// Optional. The AI Platform runtime version to use for this batch prediction. If not set, AI Platform will pick the runtime version used during the CreateVersion request for this model version, or choose the latest stable version when model version information is not available such as when the model is specified by uri.
  final pulumi.Input<String>? runtimeVersion;
  /// Optional. The name of the signature defined in the SavedModel to use for this job. Please refer to [SavedModel](https://tensorflow.github.io/serving/serving_basic.html) for information about how to use signatures. Defaults to [DEFAULT_SERVING_SIGNATURE_DEF_KEY](https://www.tensorflow.org/api_docs/python/tf/saved_model/signature_constants) , which is "serving_default".
  final pulumi.Input<String>? signatureName;
  /// Use this field if you want to specify a Google Cloud Storage path for the model to use.
  final pulumi.Input<String>? uri;
  /// Use this field if you want to specify a version of the model to use. The string is formatted the same way as `model_version`, with the addition of the version information: `"projects/YOUR_PROJECT/models/YOUR_MODEL/versions/YOUR_VERSION"`
  final pulumi.Input<String>? versionName;

  /// Creates a new [GoogleCloudMlV1PredictionInput].
  /// [batchSize] Optional. Number of records per batch, defaults to 64. The service will buffer batch_size number of records in memory before invoking one Tensorflow prediction call internally. So take the record size and memory available into consideration when setting this parameter.
  /// [dataFormat] The format of the input data files.
  /// [inputPaths] The Cloud Storage location of the input data files. May contain wildcards.
  /// [maxWorkerCount] Optional. The maximum number of workers to be used for parallel processing. Defaults to 10 if not specified.
  /// [modelName] Use this field if you want to use the default version for the specified model. The string must use the following format: `"projects/YOUR_PROJECT/models/YOUR_MODEL"`
  /// [outputDataFormat] Optional. Format of the output data files, defaults to JSON.
  /// [outputPath] The output Google Cloud Storage location.
  /// [region] The Google Compute Engine region to run the prediction job in. See the available regions for AI Platform services.
  /// [runtimeVersion] Optional. The AI Platform runtime version to use for this batch prediction. If not set, AI Platform will pick the runtime version used during the CreateVersion request for this model version, or choose the latest stable version when model version information is not available such as when the model is specified by uri.
  /// [signatureName] Optional. The name of the signature defined in the SavedModel to use for this job. Please refer to [SavedModel](https://tensorflow.github.io/serving/serving_basic.html) for information about how to use signatures. Defaults to [DEFAULT_SERVING_SIGNATURE_DEF_KEY](https://www.tensorflow.org/api_docs/python/tf/saved_model/signature_constants) , which is "serving_default".
  /// [uri] Use this field if you want to specify a Google Cloud Storage path for the model to use.
  /// [versionName] Use this field if you want to specify a version of the model to use. The string is formatted the same way as `model_version`, with the addition of the version information: `"projects/YOUR_PROJECT/models/YOUR_MODEL/versions/YOUR_VERSION"`
  const GoogleCloudMlV1PredictionInput({
    this.batchSize,
    required this.dataFormat,
    required this.inputPaths,
    this.maxWorkerCount,
    this.modelName,
    this.outputDataFormat,
    required this.outputPath,
    required this.region,
    this.runtimeVersion,
    this.signatureName,
    this.uri,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
      'dataFormat': pulumi.Input.mapInputValue<GoogleCloudMlV1PredictionInputDataFormat, String>(dataFormat, (value) => value.wireValue),
      'inputPaths': inputPaths,
      'maxWorkerCount': ?maxWorkerCount,
      'modelName': ?modelName,
      'outputDataFormat': ?pulumi.Input.mapOptionalInputValue<GoogleCloudMlV1PredictionInputOutputDataFormat, String>(outputDataFormat, (value) => value.wireValue),
      'outputPath': outputPath,
      'region': region,
      'runtimeVersion': ?runtimeVersion,
      'signatureName': ?signatureName,
      'uri': ?uri,
      'versionName': ?versionName,
    };
  }

  factory GoogleCloudMlV1PredictionInput.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1PredictionInput(
      batchSize: (() { final guardedValue = map['batchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataFormat: pulumi.Input.fromValue(GoogleCloudMlV1PredictionInputDataFormat.fromValue(map['dataFormat']! as String)),
      inputPaths: pulumi.Input.fromValue((map['inputPaths'] as List).cast<String>()),
      maxWorkerCount: (() { final guardedValue = map['maxWorkerCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modelName: (() { final guardedValue = map['modelName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputDataFormat: (() { final guardedValue = map['outputDataFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudMlV1PredictionInputOutputDataFormat.fromValue(guardedValue as String)); })(),
      outputPath: pulumi.Input.fromValue(map['outputPath'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signatureName: (() { final guardedValue = map['signatureName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionName: (() { final guardedValue = map['versionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

