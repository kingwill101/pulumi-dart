// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'control_project_feature_config_auto_annotate_config_model.dart';

class ControlProjectFeatureConfigAutoAnnotateConfig {
  /// The list of unique models used to generate annotations. Each model is identified by
  /// its `name`.
  /// Structure is documented below.
  final pulumi.Input<List<ControlProjectFeatureConfigAutoAnnotateConfigModel>> models;
  /// The geographic location (case-sensitive) where data is processed. Currently, only
  /// multi-region locations such as `us`, `eu`, or `asia` are supported.
  /// To avoid duplicate billing, configure exactly one processing location for each bucket
  /// and model combination. If you configure multiple processing locations for the same
  /// bucket and model across different feature configurations, a separate annotation run is
  /// triggered in each location, and you're billed for each resulting annotation.
  final pulumi.Input<String> processingLocation;

  /// Creates a new [ControlProjectFeatureConfigAutoAnnotateConfig].
  /// [models] The list of unique models used to generate annotations. Each model is identified by
  /// [processingLocation] The geographic location (case-sensitive) where data is processed. Currently, only
  const ControlProjectFeatureConfigAutoAnnotateConfig({
    required this.models,
    required this.processingLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'models': pulumi.Input.mapInputValue<List<ControlProjectFeatureConfigAutoAnnotateConfigModel>, List<Map<String, dynamic>>>(models, (value) => pulumi.Input.encodeList<ControlProjectFeatureConfigAutoAnnotateConfigModel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'processingLocation': processingLocation,
    };
  }

  factory ControlProjectFeatureConfigAutoAnnotateConfig.fromMap(Map<String, dynamic> map) {
    return ControlProjectFeatureConfigAutoAnnotateConfig(
      models: pulumi.Input.fromValue(pulumi.Input.decodeList<ControlProjectFeatureConfigAutoAnnotateConfigModel>(map['models']!, (value) => ControlProjectFeatureConfigAutoAnnotateConfigModel.fromMap((value as Map).cast<String, dynamic>()))),
      processingLocation: pulumi.Input.fromValue(map['processingLocation'] as String),
    );
  }
}
