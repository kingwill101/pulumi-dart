// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_control_project_feature_config_auto_annotate_config_model.dart';

class GetControlProjectFeatureConfigAutoAnnotateConfig {
  /// The list of unique models used to generate annotations. Each model is identified by
  /// its 'name'.
  final pulumi.Input<List<GetControlProjectFeatureConfigAutoAnnotateConfigModel>> models;
  /// The geographic location (case-sensitive) where data is processed. Currently, only
  /// multi-region locations such as 'us', 'eu', or 'asia' are supported.
  ///
  /// To avoid duplicate billing, configure exactly one processing location for each bucket
  /// and model combination. If you configure multiple processing locations for the same
  /// bucket and model across different feature configurations, a separate annotation run is
  /// triggered in each location, and you're billed for each resulting annotation.
  final pulumi.Input<String> processingLocation;

  /// Creates a new [GetControlProjectFeatureConfigAutoAnnotateConfig].
  /// [models] The list of unique models used to generate annotations. Each model is identified by
  /// [processingLocation] The geographic location (case-sensitive) where data is processed. Currently, only
  const GetControlProjectFeatureConfigAutoAnnotateConfig({
    required this.models,
    required this.processingLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'models': pulumi.Input.mapInputValue<List<GetControlProjectFeatureConfigAutoAnnotateConfigModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<GetControlProjectFeatureConfigAutoAnnotateConfigModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'processingLocation': processingLocation,
    };
  }

  factory GetControlProjectFeatureConfigAutoAnnotateConfig.fromMap(Map<String, dynamic> map) {
    return GetControlProjectFeatureConfigAutoAnnotateConfig(
      models: pulumi.Input.fromValue(pulumi.Input.decodeList<GetControlProjectFeatureConfigAutoAnnotateConfigModel>(map['models']!, (value) => GetControlProjectFeatureConfigAutoAnnotateConfigModel.fromMap((value as Map).cast<String, dynamic>()))),
      processingLocation: pulumi.Input.fromValue(map['processingLocation'] as String),
    );
  }
}
