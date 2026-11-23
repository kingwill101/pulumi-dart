// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_training_pipeline_input_data_config_bigquery_destination.dart';
import 'ai_training_pipeline_input_data_config_filter_split.dart';
import 'ai_training_pipeline_input_data_config_fraction_split.dart';
import 'ai_training_pipeline_input_data_config_gcs_destination.dart';
import 'ai_training_pipeline_input_data_config_predefined_split.dart';
import 'ai_training_pipeline_input_data_config_stratified_split.dart';
import 'ai_training_pipeline_input_data_config_timestamp_split.dart';

class AiTrainingPipelineInputDataConfig {
  /// Applicable only to custom training with Datasets that have DataItems and Annotations. Cloud Storage URI that points to a YAML file describing the annotation schema.
  final pulumi.Input<String?>? annotationSchemaUri;
  /// Applicable only to Datasets that have DataItems and Annotations. A filter on Annotations of the Dataset.
  final pulumi.Input<String?>? annotationsFilter;
  /// The BigQuery location where the training data is to be written to.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineInputDataConfigBigqueryDestination?>? bigqueryDestination;
  /// The ID of the Dataset in the same Project and Location which data will be used to train the Model.
  final pulumi.Input<String> datasetId;
  /// Assigns input data to training, validation, and test sets based on the given filters.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineInputDataConfigFilterSplit?>? filterSplit;
  /// The instructions how the input data should be split between the training, validation and test sets.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineInputDataConfigFractionSplit?>? fractionSplit;
  /// The Cloud Storage location where the training data is to be written to.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineInputDataConfigGcsDestination?>? gcsDestination;
  /// Whether to persist the ML use assignment to data item system labels.
  final pulumi.Input<bool?>? persistMlUseAssignment;
  /// Assigns input data to training, validation, and test sets based on the value of a provided key. Supported only for tabular Datasets.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineInputDataConfigPredefinedSplit?>? predefinedSplit;
  /// Only applicable to Datasets that have SavedQueries. The ID of a SavedQuery under the Dataset specified by datasetId used for filtering Annotations for training.
  final pulumi.Input<String?>? savedQueryId;
  /// Assigns input data to the training, validation, and test sets so that the distribution of values found in the categorical column is mirrored within each split. Supported only for tabular Datasets.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineInputDataConfigStratifiedSplit?>? stratifiedSplit;
  /// Assigns input data to training, validation, and test sets based on provided timestamps. Supported only for tabular Datasets.
  /// Structure is documented below.
  final pulumi.Input<AiTrainingPipelineInputDataConfigTimestampSplit?>? timestampSplit;

  /// Creates a new [AiTrainingPipelineInputDataConfig].
  /// [annotationSchemaUri] Applicable only to custom training with Datasets that have DataItems and Annotations. Cloud Storage URI that points to a YAML file describing the annotation schema.
  /// [annotationsFilter] Applicable only to Datasets that have DataItems and Annotations. A filter on Annotations of the Dataset.
  /// [bigqueryDestination] The BigQuery location where the training data is to be written to.
  /// [datasetId] The ID of the Dataset in the same Project and Location which data will be used to train the Model.
  /// [filterSplit] Assigns input data to training, validation, and test sets based on the given filters.
  /// [fractionSplit] The instructions how the input data should be split between the training, validation and test sets.
  /// [gcsDestination] The Cloud Storage location where the training data is to be written to.
  /// [persistMlUseAssignment] Whether to persist the ML use assignment to data item system labels.
  /// [predefinedSplit] Assigns input data to training, validation, and test sets based on the value of a provided key. Supported only for tabular Datasets.
  /// [savedQueryId] Only applicable to Datasets that have SavedQueries. The ID of a SavedQuery under the Dataset specified by datasetId used for filtering Annotations for training.
  /// [stratifiedSplit] Assigns input data to the training, validation, and test sets so that the distribution of values found in the categorical column is mirrored within each split. Supported only for tabular Datasets.
  /// [timestampSplit] Assigns input data to training, validation, and test sets based on provided timestamps. Supported only for tabular Datasets.
  const AiTrainingPipelineInputDataConfig({
    this.annotationSchemaUri,
    this.annotationsFilter,
    this.bigqueryDestination,
    required this.datasetId,
    this.filterSplit,
    this.fractionSplit,
    this.gcsDestination,
    this.persistMlUseAssignment,
    this.predefinedSplit,
    this.savedQueryId,
    this.stratifiedSplit,
    this.timestampSplit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationSchemaUri': ?annotationSchemaUri,
      'annotationsFilter': ?annotationsFilter,
      'bigqueryDestination': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineInputDataConfigBigqueryDestination, Map<String, dynamic>>(bigqueryDestination, (value) => value.toMap()),
      'datasetId': datasetId,
      'filterSplit': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineInputDataConfigFilterSplit, Map<String, dynamic>>(filterSplit, (value) => value.toMap()),
      'fractionSplit': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineInputDataConfigFractionSplit, Map<String, dynamic>>(fractionSplit, (value) => value.toMap()),
      'gcsDestination': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineInputDataConfigGcsDestination, Map<String, dynamic>>(gcsDestination, (value) => value.toMap()),
      'persistMlUseAssignment': ?persistMlUseAssignment,
      'predefinedSplit': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineInputDataConfigPredefinedSplit, Map<String, dynamic>>(predefinedSplit, (value) => value.toMap()),
      'savedQueryId': ?savedQueryId,
      'stratifiedSplit': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineInputDataConfigStratifiedSplit, Map<String, dynamic>>(stratifiedSplit, (value) => value.toMap()),
      'timestampSplit': ?pulumi.Input.mapOptionalInputValue<AiTrainingPipelineInputDataConfigTimestampSplit, Map<String, dynamic>>(timestampSplit, (value) => value.toMap()),
    };
  }

  factory AiTrainingPipelineInputDataConfig.fromMap(Map<String, dynamic> map) {
    return AiTrainingPipelineInputDataConfig(
      annotationSchemaUri: (() { final guardedValue = map['annotationSchemaUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      annotationsFilter: (() { final guardedValue = map['annotationsFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bigqueryDestination: (() { final guardedValue = map['bigqueryDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineInputDataConfigBigqueryDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      filterSplit: (() { final guardedValue = map['filterSplit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineInputDataConfigFilterSplit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fractionSplit: (() { final guardedValue = map['fractionSplit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineInputDataConfigFractionSplit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcsDestination: (() { final guardedValue = map['gcsDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineInputDataConfigGcsDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      persistMlUseAssignment: (() { final guardedValue = map['persistMlUseAssignment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      predefinedSplit: (() { final guardedValue = map['predefinedSplit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineInputDataConfigPredefinedSplit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      savedQueryId: (() { final guardedValue = map['savedQueryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stratifiedSplit: (() { final guardedValue = map['stratifiedSplit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineInputDataConfigStratifiedSplit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timestampSplit: (() { final guardedValue = map['timestampSplit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiTrainingPipelineInputDataConfigTimestampSplit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
