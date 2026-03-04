// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_retail_v2alpha_model_model_features_config_response.dart';
import 'google_cloud_retail_v2alpha_model_page_optimization_config_response.dart';
import 'google_cloud_retail_v2alpha_model_serving_config_list_response.dart';

/// Result data returned by getModel.
class GetModelRetailV2alphaResult {
  /// Timestamp the Recommendation Model was created at.
  final String createTime;

  /// The state of data requirements for this model: `DATA_OK` and `DATA_ERROR`. Recommendation model cannot be trained if the data is in `DATA_ERROR` state. Recommendation model can have `DATA_ERROR` state even if serving state is `ACTIVE`: models were trained successfully before, but cannot be refreshed because model no longer has sufficient data for training.
  final String dataState;

  /// The display name of the model. Should be human readable, used to display Recommendation Models in the Retail Cloud Console Dashboard. UTF-8 encoded string with limit of 1024 characters.
  final String displayName;

  /// Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabled for the model.
  final String filteringOption;

  /// The timestamp when the latest successful tune finished.
  final String lastTuneTime;

  /// Optional. Additional model features config.
  final GoogleCloudRetailV2alphaModelModelFeaturesConfigResponse
  modelFeaturesConfig;

  /// The fully qualified resource name of the model. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}` catalog_id has char limit of 50. recommendation_model_id has char limit of 40.
  final String name;

  /// Optional. The optimization objective e.g. `cvr`. Currently supported values: `ctr`, `cvr`, `revenue-per-order`. If not specified, we choose default based on model type. Default depends on type of recommendation: `recommended-for-you` =&gt; `ctr` `others-you-may-like` =&gt; `ctr` `frequently-bought-together` =&gt; `revenue_per_order` This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  final String optimizationObjective;

  /// Optional. The page optimization config.
  final GoogleCloudRetailV2alphaModelPageOptimizationConfigResponse
  pageOptimizationConfig;

  /// Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earlier use the `TuneModel` method. Default value is `PERIODIC_TUNING_ENABLED`.
  final String periodicTuningState;

  /// The list of valid serving configs associated with the PageOptimizationConfig.
  final List<GoogleCloudRetailV2alphaModelServingConfigListResponse>
  servingConfigLists;

  /// The serving state of the model: `ACTIVE`, `NOT_ACTIVE`.
  final String servingState;

  /// Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train model in order to control cost. If not specified: the default value for `CreateModel` method is `TRAINING`. The default value for `UpdateModel` method is to keep the state the same as before.
  final String trainingState;

  /// The tune operation associated with the model. Can be used to determine if there is an ongoing tune for this recommendation. Empty field implies no tune is goig on.
  final String tuningOperation;

  /// The type of model e.g. `home-page`. Currently supported values: `recommended-for-you`, `others-you-may-like`, `frequently-bought-together`, `page-optimization`, `similar-items`, `buy-it-again`, `on-sale-items`, and `recently-viewed`(readonly value). This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  final String type;

  /// Timestamp the Recommendation Model was last updated. E.g. if a Recommendation Model was paused - this would be the time the pause was initiated.
  final String updateTime;

  /// Creates a new [GetModelRetailV2alphaResult].
  /// [createTime] Timestamp the Recommendation Model was created at.
  /// [dataState] The state of data requirements for this model: `DATA_OK` and `DATA_ERROR`. Recommendation model cannot be trained if the data is in `DATA_ERROR` state. Recommendation model can have `DATA_ERROR` state even if serving state is `ACTIVE`: models were trained successfully before, but cannot be refreshed because model no longer has sufficient data for training.
  /// [displayName] The display name of the model. Should be human readable, used to display Recommendation Models in the Retail Cloud Console Dashboard. UTF-8 encoded string with limit of 1024 characters.
  /// [filteringOption] Optional. If `RECOMMENDATIONS_FILTERING_ENABLED`, recommendation filtering by attributes is enabled for the model.
  /// [lastTuneTime] The timestamp when the latest successful tune finished.
  /// [modelFeaturesConfig] Optional. Additional model features config.
  /// [name] The fully qualified resource name of the model. Format: `projects/{project_number}/locations/{location_id}/catalogs/{catalog_id}/models/{model_id}` catalog_id has char limit of 50. recommendation_model_id has char limit of 40.
  /// [optimizationObjective] Optional. The optimization objective e.g. `cvr`. Currently supported values: `ctr`, `cvr`, `revenue-per-order`. If not specified, we choose default based on model type. Default depends on type of recommendation: `recommended-for-you` =&gt; `ctr` `others-you-may-like` =&gt; `ctr` `frequently-bought-together` =&gt; `revenue_per_order` This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  /// [pageOptimizationConfig] Optional. The page optimization config.
  /// [periodicTuningState] Optional. The state of periodic tuning. The period we use is 3 months - to do a one-off tune earlier use the `TuneModel` method. Default value is `PERIODIC_TUNING_ENABLED`.
  /// [servingConfigLists] The list of valid serving configs associated with the PageOptimizationConfig.
  /// [servingState] The serving state of the model: `ACTIVE`, `NOT_ACTIVE`.
  /// [trainingState] Optional. The training state that the model is in (e.g. `TRAINING` or `PAUSED`). Since part of the cost of running the service is frequency of training - this can be used to determine when to train model in order to control cost. If not specified: the default value for `CreateModel` method is `TRAINING`. The default value for `UpdateModel` method is to keep the state the same as before.
  /// [tuningOperation] The tune operation associated with the model. Can be used to determine if there is an ongoing tune for this recommendation. Empty field implies no tune is goig on.
  /// [type] The type of model e.g. `home-page`. Currently supported values: `recommended-for-you`, `others-you-may-like`, `frequently-bought-together`, `page-optimization`, `similar-items`, `buy-it-again`, `on-sale-items`, and `recently-viewed`(readonly value). This field together with optimization_objective describe model metadata to use to control model training and serving. See https://cloud.google.com/retail/docs/models for more details on what the model metadata control and which combination of parameters are valid. For invalid combinations of parameters (e.g. type = `frequently-bought-together` and optimization_objective = `ctr`), you receive an error 400 if you try to create/update a recommendation with this set of knobs.
  /// [updateTime] Timestamp the Recommendation Model was last updated. E.g. if a Recommendation Model was paused - this would be the time the pause was initiated.
  GetModelRetailV2alphaResult({
    required this.createTime,
    required this.dataState,
    required this.displayName,
    required this.filteringOption,
    required this.lastTuneTime,
    required this.modelFeaturesConfig,
    required this.name,
    required this.optimizationObjective,
    required this.pageOptimizationConfig,
    required this.periodicTuningState,
    required this.servingConfigLists,
    required this.servingState,
    required this.trainingState,
    required this.tuningOperation,
    required this.type,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'dataState': dataState,
      'displayName': displayName,
      'filteringOption': filteringOption,
      'lastTuneTime': lastTuneTime,
      'modelFeaturesConfig': modelFeaturesConfig.toMap(),
      'name': name,
      'optimizationObjective': optimizationObjective,
      'pageOptimizationConfig': pageOptimizationConfig.toMap(),
      'periodicTuningState': periodicTuningState,
      'servingConfigLists':
          pulumi.Input.encodeList<
            GoogleCloudRetailV2alphaModelServingConfigListResponse,
            Map<String, dynamic>
          >(servingConfigLists, (value) => value.toMap()),
      'servingState': servingState,
      'trainingState': trainingState,
      'tuningOperation': tuningOperation,
      'type': type,
      'updateTime': updateTime,
    };
  }

  factory GetModelRetailV2alphaResult.fromMap(Map<String, dynamic> map) {
    return GetModelRetailV2alphaResult(
      createTime: map['createTime'] as String,
      dataState: map['dataState'] as String,
      displayName: map['displayName'] as String,
      filteringOption: map['filteringOption'] as String,
      lastTuneTime: map['lastTuneTime'] as String,
      modelFeaturesConfig:
          GoogleCloudRetailV2alphaModelModelFeaturesConfigResponse.fromMap(
            (map['modelFeaturesConfig']! as Map).cast<String, dynamic>(),
          ),
      name: map['name'] as String,
      optimizationObjective: map['optimizationObjective'] as String,
      pageOptimizationConfig:
          GoogleCloudRetailV2alphaModelPageOptimizationConfigResponse.fromMap(
            (map['pageOptimizationConfig']! as Map).cast<String, dynamic>(),
          ),
      periodicTuningState: map['periodicTuningState'] as String,
      servingConfigLists:
          pulumi.Input.decodeList<
            GoogleCloudRetailV2alphaModelServingConfigListResponse
          >(
            map['servingConfigLists']!,
            (value) =>
                GoogleCloudRetailV2alphaModelServingConfigListResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      servingState: map['servingState'] as String,
      trainingState: map['trainingState'] as String,
      tuningOperation: map['tuningOperation'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
