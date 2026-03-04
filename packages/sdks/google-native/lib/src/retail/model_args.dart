// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2_model_model_features_config.dart';
import 'model_filtering_option.dart';
import 'model_periodic_tuning_state.dart';
import 'model_training_state.dart';

/// {@template pulumi_retail_v2_model_args_doc}
/// The set of arguments for Model.
/// {@endtemplate}
/// {@macro pulumi_retail_v2_model_args_doc}
class ModelArgs {
  final pulumi.Input<String> catalogId;

  /// The display name of the model. Should be human readable, used to display Recommendation Models in the Retail Cloud Console Dashboard. UTF-8 encoded string with limit of 1024 characters.
  final pulumi.Input<String> displayName;

  /// Optional. Whether to run a dry run to validate the request (without actually creating the model).
  final pulumi.Input<bool>? dryRun;

  /// Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabled for the model.
  final pulumi.Input<ModelFilteringOption>? filteringOption;
  final pulumi.Input<String>? location;

  /// Optional. Additional model features config.
  final pulumi.Input<GoogleCloudRetailV2ModelModelFeaturesConfig>?
  modelFeaturesConfig;

  /// The fully qualified resource name of the model. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}` catalog_id has char limit of 50. recommendation_model_id has char limit of 40.
  final pulumi.Input<String>? name;

  /// Optional. The optimization objective e.g. `cvr`. Currently supported values: `ctr`, `cvr`, `revenue-per-order`. If not specified, we choose default based on model type. Default depends on type of recommendation: `recommended-for-you` =&gt; `ctr` `others-you-may-like` =&gt; `ctr` `frequently-bought-together` =&gt; `revenue_per_order` This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  final pulumi.Input<String>? optimizationObjective;

  /// Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earlier use the `TuneModel` method. Default value is `PERIODIC_TUNING_ENABLED`.
  final pulumi.Input<ModelPeriodicTuningState>? periodicTuningState;
  final pulumi.Input<String>? project;

  /// Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train model in order to control cost. If not specified: the default value for `CreateModel` method is `TRAINING`. The default value for `UpdateModel` method is to keep the state the same as before.
  final pulumi.Input<ModelTrainingState>? trainingState;

  /// The type of model e.g. `home-page`. Currently supported values: `recommended-for-you`, `others-you-may-like`, `frequently-bought-together`, `page-optimization`, `similar-items`, `buy-it-again`, `on-sale-items`, and `recently-viewed`(readonly value). This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  final pulumi.Input<String> type;

  /// Creates a new [ModelArgs].
  /// [catalogId] Required.
  /// [displayName] The display name of the model. Should be human readable, used to display Recommendation Models in the Retail Cloud Console Dashboard. UTF-8 encoded string with limit of 1024 characters.
  /// [dryRun] Optional. Whether to run a dry run to validate the request (without actually creating the model).
  /// [filteringOption] Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabled for the model.
  /// [location] Optional.
  /// [modelFeaturesConfig] Optional. Additional model features config.
  /// [name] The fully qualified resource name of the model. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}` catalog_id has char limit of 50. recommendation_model_id has char limit of 40.
  /// [optimizationObjective] Optional. The optimization objective e.g. `cvr`. Currently supported values: `ctr`, `cvr`, `revenue-per-order`. If not specified, we choose default based on model type. Default depends on type of recommendation: `recommended-for-you` =&gt; `ctr` `others-you-may-like` =&gt; `ctr` `frequently-bought-together` =&gt; `revenue_per_order` This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  /// [periodicTuningState] Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earlier use the `TuneModel` method. Default value is `PERIODIC_TUNING_ENABLED`.
  /// [project] Optional.
  /// [trainingState] Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train model in order to control cost. If not specified: the default value for `CreateModel` method is `TRAINING`. The default value for `UpdateModel` method is to keep the state the same as before.
  /// [type] The type of model e.g. `home-page`. Currently supported values: `recommended-for-you`, `others-you-may-like`, `frequently-bought-together`, `page-optimization`, `similar-items`, `buy-it-again`, `on-sale-items`, and `recently-viewed`(readonly value). This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  ModelArgs({
    required this.catalogId,
    required this.displayName,
    this.dryRun,
    this.filteringOption,
    this.location,
    this.modelFeaturesConfig,
    this.name,
    this.optimizationObjective,
    this.periodicTuningState,
    this.project,
    this.trainingState,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'displayName': displayName,
      'dryRun': ?dryRun,
      'filteringOption':
          ?pulumi.Input.mapOptionalInputValue<ModelFilteringOption, String>(
            filteringOption,
            (value) => value.wireValue,
          ),
      'location': ?location,
      'modelFeaturesConfig':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleCloudRetailV2ModelModelFeaturesConfig,
            Map<String, dynamic>
          >(modelFeaturesConfig, (value) => value.toMap()),
      'name': ?name,
      'optimizationObjective': ?optimizationObjective,
      'periodicTuningState':
          ?pulumi.Input.mapOptionalInputValue<ModelPeriodicTuningState, String>(
            periodicTuningState,
            (value) => value.wireValue,
          ),
      'project': ?project,
      'trainingState':
          ?pulumi.Input.mapOptionalInputValue<ModelTrainingState, String>(
            trainingState,
            (value) => value.wireValue,
          ),
      'type': type,
    };
  }

  factory ModelArgs.fromMap(Map<String, dynamic> map) {
    return ModelArgs(
      catalogId: pulumi.Input.fromValue(map['catalogId'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      filteringOption: (() {
        final guardedValue = map['filteringOption'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ModelFilteringOption.fromValue(guardedValue as String),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      modelFeaturesConfig: (() {
        final guardedValue = map['modelFeaturesConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleCloudRetailV2ModelModelFeaturesConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      optimizationObjective: (() {
        final guardedValue = map['optimizationObjective'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      periodicTuningState: (() {
        final guardedValue = map['periodicTuningState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ModelPeriodicTuningState.fromValue(guardedValue as String),
        );
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      trainingState: (() {
        final guardedValue = map['trainingState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ModelTrainingState.fromValue(guardedValue as String),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
