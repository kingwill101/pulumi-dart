import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_ml_v1_accelerator_config_response.dart';
import 'google_cloud_ml_v1_auto_scaling_response.dart';
import 'google_cloud_ml_v1_container_spec_response.dart';
import 'google_cloud_ml_v1_explanation_config_response.dart';
import 'google_cloud_ml_v1_manual_scaling_response.dart';
import 'google_cloud_ml_v1_request_logging_config_response.dart';
import 'google_cloud_ml_v1_route_map_response.dart';
import 'version_args.dart';

/// Creates a new version of a model from a trained TensorFlow model. If the version created in the cloud by this call is the first deployed version of the specified model, it will be made the default version of the model. When you add a version to a model that already has one or more versions, the default version does not automatically change. If you want a new version to be the default, you must call projects.models.versions.setDefault.
class Version extends pulumi.CustomResource {
  /// Optional. Accelerator config for using GPUs for online prediction (beta). Only specify this field if you have specified a Compute Engine (N1) machine type in the `machineType` field. Learn more about [using GPUs for online prediction](/ml-engine/docs/machine-types-online-prediction#gpus).
  late final pulumi.Output<GoogleCloudMlV1AcceleratorConfigResponse> acceleratorConfig;
  /// Automatically scale the number of nodes used to serve the model in response to increases and decreases in traffic. Care should be taken to ramp up traffic according to the model's ability to scale or you will start seeing increases in latency and 429 response codes.
  late final pulumi.Output<GoogleCloudMlV1AutoScalingResponse> autoScaling;
  /// Optional. Specifies a custom container to use for serving predictions. If you specify this field, then `machineType` is required. If you specify this field, then `deploymentUri` is optional. If you specify this field, then you must not specify `runtimeVersion`, `packageUris`, `framework`, `pythonVersion`, or `predictionClass`.
  late final pulumi.Output<GoogleCloudMlV1ContainerSpecResponse> container;
  /// The time the version was created.
  late final pulumi.Output<String> createTime;
  /// The Cloud Storage URI of a directory containing trained model artifacts to be used to create the model version. See the [guide to deploying models](/ai-platform/prediction/docs/deploying-models) for more information. The total number of files under this directory must not exceed 1000. During projects.models.versions.create, AI Platform Prediction copies all files from the specified directory to a location managed by the service. From then on, AI Platform Prediction uses these copies of the model artifacts to serve predictions, not the original files in Cloud Storage, so this location is useful only as a historical record. If you specify container, then this field is optional. Otherwise, it is required. Learn [how to use this field with a custom container](/ai-platform/prediction/docs/custom-container-requirements#artifacts).
  late final pulumi.Output<String> deploymentUri;
  /// Optional. The description specified for the version when it was created.
  late final pulumi.Output<String> description;
  /// The details of a failure or a cancellation.
  late final pulumi.Output<String> errorMessage;
  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a model from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform model updates in order to avoid race conditions: An `etag` is returned in the response to `GetVersion`, and systems are expected to put that etag in the request to `UpdateVersion` to ensure that their change will be applied to the model as intended.
  late final pulumi.Output<String> etag;
  /// Optional. Configures explainability features on the model's version. Some explanation features require additional metadata to be loaded as part of the model payload.
  late final pulumi.Output<GoogleCloudMlV1ExplanationConfigResponse> explanationConfig;
  /// Optional. The machine learning framework AI Platform uses to train this version of the model. Valid values are `TENSORFLOW`, `SCIKIT_LEARN`, `XGBOOST`. If you do not specify a framework, AI Platform will analyze files in the deployment_uri to determine a framework. If you choose `SCIKIT_LEARN` or `XGBOOST`, you must also set the runtime version of the model to 1.4 or greater. Do **not** specify a framework if you're deploying a [custom prediction routine](/ai-platform/prediction/docs/custom-prediction-routines) or if you're using a [custom container](/ai-platform/prediction/docs/use-custom-container).
  late final pulumi.Output<String> framework;
  /// If true, this version will be used to handle prediction requests that do not specify a version. You can change the default version by calling projects.methods.versions.setDefault.
  late final pulumi.Output<bool> isDefault;
  /// Optional. One or more labels that you can add, to organize your model versions. Each label is a key-value pair, where both the key and the value are arbitrary strings that you supply. For more information, see the documentation on using labels. Note that this field is not updatable for mls1* models.
  late final pulumi.Output<Map<String, String>> labels;
  /// The [AI Platform (Unified) `Model`](https://cloud.google.com/ai-platform-unified/docs/reference/rest/v1beta1/projects.locations.models) ID for the last [model migration](https://cloud.google.com/ai-platform-unified/docs/start/migrating-to-ai-platform-unified).
  late final pulumi.Output<String> lastMigrationModelId;
  /// The last time this version was successfully [migrated to AI Platform (Unified)](https://cloud.google.com/ai-platform-unified/docs/start/migrating-to-ai-platform-unified).
  late final pulumi.Output<String> lastMigrationTime;
  /// The time the version was last used for prediction.
  late final pulumi.Output<String> lastUseTime;
  /// Optional. The type of machine on which to serve the model. Currently only applies to online prediction service. To learn about valid values for this field, read [Choosing a machine type for online prediction](/ai-platform/prediction/docs/machine-types-online-prediction). If this field is not specified and you are using a [regional endpoint](/ai-platform/prediction/docs/regional-endpoints), then the machine type defaults to `n1-standard-2`. If this field is not specified and you are using the global endpoint (`ml.googleapis.com`), then the machine type defaults to `mls1-c1-m2`.
  late final pulumi.Output<String> machineType;
  /// Manually select the number of nodes to use for serving the model. You should generally use `auto_scaling` with an appropriate `min_nodes` instead, but this option is available if you want more predictable billing. Beware that latency and error rates will increase if the traffic exceeds that capability of the system to serve it based on the selected number of nodes.
  late final pulumi.Output<GoogleCloudMlV1ManualScalingResponse> manualScaling;
  late final pulumi.Output<String> modelId;
  /// The name specified for the version when it was created. The version name must be unique within the model it is created in.
  late final pulumi.Output<String> name;
  /// Optional. Cloud Storage paths (`gs://…`) of packages for [custom prediction routines](/ml-engine/docs/tensorflow/custom-prediction-routines) or [scikit-learn pipelines with custom code](/ml-engine/docs/scikit/exporting-for-prediction#custom-pipeline-code). For a custom prediction routine, one of these packages must contain your Predictor class (see [`predictionClass`](#Version.FIELDS.prediction_class)). Additionally, include any dependencies used by your Predictor or scikit-learn pipeline uses that are not already included in your selected [runtime version](/ml-engine/docs/tensorflow/runtime-version-list). If you specify this field, you must also set [`runtimeVersion`](#Version.FIELDS.runtime_version) to 1.4 or greater.
  late final pulumi.Output<List<String>> packageUris;
  /// Optional. The fully qualified name (module_name.class_name) of a class that implements the Predictor interface described in this reference field. The module containing this class should be included in a package provided to the [`packageUris` field](#Version.FIELDS.package_uris). Specify this field if and only if you are deploying a [custom prediction routine (beta)](/ml-engine/docs/tensorflow/custom-prediction-routines). If you specify this field, you must set [`runtimeVersion`](#Version.FIELDS.runtime_version) to 1.4 or greater and you must set `machineType` to a [legacy (MLS1) machine type](/ml-engine/docs/machine-types-online-prediction). The following code sample provides the Predictor interface: class Predictor(object): """Interface for constructing custom predictors.""" def predict(self, instances, **kwargs): """Performs custom prediction. Instances are the decoded values from the request. They have already been deserialized from JSON. Args: instances: A list of prediction input instances. **kwargs: A dictionary of keyword args provided as additional fields on the predict request body. Returns: A list of outputs containing the prediction results. This list must be JSON serializable. """ raise NotImplementedError() @classmethod def from_path(cls, model_dir): """Creates an instance of Predictor using the given path. Loading of the predictor should be done in this method. Args: model_dir: The local directory that contains the exported model file along with any additional files uploaded when creating the version resource. Returns: An instance implementing this Predictor class. """ raise NotImplementedError() Learn more about [the Predictor interface and custom prediction routines](/ml-engine/docs/tensorflow/custom-prediction-routines).
  late final pulumi.Output<String> predictionClass;
  late final pulumi.Output<String> project;
  /// The version of Python used in prediction. The following Python versions are available: * Python '3.7' is available when `runtime_version` is set to '1.15' or later. * Python '3.5' is available when `runtime_version` is set to a version from '1.4' to '1.14'. * Python '2.7' is available when `runtime_version` is set to '1.15' or earlier. Read more about the Python versions available for [each runtime version](/ml-engine/docs/runtime-version-list).
  late final pulumi.Output<String> pythonVersion;
  /// Optional. *Only* specify this field in a projects.models.versions.patch request. Specifying it in a projects.models.versions.create request has no effect. Configures the request-response pair logging on predictions from this Version.
  late final pulumi.Output<GoogleCloudMlV1RequestLoggingConfigResponse> requestLoggingConfig;
  /// Optional. Specifies paths on a custom container's HTTP server where AI Platform Prediction sends certain requests. If you specify this field, then you must also specify the `container` field. If you specify the `container` field and do not specify this field, it defaults to the following: ```json { "predict": "/v1/models/MODEL/versions/VERSION:predict", "health": "/v1/models/MODEL/versions/VERSION" } ``` See RouteMap for more details about these default values.
  late final pulumi.Output<GoogleCloudMlV1RouteMapResponse> routes;
  /// The AI Platform runtime version to use for this deployment. For more information, see the [runtime version list](/ml-engine/docs/runtime-version-list) and [how to manage runtime versions](/ml-engine/docs/versioning).
  late final pulumi.Output<String> runtimeVersion;
  /// Optional. Specifies the service account for resource access control. If you specify this field, then you must also specify either the `containerSpec` or the `predictionClass` field. Learn more about [using a custom service account](/ai-platform/prediction/docs/custom-service-account).
  late final pulumi.Output<String> serviceAccount;
  /// The state of a version.
  late final pulumi.Output<String> state;

  /// Creates a new [Version].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Version]. {@macro pulumi_ml_v1_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Version(
    String name, {
    VersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:ml/v1:Version',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceleratorConfig = registerOutput<GoogleCloudMlV1AcceleratorConfigResponse>('acceleratorConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudMlV1AcceleratorConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoScaling = registerOutput<GoogleCloudMlV1AutoScalingResponse>('autoScaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudMlV1AutoScalingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    container = registerOutput<GoogleCloudMlV1ContainerSpecResponse>('container', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudMlV1ContainerSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    deploymentUri = registerOutput<String>('deploymentUri');
    description = registerOutput<String>('description');
    errorMessage = registerOutput<String>('errorMessage');
    etag = registerOutput<String>('etag');
    explanationConfig = registerOutput<GoogleCloudMlV1ExplanationConfigResponse>('explanationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudMlV1ExplanationConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    framework = registerOutput<String>('framework');
    isDefault = registerOutput<bool>('isDefault');
    labels = registerOutput<Map<String, String>>('labels');
    lastMigrationModelId = registerOutput<String>('lastMigrationModelId');
    lastMigrationTime = registerOutput<String>('lastMigrationTime');
    lastUseTime = registerOutput<String>('lastUseTime');
    machineType = registerOutput<String>('machineType');
    manualScaling = registerOutput<GoogleCloudMlV1ManualScalingResponse>('manualScaling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudMlV1ManualScalingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modelId = registerOutput<String>('modelId');
    this.name = registerOutput<String>('name');
    packageUris = registerOutput<List<String>>('packageUris');
    predictionClass = registerOutput<String>('predictionClass');
    project = registerOutput<String>('project');
    pythonVersion = registerOutput<String>('pythonVersion');
    requestLoggingConfig = registerOutput<GoogleCloudMlV1RequestLoggingConfigResponse>('requestLoggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudMlV1RequestLoggingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    routes = registerOutput<GoogleCloudMlV1RouteMapResponse>('routes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GoogleCloudMlV1RouteMapResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    runtimeVersion = registerOutput<String>('runtimeVersion');
    serviceAccount = registerOutput<String>('serviceAccount');
    state = registerOutput<String>('state');
  }
}
