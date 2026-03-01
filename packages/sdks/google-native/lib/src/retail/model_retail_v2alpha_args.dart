// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2alpha_model_model_features_config.dart';
import 'google_cloud_retail_v2alpha_model_page_optimization_config.dart';
import 'model_filtering_option_retail_v2alpha.dart';
import 'model_periodic_tuning_state_retail_v2alpha.dart';
import 'model_training_state_retail_v2alpha.dart';

/// {@template pulumi_retail_v2alpha_model_retail_v2alpha_args_doc}
/// The set of arguments for Model.
/// {@endtemplate}
/// {@macro pulumi_retail_v2alpha_model_retail_v2alpha_args_doc}
class ModelRetailV2alphaArgs {
  final pulumi.Input<String> catalogId;
  /// The display name of the model. Should be human readable, used to display Recommendation Models in the Retail Cloud Console Dashboard. UTF-8 encoded string with limit of 1024 characters.
  final pulumi.Input<String> displayName;
  /// Optional. Whether to run a dry run to validate the request (without actually creating the model).
  final pulumi.Input<bool>? dryRun;
  /// Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabled for the model.
  final pulumi.Input<ModelFilteringOptionRetailV2alpha>? filteringOption;
  final pulumi.Input<String>? location;
  /// Optional. Additional model features config.
  final pulumi.Input<GoogleCloudRetailV2alphaModelModelFeaturesConfig>? modelFeaturesConfig;
  /// The fully qualified resource name of the model. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}` catalog_id has char limit of 50. recommendation_model_id has char limit of 40.
  final pulumi.Input<String>? name;
  /// Optional. The optimization objective e.g. `cvr`. Currently supported values: `ctr`, `cvr`, `revenue-per-order`. If not specified, we choose default based on model type. Default depends on type of recommendation: `recommended-for-you` => `ctr` `others-you-may-like` => `ctr` `frequently-bought-together` => `revenue_per_order` This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  final pulumi.Input<String>? optimizationObjective;
  /// Optional. The page optimization config.
  final pulumi.Input<GoogleCloudRetailV2alphaModelPageOptimizationConfig>? pageOptimizationConfig;
  /// Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earlier use the `TuneModel` method. Default value is `PERIODIC_TUNING_ENABLED`.
  final pulumi.Input<ModelPeriodicTuningStateRetailV2alpha>? periodicTuningState;
  final pulumi.Input<String>? project;
  /// Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train model in order to control cost. If not specified: the default value for `CreateModel` method is `TRAINING`. The default value for `UpdateModel` method is to keep the state the same as before.
  final pulumi.Input<ModelTrainingStateRetailV2alpha>? trainingState;
  /// The type of model e.g. `home-page`. Currently supported values: `recommended-for-you`, `others-you-may-like`, `frequently-bought-together`, `page-optimization`, `similar-items`, `buy-it-again`, `on-sale-items`, and `recently-viewed`(readonly value). This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  final pulumi.Input<String> type;

  /// Creates a new [ModelRetailV2alphaArgs].
  /// [catalogId] Required.
  /// [displayName] The display name of the model. Should be human readable, used to display Recommendation Models in the Retail Cloud Console Dashboard. UTF-8 encoded string with limit of 1024 characters.
  /// [dryRun] Optional. Whether to run a dry run to validate the request (without actually creating the model).
  /// [filteringOption] Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabled for the model.
  /// [location] Optional.
  /// [modelFeaturesConfig] Optional. Additional model features config.
  /// [name] The fully qualified resource name of the model. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}` catalog_id has char limit of 50. recommendation_model_id has char limit of 40.
  /// [optimizationObjective] Optional. The optimization objective e.g. `cvr`. Currently supported values: `ctr`, `cvr`, `revenue-per-order`. If not specified, we choose default based on model type. Default depends on type of recommendation: `recommended-for-you` => `ctr` `others-you-may-like` => `ctr` `frequently-bought-together` => `revenue_per_order` This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  /// [pageOptimizationConfig] Optional. The page optimization config.
  /// [periodicTuningState] Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earlier use the `TuneModel` method. Default value is `PERIODIC_TUNING_ENABLED`.
  /// [project] Optional.
  /// [trainingState] Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train model in order to control cost. If not specified: the default value for `CreateModel` method is `TRAINING`. The default value for `UpdateModel` method is to keep the state the same as before.
  /// [type] The type of model e.g. `home-page`. Currently supported values: `recommended-for-you`, `others-you-may-like`, `frequently-bought-together`, `page-optimization`, `similar-items`, `buy-it-again`, `on-sale-items`, and `recently-viewed`(readonly value). This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  ModelRetailV2alphaArgs({
    required pulumi.Output<String> catalogId,
    required pulumi.Output<String> displayName,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<ModelFilteringOptionRetailV2alpha>? filteringOption,
    pulumi.Output<String>? location,
    pulumi.Output<GoogleCloudRetailV2alphaModelModelFeaturesConfig>? modelFeaturesConfig,
    pulumi.Output<String>? name,
    pulumi.Output<String>? optimizationObjective,
    pulumi.Output<GoogleCloudRetailV2alphaModelPageOptimizationConfig>? pageOptimizationConfig,
    pulumi.Output<ModelPeriodicTuningStateRetailV2alpha>? periodicTuningState,
    pulumi.Output<String>? project,
    pulumi.Output<ModelTrainingStateRetailV2alpha>? trainingState,
    required pulumi.Output<String> type,
  }) :
      catalogId = pulumi.Input.asInput<String>(catalogId),
      displayName = pulumi.Input.asInput<String>(displayName),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      filteringOption = pulumi.Input.asOptionalInput<ModelFilteringOptionRetailV2alpha>(filteringOption),
      location = pulumi.Input.asOptionalInput<String>(location),
      modelFeaturesConfig = pulumi.Input.asOptionalInput<GoogleCloudRetailV2alphaModelModelFeaturesConfig>(modelFeaturesConfig),
      name = pulumi.Input.asOptionalInput<String>(name),
      optimizationObjective = pulumi.Input.asOptionalInput<String>(optimizationObjective),
      pageOptimizationConfig = pulumi.Input.asOptionalInput<GoogleCloudRetailV2alphaModelPageOptimizationConfig>(pageOptimizationConfig),
      periodicTuningState = pulumi.Input.asOptionalInput<ModelPeriodicTuningStateRetailV2alpha>(periodicTuningState),
      project = pulumi.Input.asOptionalInput<String>(project),
      trainingState = pulumi.Input.asOptionalInput<ModelTrainingStateRetailV2alpha>(trainingState),
      type = pulumi.Input.asInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'displayName': displayName,
      'dryRun': ?dryRun,
      'filteringOption': ?pulumi.Input.mapOptionalInputValue<ModelFilteringOptionRetailV2alpha, String>(filteringOption, (value) => value.value),
      'location': ?location,
      'modelFeaturesConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaModelModelFeaturesConfig, Map<String, dynamic>>(modelFeaturesConfig, (value) => value.toMap()),
      'name': ?name,
      'optimizationObjective': ?optimizationObjective,
      'pageOptimizationConfig': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRetailV2alphaModelPageOptimizationConfig, Map<String, dynamic>>(pageOptimizationConfig, (value) => value.toMap()),
      'periodicTuningState': ?pulumi.Input.mapOptionalInputValue<ModelPeriodicTuningStateRetailV2alpha, String>(periodicTuningState, (value) => value.value),
      'project': ?project,
      'trainingState': ?pulumi.Input.mapOptionalInputValue<ModelTrainingStateRetailV2alpha, String>(trainingState, (value) => value.value),
      'type': type,
    };
  }

  factory ModelRetailV2alphaArgs.fromMap(Map<String, dynamic> map) {
    return ModelRetailV2alphaArgs(
      catalogId: pulumi.Output.create<String>(map['catalogId'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      filteringOption: map['filteringOption'] == null ? null : pulumi.Output.create<ModelFilteringOptionRetailV2alpha>(ModelFilteringOptionRetailV2alpha.fromValue(map['filteringOption'] as String)),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      modelFeaturesConfig: map['modelFeaturesConfig'] == null ? null : pulumi.Output.create<GoogleCloudRetailV2alphaModelModelFeaturesConfig>(GoogleCloudRetailV2alphaModelModelFeaturesConfig.fromMap((map['modelFeaturesConfig'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      optimizationObjective: map['optimizationObjective'] == null ? null : pulumi.Output.create<String>(map['optimizationObjective'] as String),
      pageOptimizationConfig: map['pageOptimizationConfig'] == null ? null : pulumi.Output.create<GoogleCloudRetailV2alphaModelPageOptimizationConfig>(GoogleCloudRetailV2alphaModelPageOptimizationConfig.fromMap((map['pageOptimizationConfig'] as Map).cast<String, dynamic>())),
      periodicTuningState: map['periodicTuningState'] == null ? null : pulumi.Output.create<ModelPeriodicTuningStateRetailV2alpha>(ModelPeriodicTuningStateRetailV2alpha.fromValue(map['periodicTuningState'] as String)),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      trainingState: map['trainingState'] == null ? null : pulumi.Output.create<ModelTrainingStateRetailV2alpha>(ModelTrainingStateRetailV2alpha.fromValue(map['trainingState'] as String)),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

