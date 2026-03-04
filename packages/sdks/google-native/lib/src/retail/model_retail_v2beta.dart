import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2beta_model_model_features_config_response.dart';
import 'model_retail_v2beta_args.dart';

/// Creates a new model.
class ModelRetailV2beta extends pulumi.CustomResource {
  late final pulumi.Output<String> catalogId;

  /// Timestamp the Recommendation Model was created at.
  late final pulumi.Output<String> createTime;

  /// The state of data requirements for this model: `DATA_OK` and `DATA_ERROR`. Recommendation model cannot be trained if the data is in `DATA_ERROR` state. Recommendation model can have `DATA_ERROR` state even if serving state is `ACTIVE`: models were trained successfully before, but cannot be refreshed because model no longer has sufficient data for training.
  late final pulumi.Output<String> dataState;

  /// The display name of the model. Should be human readable, used to display Recommendation Models in the Retail Cloud Console Dashboard. UTF-8 encoded string with limit of 1024 characters.
  late final pulumi.Output<String> displayName;

  /// Optional. Whether to run a dry run to validate the request (without actually creating the model).
  late final pulumi.Output<bool?> dryRun;

  /// Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabled for the model.
  late final pulumi.Output<String> filteringOption;

  /// The timestamp when the latest successful tune finished.
  late final pulumi.Output<String> lastTuneTime;
  late final pulumi.Output<String> location;

  /// Optional. Additional model features config.
  late final pulumi.Output<
    GoogleCloudRetailV2betaModelModelFeaturesConfigResponse
  >
  modelFeaturesConfig;

  /// The fully qualified resource name of the model. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}` catalog_id has char limit of 50. recommendation_model_id has char limit of 40.
  late final pulumi.Output<String> name;

  /// Optional. The optimization objective e.g. `cvr`. Currently supported values: `ctr`, `cvr`, `revenue-per-order`. If not specified, we choose default based on model type. Default depends on type of recommendation: `recommended-for-you` =&gt; `ctr` `others-you-may-like` =&gt; `ctr` `frequently-bought-together` =&gt; `revenue_per_order` This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  late final pulumi.Output<String> optimizationObjective;

  /// Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earlier use the `TuneModel` method. Default value is `PERIODIC_TUNING_ENABLED`.
  late final pulumi.Output<String> periodicTuningState;
  late final pulumi.Output<String> project;

  /// The list of valid serving configs associated with the PageOptimizationConfig.
  late final pulumi.Output<List<Map<String, dynamic>>> servingConfigLists;

  /// The serving state of the model: `ACTIVE`, `NOT_ACTIVE`.
  late final pulumi.Output<String> servingState;

  /// Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train model in order to control cost. If not specified: the default value for `CreateModel` method is `TRAINING`. The default value for `UpdateModel` method is to keep the state the same as before.
  late final pulumi.Output<String> trainingState;

  /// The tune operation associated with the model. Can be used to determine if there is an ongoing tune for this recommendation. Empty field implies no tune is goig on.
  late final pulumi.Output<String> tuningOperation;

  /// The type of model e.g. `home-page`. Currently supported values: `recommended-for-you`, `others-you-may-like`, `frequently-bought-together`, `page-optimization`, `similar-items`, `buy-it-again`, `on-sale-items`, and `recently-viewed`(readonly value). This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  late final pulumi.Output<String> type;

  /// Timestamp the Recommendation Model was last updated. E.g. if a Recommendation Model was paused - this would be the time the pause was initiated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [ModelRetailV2beta].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ModelRetailV2beta]. {@macro pulumi_retail_v2beta_model_retail_v2beta_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ModelRetailV2beta(
    String name, {
    ModelRetailV2betaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:retail/v2beta:Model',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    catalogId = registerOutput<String>('catalogId');
    createTime = registerOutput<String>('createTime');
    dataState = registerOutput<String>('dataState');
    displayName = registerOutput<String>('displayName');
    dryRun = registerOutput<bool?>('dryRun');
    filteringOption = registerOutput<String>('filteringOption');
    lastTuneTime = registerOutput<String>('lastTuneTime');
    location = registerOutput<String>('location');
    modelFeaturesConfig =
        registerOutput<GoogleCloudRetailV2betaModelModelFeaturesConfigResponse>(
          'modelFeaturesConfig',
        );
    this.name = registerOutput<String>('name');
    optimizationObjective = registerOutput<String>('optimizationObjective');
    periodicTuningState = registerOutput<String>('periodicTuningState');
    project = registerOutput<String>('project');
    servingConfigLists = registerOutput<List<Map<String, dynamic>>>(
      'servingConfigLists',
    );
    servingState = registerOutput<String>('servingState');
    trainingState = registerOutput<String>('trainingState');
    tuningOperation = registerOutput<String>('tuningOperation');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
