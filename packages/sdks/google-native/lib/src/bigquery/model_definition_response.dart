// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bqml_training_run_response.dart';
import 'model_definition_model_options_response.dart';

class ModelDefinitionResponse {
  /// [Output-only, Beta] Model options used for the first training run. These options are immutable for subsequent training runs. Default values are used for any options not specified in the input query.
  final pulumi.Input<ModelDefinitionModelOptionsResponse> modelOptions;
  /// [Output-only, Beta] Information about ml training runs, each training run comprises of multiple iterations and there may be multiple training runs for the model if warm start is used or if a user decides to continue a previously cancelled query.
  final pulumi.Input<List<BqmlTrainingRunResponse>> trainingRuns;

  /// Creates a new [ModelDefinitionResponse].
  /// [modelOptions] [Output-only, Beta] Model options used for the first training run. These options are immutable for subsequent training runs. Default values are used for any options not specified in the input query.
  /// [trainingRuns] [Output-only, Beta] Information about ml training runs, each training run comprises of multiple iterations and there may be multiple training runs for the model if warm start is used or if a user decides to continue a previously cancelled query.
  const ModelDefinitionResponse({
    required this.modelOptions,
    required this.trainingRuns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelOptions': pulumi.Input.mapInputValue<ModelDefinitionModelOptionsResponse, Map<String, dynamic>>(modelOptions, (value) => value.toMap()),
      'trainingRuns': pulumi.Input.mapInputValue<List<BqmlTrainingRunResponse>, List<Map<String, dynamic>>>(trainingRuns, (value) => pulumi.Input.encodeList<BqmlTrainingRunResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ModelDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ModelDefinitionResponse(
      modelOptions: pulumi.Input.fromValue(ModelDefinitionModelOptionsResponse.fromMap((map['modelOptions']! as Map).cast<String, dynamic>())),
      trainingRuns: pulumi.Input.fromValue(pulumi.Input.decodeList<BqmlTrainingRunResponse>(map['trainingRuns']!, (value) => BqmlTrainingRunResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

