// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_accelerator_config_response.dart';
import 'google_cloud_ml_v1_auto_scaling_response.dart';
import 'google_cloud_ml_v1_container_spec_response.dart';
import 'google_cloud_ml_v1_explanation_config_response.dart';
import 'google_cloud_ml_v1_manual_scaling_response.dart';
import 'google_cloud_ml_v1_request_logging_config_response.dart';
import 'google_cloud_ml_v1_route_map_response.dart';

/// Represents a version of the model. Each version is a trained model deployed in the cloud, ready to handle prediction requests. A model can have multiple versions. You can get information about all of the versions of a given model by calling projects.models.versions.list.
class GoogleCloudMlV1VersionResponse {
  /// Optional. Accelerator config for using GPUs for online prediction (beta). Only specify this field if you have specified a Compute Engine (N1) machine type in the `machineType` field. Learn more about [using GPUs for online prediction](/ml-engine/docs/machine-types-online-prediction#gpus).
  final pulumi.Input<GoogleCloudMlV1AcceleratorConfigResponse>
  acceleratorConfig;

  /// Automatically scale the number of nodes used to serve the model in response to increases and decreases in traffic. Care should be taken to ramp up traffic according to the model's ability to scale or you will start seeing increases in latency and 429 response codes.
  final pulumi.Input<GoogleCloudMlV1AutoScalingResponse> autoScaling;

  /// Optional. Specifies a custom container to use for serving predictions. If you specify this field, then `machineType` is required. If you specify this field, then `deploymentUri` is optional. If you specify this field, then you must not specify `runtimeVersion`, `packageUris`, `framework`, `pythonVersion`, or `predictionClass`.
  final pulumi.Input<GoogleCloudMlV1ContainerSpecResponse> container;

  /// The time the version was created.
  final pulumi.Input<String> createTime;

  /// The Cloud Storage URI of a directory containing trained model artifacts to be used to create the model version. See the [guide to deploying models](/ai-platform/prediction/docs/deploying-models) for more information. The total number of files under this directory must not exceed 1000. During projects.models.versions.create, AI Platform Prediction copies all files from the specified directory to a location managed by the service. From then on, AI Platform Prediction uses these copies of the model artifacts to serve predictions, not the original files in Cloud Storage, so this location is useful only as a historical record. If you specify container, then this field is optional. Otherwise, it is required. Learn [how to use this field with a custom container](/ai-platform/prediction/docs/custom-container-requirements#artifacts).
  final pulumi.Input<String> deploymentUri;

  /// Optional. The description specified for the version when it was created.
  final pulumi.Input<String> description;

  /// The details of a failure or a cancellation.
  final pulumi.Input<String> errorMessage;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a model from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform model updates in order to avoid race conditions: An `etag` is returned in the response to `GetVersion`, and systems are expected to put that etag in the request to `UpdateVersion` to ensure that their change will be applied to the model as intended.
  final pulumi.Input<String> etag;

  /// Optional. Configures explainability features on the model's version. Some explanation features require additional metadata to be loaded as part of the model payload.
  final pulumi.Input<GoogleCloudMlV1ExplanationConfigResponse>
  explanationConfig;

  /// Optional. The machine learning framework AI Platform uses to train this version of the model. Valid values are `TENSORFLOW`, `SCIKIT_LEARN`, `XGBOOST`. If you do not specify a framework, AI Platform will analyze files in the deployment_uri to determine a framework. If you choose `SCIKIT_LEARN` or `XGBOOST`, you must also set the runtime version of the model to 1.4 or greater. Do **not** specify a framework if you're deploying a [custom prediction routine](/ai-platform/prediction/docs/custom-prediction-routines) or if you're using a [custom container](/ai-platform/prediction/docs/use-custom-container).
  final pulumi.Input<String> framework;

  /// If true, this version will be used to handle prediction requests that do not specify a version. You can change the default version by calling projects.methods.versions.setDefault.
  final pulumi.Input<bool> isDefault;

  /// Optional. One or more labels that you can add, to organize your model versions. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels. Note that this field is not updatable for mls1* models.
  final pulumi.Input<Map<String, String>> labels;

  /// The [AI Platform (Unified) `Model`](https://cloud.google.com/ai-platform-unified/docs/reference/rest/v1beta1/projects.locations.models) ID for the last [model migration](https://cloud.google.com/ai-platform-unified/docs/start/migrating-to-ai-platform-unified).
  final pulumi.Input<String> lastMigrationModelId;

  /// The last time this version was successfully [migrated to AI Platform (Unified)](https://cloud.google.com/ai-platform-unified/docs/start/migrating-to-ai-platform-unified).
  final pulumi.Input<String> lastMigrationTime;

  /// The time the version was last used for prediction.
  final pulumi.Input<String> lastUseTime;

  /// Optional. The type of machine on which to serve the model. Currently only applies to online prediction service. To learn about valid values for this field, read [Choosing a machine type for online prediction](/ai-platform/prediction/docs/machine-types-online-prediction). If this field is not specified and you are using a [regional endpoint](/ai-platform/prediction/docs/regional-endpoints), then the machine type defaults to `n1-standard-2`. If this field is not specified and you are using the global endpoint (`ml.googleapis.com`), then the machine type defaults to `mls1-c1-m2`.
  final pulumi.Input<String> machineType;

  /// Manually select the number of nodes to use for serving the model. You should generally use `auto_scaling` with an appropriate `min_nodes` instead, but this option is available if you want more predictable billing. Beware that latency and error rates will increase if the traffic exceeds that capability of the system to serve it based on the selected number of nodes.
  final pulumi.Input<GoogleCloudMlV1ManualScalingResponse> manualScaling;

  /// The name specified for the version when it was created. The version name must be unique within the model it is created in.
  final pulumi.Input<String> name;

  /// Optional. Cloud Storage paths (`gs://…`) of packages for [custom prediction routines](/ml-engine/docs/tensorflow/custom-prediction-routines) or [scikit-learn pipelines with custom code](/ml-engine/docs/scikit/exporting-for-prediction#custom-pipeline-code). For a custom prediction routine, one of these packages must contain your Predictor class (see [`predictionClass`](#Version.FIELDS.prediction_class)). Additionally, include any dependencies used by your Predictor or scikit-learn pipeline uses that are not already included in your selected [runtime version](/ml-engine/docs/tensorflow/runtime-version-list). If you specify this field, you must also set [`runtimeVersion`](#Version.FIELDS.runtime_version) to 1.4 or greater.
  final pulumi.Input<List<String>> packageUris;

  /// Optional. The fully qualified name (module_name.class_name) of a class that implements the Predictor interface described in this reference field. The module containing this class should be included in a package provided to the [`packageUris` field](#Version.FIELDS.package_uris). Specify this field if and only if you are deploying a [custom prediction routine (beta)](/ml-engine/docs/tensorflow/custom-prediction-routines). If you specify this field, you must set [`runtimeVersion`](#Version.FIELDS.runtime_version) to 1.4 or greater and you must set `machineType` to a [legacy (MLS1) machine type](/ml-engine/docs/machine-types-online-prediction). The following code sample provides the Predictor interface: class Predictor(object): """Interface for constructing custom predictors.""" def predict(self, instances, **kwargs): """Performs custom prediction. Instances are the decoded values from the request. They have already been deserialized from JSON. Args: instances: A list of prediction input instances. **kwargs: A dictionary of keyword args provided as additional fields on the predict request body. Returns: A list of outputs containing the prediction results. This list must be JSON serializable. """ raise NotImplementedError() @classmethod def from_path(cls, model_dir): """Creates an instance of Predictor using the given path. Loading of the predictor should be done in this method. Args: model_dir: The local directory that contains the exported model file along with any additional files uploaded when creating the version resource. Returns: An instance implementing this Predictor class. """ raise NotImplementedError() Learn more about [the Predictor interface and custom prediction routines](/ml-engine/docs/tensorflow/custom-prediction-routines).
  final pulumi.Input<String> predictionClass;

  /// The version of Python used in prediction. The following Python versions are available: * Python '3.7' is available when `runtime_version` is set to '1.15' or later. * Python '3.5' is available when `runtime_version` is set to a version from '1.4' to '1.14'. * Python '2.7' is available when `runtime_version` is set to '1.15' or earlier. Read more about the Python versions available for [each runtime version](/ml-engine/docs/runtime-version-list).
  final pulumi.Input<String> pythonVersion;

  /// Optional. *Only* specify this field in a projects.models.versions.patch request. Specifying it in a projects.models.versions.create request has no effect. Configures the request-response pair logging on predictions from this Version.
  final pulumi.Input<GoogleCloudMlV1RequestLoggingConfigResponse>
  requestLoggingConfig;

  /// Optional. Specifies paths on a custom container's HTTP server where AI Platform Prediction sends certain requests. If you specify this field, then you must also specify the `container` field. If you specify the `container` field and do not specify this field, it defaults to the following: ```json { "predict": "/v1/models/MODEL/versions/VERSION:predict", "health": "/v1/models/MODEL/versions/VERSION" } ``` See RouteMap for more details about these default values.
  final pulumi.Input<GoogleCloudMlV1RouteMapResponse> routes;

  /// The AI Platform runtime version to use for this deployment. For more information, see the [runtime version list](/ml-engine/docs/runtime-version-list) and [how to manage runtime versions](/ml-engine/docs/versioning).
  final pulumi.Input<String> runtimeVersion;

  /// Optional. Specifies the service account for resource access control. If you specify this field, then you must also specify either the `containerSpec` or the `predictionClass` field. Learn more about [using a custom service account](/ai-platform/prediction/docs/custom-service-account).
  final pulumi.Input<String> serviceAccount;

  /// The state of a version.
  final pulumi.Input<String> state;

  /// Creates a new [GoogleCloudMlV1VersionResponse].
  /// [acceleratorConfig] Optional. Accelerator config for using GPUs for online prediction (beta). Only specify this field if you have specified a Compute Engine (N1) machine type in the `machineType` field. Learn more about [using GPUs for online prediction](/ml-engine/docs/machine-types-online-prediction#gpus).
  /// [autoScaling] Automatically scale the number of nodes used to serve the model in response to increases and decreases in traffic. Care should be taken to ramp up traffic according to the model's ability to scale or you will start seeing increases in latency and 429 response codes.
  /// [container] Optional. Specifies a custom container to use for serving predictions. If you specify this field, then `machineType` is required. If you specify this field, then `deploymentUri` is optional. If you specify this field, then you must not specify `runtimeVersion`, `packageUris`, `framework`, `pythonVersion`, or `predictionClass`.
  /// [createTime] The time the version was created.
  /// [deploymentUri] The Cloud Storage URI of a directory containing trained model artifacts to be used to create the model version. See the [guide to deploying models](/ai-platform/prediction/docs/deploying-models) for more information. The total number of files under this directory must not exceed 1000. During projects.models.versions.create, AI Platform Prediction copies all files from the specified directory to a location managed by the service. From then on, AI Platform Prediction uses these copies of the model artifacts to serve predictions, not the original files in Cloud Storage, so this location is useful only as a historical record. If you specify container, then this field is optional. Otherwise, it is required. Learn [how to use this field with a custom container](/ai-platform/prediction/docs/custom-container-requirements#artifacts).
  /// [description] Optional. The description specified for the version when it was created.
  /// [errorMessage] The details of a failure or a cancellation.
  /// [etag] `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a model from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform model updates in order to avoid race conditions: An `etag` is returned in the response to `GetVersion`, and systems are expected to put that etag in the request to `UpdateVersion` to ensure that their change will be applied to the model as intended.
  /// [explanationConfig] Optional. Configures explainability features on the model's version. Some explanation features require additional metadata to be loaded as part of the model payload.
  /// [framework] Optional. The machine learning framework AI Platform uses to train this version of the model. Valid values are `TENSORFLOW`, `SCIKIT_LEARN`, `XGBOOST`. If you do not specify a framework, AI Platform will analyze files in the deployment_uri to determine a framework. If you choose `SCIKIT_LEARN` or `XGBOOST`, you must also set the runtime version of the model to 1.4 or greater. Do **not** specify a framework if you're deploying a [custom prediction routine](/ai-platform/prediction/docs/custom-prediction-routines) or if you're using a [custom container](/ai-platform/prediction/docs/use-custom-container).
  /// [isDefault] If true, this version will be used to handle prediction requests that do not specify a version. You can change the default version by calling projects.methods.versions.setDefault.
  /// [labels] Optional. One or more labels that you can add, to organize your model versions. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels. Note that this field is not updatable for mls1* models.
  /// [lastMigrationModelId] The [AI Platform (Unified) `Model`](https://cloud.google.com/ai-platform-unified/docs/reference/rest/v1beta1/projects.locations.models) ID for the last [model migration](https://cloud.google.com/ai-platform-unified/docs/start/migrating-to-ai-platform-unified).
  /// [lastMigrationTime] The last time this version was successfully [migrated to AI Platform (Unified)](https://cloud.google.com/ai-platform-unified/docs/start/migrating-to-ai-platform-unified).
  /// [lastUseTime] The time the version was last used for prediction.
  /// [machineType] Optional. The type of machine on which to serve the model. Currently only applies to online prediction service. To learn about valid values for this field, read [Choosing a machine type for online prediction](/ai-platform/prediction/docs/machine-types-online-prediction). If this field is not specified and you are using a [regional endpoint](/ai-platform/prediction/docs/regional-endpoints), then the machine type defaults to `n1-standard-2`. If this field is not specified and you are using the global endpoint (`ml.googleapis.com`), then the machine type defaults to `mls1-c1-m2`.
  /// [manualScaling] Manually select the number of nodes to use for serving the model. You should generally use `auto_scaling` with an appropriate `min_nodes` instead, but this option is available if you want more predictable billing. Beware that latency and error rates will increase if the traffic exceeds that capability of the system to serve it based on the selected number of nodes.
  /// [name] The name specified for the version when it was created. The version name must be unique within the model it is created in.
  /// [packageUris] Optional. Cloud Storage paths (`gs://…`) of packages for [custom prediction routines](/ml-engine/docs/tensorflow/custom-prediction-routines) or [scikit-learn pipelines with custom code](/ml-engine/docs/scikit/exporting-for-prediction#custom-pipeline-code). For a custom prediction routine, one of these packages must contain your Predictor class (see [`predictionClass`](#Version.FIELDS.prediction_class)). Additionally, include any dependencies used by your Predictor or scikit-learn pipeline uses that are not already included in your selected [runtime version](/ml-engine/docs/tensorflow/runtime-version-list). If you specify this field, you must also set [`runtimeVersion`](#Version.FIELDS.runtime_version) to 1.4 or greater.
  /// [predictionClass] Optional. The fully qualified name (module_name.class_name) of a class that implements the Predictor interface described in this reference field. The module containing this class should be included in a package provided to the [`packageUris` field](#Version.FIELDS.package_uris). Specify this field if and only if you are deploying a [custom prediction routine (beta)](/ml-engine/docs/tensorflow/custom-prediction-routines). If you specify this field, you must set [`runtimeVersion`](#Version.FIELDS.runtime_version) to 1.4 or greater and you must set `machineType` to a [legacy (MLS1) machine type](/ml-engine/docs/machine-types-online-prediction). The following code sample provides the Predictor interface: class Predictor(object): """Interface for constructing custom predictors.""" def predict(self, instances, **kwargs): """Performs custom prediction. Instances are the decoded values from the request. They have already been deserialized from JSON. Args: instances: A list of prediction input instances. **kwargs: A dictionary of keyword args provided as additional fields on the predict request body. Returns: A list of outputs containing the prediction results. This list must be JSON serializable. """ raise NotImplementedError() @classmethod def from_path(cls, model_dir): """Creates an instance of Predictor using the given path. Loading of the predictor should be done in this method. Args: model_dir: The local directory that contains the exported model file along with any additional files uploaded when creating the version resource. Returns: An instance implementing this Predictor class. """ raise NotImplementedError() Learn more about [the Predictor interface and custom prediction routines](/ml-engine/docs/tensorflow/custom-prediction-routines).
  /// [pythonVersion] The version of Python used in prediction. The following Python versions are available: * Python '3.7' is available when `runtime_version` is set to '1.15' or later. * Python '3.5' is available when `runtime_version` is set to a version from '1.4' to '1.14'. * Python '2.7' is available when `runtime_version` is set to '1.15' or earlier. Read more about the Python versions available for [each runtime version](/ml-engine/docs/runtime-version-list).
  /// [requestLoggingConfig] Optional. *Only* specify this field in a projects.models.versions.patch request. Specifying it in a projects.models.versions.create request has no effect. Configures the request-response pair logging on predictions from this Version.
  /// [routes] Optional. Specifies paths on a custom container's HTTP server where AI Platform Prediction sends certain requests. If you specify this field, then you must also specify the `container` field. If you specify the `container` field and do not specify this field, it defaults to the following: ```json { "predict": "/v1/models/MODEL/versions/VERSION:predict", "health": "/v1/models/MODEL/versions/VERSION" } ``` See RouteMap for more details about these default values.
  /// [runtimeVersion] The AI Platform runtime version to use for this deployment. For more information, see the [runtime version list](/ml-engine/docs/runtime-version-list) and [how to manage runtime versions](/ml-engine/docs/versioning).
  /// [serviceAccount] Optional. Specifies the service account for resource access control. If you specify this field, then you must also specify either the `containerSpec` or the `predictionClass` field. Learn more about [using a custom service account](/ai-platform/prediction/docs/custom-service-account).
  /// [state] The state of a version.
  GoogleCloudMlV1VersionResponse({
    required this.acceleratorConfig,
    required this.autoScaling,
    required this.container,
    required this.createTime,
    required this.deploymentUri,
    required this.description,
    required this.errorMessage,
    required this.etag,
    required this.explanationConfig,
    required this.framework,
    required this.isDefault,
    required this.labels,
    required this.lastMigrationModelId,
    required this.lastMigrationTime,
    required this.lastUseTime,
    required this.machineType,
    required this.manualScaling,
    required this.name,
    required this.packageUris,
    required this.predictionClass,
    required this.pythonVersion,
    required this.requestLoggingConfig,
    required this.routes,
    required this.runtimeVersion,
    required this.serviceAccount,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceleratorConfig':
          pulumi.Input.mapInputValue<
            GoogleCloudMlV1AcceleratorConfigResponse,
            Map<String, dynamic>
          >(acceleratorConfig, (value) => value.toMap()),
      'autoScaling':
          pulumi.Input.mapInputValue<
            GoogleCloudMlV1AutoScalingResponse,
            Map<String, dynamic>
          >(autoScaling, (value) => value.toMap()),
      'container':
          pulumi.Input.mapInputValue<
            GoogleCloudMlV1ContainerSpecResponse,
            Map<String, dynamic>
          >(container, (value) => value.toMap()),
      'createTime': createTime,
      'deploymentUri': deploymentUri,
      'description': description,
      'errorMessage': errorMessage,
      'etag': etag,
      'explanationConfig':
          pulumi.Input.mapInputValue<
            GoogleCloudMlV1ExplanationConfigResponse,
            Map<String, dynamic>
          >(explanationConfig, (value) => value.toMap()),
      'framework': framework,
      'isDefault': isDefault,
      'labels': labels,
      'lastMigrationModelId': lastMigrationModelId,
      'lastMigrationTime': lastMigrationTime,
      'lastUseTime': lastUseTime,
      'machineType': machineType,
      'manualScaling':
          pulumi.Input.mapInputValue<
            GoogleCloudMlV1ManualScalingResponse,
            Map<String, dynamic>
          >(manualScaling, (value) => value.toMap()),
      'name': name,
      'packageUris': packageUris,
      'predictionClass': predictionClass,
      'pythonVersion': pythonVersion,
      'requestLoggingConfig':
          pulumi.Input.mapInputValue<
            GoogleCloudMlV1RequestLoggingConfigResponse,
            Map<String, dynamic>
          >(requestLoggingConfig, (value) => value.toMap()),
      'routes':
          pulumi.Input.mapInputValue<
            GoogleCloudMlV1RouteMapResponse,
            Map<String, dynamic>
          >(routes, (value) => value.toMap()),
      'runtimeVersion': runtimeVersion,
      'serviceAccount': serviceAccount,
      'state': state,
    };
  }

  factory GoogleCloudMlV1VersionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudMlV1VersionResponse(
      acceleratorConfig: pulumi.Input.fromValue(
        GoogleCloudMlV1AcceleratorConfigResponse.fromMap(
          (map['acceleratorConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      autoScaling: pulumi.Input.fromValue(
        GoogleCloudMlV1AutoScalingResponse.fromMap(
          (map['autoScaling']! as Map).cast<String, dynamic>(),
        ),
      ),
      container: pulumi.Input.fromValue(
        GoogleCloudMlV1ContainerSpecResponse.fromMap(
          (map['container']! as Map).cast<String, dynamic>(),
        ),
      ),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deploymentUri: pulumi.Input.fromValue(map['deploymentUri'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      explanationConfig: pulumi.Input.fromValue(
        GoogleCloudMlV1ExplanationConfigResponse.fromMap(
          (map['explanationConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      framework: pulumi.Input.fromValue(map['framework'] as String),
      isDefault: pulumi.Input.fromValue(map['isDefault'] as bool),
      labels: pulumi.Input.fromValue(
        (map['labels'] as Map).cast<String, String>(),
      ),
      lastMigrationModelId: pulumi.Input.fromValue(
        map['lastMigrationModelId'] as String,
      ),
      lastMigrationTime: pulumi.Input.fromValue(
        map['lastMigrationTime'] as String,
      ),
      lastUseTime: pulumi.Input.fromValue(map['lastUseTime'] as String),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      manualScaling: pulumi.Input.fromValue(
        GoogleCloudMlV1ManualScalingResponse.fromMap(
          (map['manualScaling']! as Map).cast<String, dynamic>(),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      packageUris: pulumi.Input.fromValue(
        (map['packageUris'] as List).cast<String>(),
      ),
      predictionClass: pulumi.Input.fromValue(map['predictionClass'] as String),
      pythonVersion: pulumi.Input.fromValue(map['pythonVersion'] as String),
      requestLoggingConfig: pulumi.Input.fromValue(
        GoogleCloudMlV1RequestLoggingConfigResponse.fromMap(
          (map['requestLoggingConfig']! as Map).cast<String, dynamic>(),
        ),
      ),
      routes: pulumi.Input.fromValue(
        GoogleCloudMlV1RouteMapResponse.fromMap(
          (map['routes']! as Map).cast<String, dynamic>(),
        ),
      ),
      runtimeVersion: pulumi.Input.fromValue(map['runtimeVersion'] as String),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
