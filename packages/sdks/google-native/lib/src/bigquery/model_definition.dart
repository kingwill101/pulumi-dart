// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bqml_training_run.dart';
import 'model_definition_model_options.dart';

class ModelDefinition {
  /// [Output-only, Beta] Model options used for the first training run. These options are immutable for subsequent training runs. Default values are used for any options not specified in the input query.
  final pulumi.Input<ModelDefinitionModelOptions>? modelOptions;
  /// [Output-only, Beta] Information about ml training runs, each training run comprises of multiple iterations and there may be multiple training runs for the model if warm start is used or if a user decides to continue a previously cancelled query.
  final pulumi.Input<List<BqmlTrainingRun>>? trainingRuns;

  /// Creates a new [ModelDefinition].
  /// [modelOptions] [Output-only, Beta] Model options used for the first training run. These options are immutable for subsequent training runs. Default values are used for any options not specified in the input query.
  /// [trainingRuns] [Output-only, Beta] Information about ml training runs, each training run comprises of multiple iterations and there may be multiple training runs for the model if warm start is used or if a user decides to continue a previously cancelled query.
  ModelDefinition({
    this.modelOptions,
    this.trainingRuns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelOptions': ?pulumi.Input.mapOptionalInputValue<ModelDefinitionModelOptions, Map<String, dynamic>>(modelOptions, (value) => value.toMap()),
      'trainingRuns': ?pulumi.Input.mapOptionalInputValue<List<BqmlTrainingRun>, List<Map<String, dynamic>>>(trainingRuns, (value) => pulumi.Input.encodeList<BqmlTrainingRun, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ModelDefinition.fromMap(Map<String, dynamic> map) {
    return ModelDefinition(
      modelOptions: map['modelOptions'] == null ? null : (ModelDefinitionModelOptions.fromMap((map['modelOptions']! as Map).cast<String, dynamic>())).input(),
      trainingRuns: map['trainingRuns'] == null ? null : (pulumi.Input.decodeList<BqmlTrainingRun>(map['trainingRuns']!, (value) => BqmlTrainingRun.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

