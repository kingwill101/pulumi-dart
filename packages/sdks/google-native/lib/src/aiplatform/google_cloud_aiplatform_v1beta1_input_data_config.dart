// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_aiplatform_v1beta1_big_query_destination.dart';
import 'google_cloud_aiplatform_v1beta1_filter_split.dart';
import 'google_cloud_aiplatform_v1beta1_fraction_split.dart';
import 'google_cloud_aiplatform_v1beta1_gcs_destination.dart';
import 'google_cloud_aiplatform_v1beta1_predefined_split.dart';
import 'google_cloud_aiplatform_v1beta1_stratified_split.dart';
import 'google_cloud_aiplatform_v1beta1_timestamp_split.dart';

/// Specifies Vertex AI owned input data to be used for training, and possibly evaluating, the Model.
class GoogleCloudAiplatformV1beta1InputDataConfig {
  /// Applicable only to custom training with Datasets that have DataItems and Annotations. Cloud Storage URI that points to a YAML file describing the annotation schema. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/annotation/ , note that the chosen schema must be consistent with metadata of the Dataset specified by dataset_id. Only Annotations that both match this schema and belong to DataItems not ignored by the split method are used in respectively training, validation or test role, depending on the role of the DataItem they are on. When used in conjunction with annotations_filter, the Annotations used for training are filtered by both annotations_filter and annotation_schema_uri.
  final pulumi.Input<String>? annotationSchemaUri;
  /// Applicable only to Datasets that have DataItems and Annotations. A filter on Annotations of the Dataset. Only Annotations that both match this filter and belong to DataItems not ignored by the split method are used in respectively training, validation or test role, depending on the role of the DataItem they are on (for the auto-assigned that role is decided by Vertex AI). A filter with same syntax as the one used in ListAnnotations may be used, but note here it filters across all Annotations of the Dataset, and not just within a single DataItem.
  final pulumi.Input<String>? annotationsFilter;
  /// Only applicable to custom training with tabular Dataset with BigQuery source. The BigQuery project location where the training data is to be written to. In the given project a new dataset is created with name `dataset___` where timestamp is in YYYY_MM_DDThh_mm_ss_sssZ format. All training input data is written into that dataset. In the dataset three tables are created, `training`, `validation` and `test`. * AIP_DATA_FORMAT = "bigquery". * AIP_TRAINING_DATA_URI = "bigquery_destination.dataset___.training" * AIP_VALIDATION_DATA_URI = "bigquery_destination.dataset___.validation" * AIP_TEST_DATA_URI = "bigquery_destination.dataset___.test"
  final pulumi.Input<GoogleCloudAiplatformV1beta1BigQueryDestination>? bigqueryDestination;
  /// The ID of the Dataset in the same Project and Location which data will be used to train the Model. The Dataset must use schema compatible with Model being trained, and what is compatible should be described in the used TrainingPipeline's training_task_definition. For tabular Datasets, all their data is exported to training, to pick and choose from.
  final pulumi.Input<String> datasetId;
  /// Split based on the provided filters for each set.
  final pulumi.Input<GoogleCloudAiplatformV1beta1FilterSplit>? filterSplit;
  /// Split based on fractions defining the size of each set.
  final pulumi.Input<GoogleCloudAiplatformV1beta1FractionSplit>? fractionSplit;
  /// The Cloud Storage location where the training data is to be written to. In the given directory a new directory is created with name: `dataset---` where timestamp is in YYYY-MM-DDThh:mm:ss.sssZ ISO-8601 format. All training input data is written into that directory. The Vertex AI environment variables representing Cloud Storage data URIs are represented in the Cloud Storage wildcard format to support sharded data. e.g.: "gs://.../training-*.jsonl" * AIP_DATA_FORMAT = "jsonl" for non-tabular data, "csv" for tabular data * AIP_TRAINING_DATA_URI = "gcs_destination/dataset---/training-*.${AIP_DATA_FORMAT}" * AIP_VALIDATION_DATA_URI = "gcs_destination/dataset---/validation-*.${AIP_DATA_FORMAT}" * AIP_TEST_DATA_URI = "gcs_destination/dataset---/test-*.${AIP_DATA_FORMAT}"
  final pulumi.Input<GoogleCloudAiplatformV1beta1GcsDestination>? gcsDestination;
  /// Whether to persist the ML use assignment to data item system labels.
  final pulumi.Input<bool>? persistMlUseAssignment;
  /// Supported only for tabular Datasets. Split based on a predefined key.
  final pulumi.Input<GoogleCloudAiplatformV1beta1PredefinedSplit>? predefinedSplit;
  /// Only applicable to Datasets that have SavedQueries. The ID of a SavedQuery (annotation set) under the Dataset specified by dataset_id used for filtering Annotations for training. Only Annotations that are associated with this SavedQuery are used in respectively training. When used in conjunction with annotations_filter, the Annotations used for training are filtered by both saved_query_id and annotations_filter. Only one of saved_query_id and annotation_schema_uri should be specified as both of them represent the same thing: problem type.
  final pulumi.Input<String>? savedQueryId;
  /// Supported only for tabular Datasets. Split based on the distribution of the specified column.
  final pulumi.Input<GoogleCloudAiplatformV1beta1StratifiedSplit>? stratifiedSplit;
  /// Supported only for tabular Datasets. Split based on the timestamp of the input data pieces.
  final pulumi.Input<GoogleCloudAiplatformV1beta1TimestampSplit>? timestampSplit;

  /// Creates a new [GoogleCloudAiplatformV1beta1InputDataConfig].
  /// [annotationSchemaUri] Applicable only to custom training with Datasets that have DataItems and Annotations. Cloud Storage URI that points to a YAML file describing the annotation schema. The schema is defined as an OpenAPI 3.0.2 [Schema Object](https://github.com/OAI/OpenAPI-Specification/blob/main/versions/3.0.2.md#schemaObject). The schema files that can be used here are found in gs://google-cloud-aiplatform/schema/dataset/annotation/ , note that the chosen schema must be consistent with metadata of the Dataset specified by dataset_id. Only Annotations that both match this schema and belong to DataItems not ignored by the split method are used in respectively training, validation or test role, depending on the role of the DataItem they are on. When used in conjunction with annotations_filter, the Annotations used for training are filtered by both annotations_filter and annotation_schema_uri.
  /// [annotationsFilter] Applicable only to Datasets that have DataItems and Annotations. A filter on Annotations of the Dataset. Only Annotations that both match this filter and belong to DataItems not ignored by the split method are used in respectively training, validation or test role, depending on the role of the DataItem they are on (for the auto-assigned that role is decided by Vertex AI). A filter with same syntax as the one used in ListAnnotations may be used, but note here it filters across all Annotations of the Dataset, and not just within a single DataItem.
  /// [bigqueryDestination] Only applicable to custom training with tabular Dataset with BigQuery source. The BigQuery project location where the training data is to be written to. In the given project a new dataset is created with name `dataset___` where timestamp is in YYYY_MM_DDThh_mm_ss_sssZ format. All training input data is written into that dataset. In the dataset three tables are created, `training`, `validation` and `test`. * AIP_DATA_FORMAT = "bigquery". * AIP_TRAINING_DATA_URI = "bigquery_destination.dataset___.training" * AIP_VALIDATION_DATA_URI = "bigquery_destination.dataset___.validation" * AIP_TEST_DATA_URI = "bigquery_destination.dataset___.test"
  /// [datasetId] The ID of the Dataset in the same Project and Location which data will be used to train the Model. The Dataset must use schema compatible with Model being trained, and what is compatible should be described in the used TrainingPipeline's training_task_definition. For tabular Datasets, all their data is exported to training, to pick and choose from.
  /// [filterSplit] Split based on the provided filters for each set.
  /// [fractionSplit] Split based on fractions defining the size of each set.
  /// [gcsDestination] The Cloud Storage location where the training data is to be written to. In the given directory a new directory is created with name: `dataset---` where timestamp is in YYYY-MM-DDThh:mm:ss.sssZ ISO-8601 format. All training input data is written into that directory. The Vertex AI environment variables representing Cloud Storage data URIs are represented in the Cloud Storage wildcard format to support sharded data. e.g.: "gs://.../training-*.jsonl" * AIP_DATA_FORMAT = "jsonl" for non-tabular data, "csv" for tabular data * AIP_TRAINING_DATA_URI = "gcs_destination/dataset---/training-*.${AIP_DATA_FORMAT}" * AIP_VALIDATION_DATA_URI = "gcs_destination/dataset---/validation-*.${AIP_DATA_FORMAT}" * AIP_TEST_DATA_URI = "gcs_destination/dataset---/test-*.${AIP_DATA_FORMAT}"
  /// [persistMlUseAssignment] Whether to persist the ML use assignment to data item system labels.
  /// [predefinedSplit] Supported only for tabular Datasets. Split based on a predefined key.
  /// [savedQueryId] Only applicable to Datasets that have SavedQueries. The ID of a SavedQuery (annotation set) under the Dataset specified by dataset_id used for filtering Annotations for training. Only Annotations that are associated with this SavedQuery are used in respectively training. When used in conjunction with annotations_filter, the Annotations used for training are filtered by both saved_query_id and annotations_filter. Only one of saved_query_id and annotation_schema_uri should be specified as both of them represent the same thing: problem type.
  /// [stratifiedSplit] Supported only for tabular Datasets. Split based on the distribution of the specified column.
  /// [timestampSplit] Supported only for tabular Datasets. Split based on the timestamp of the input data pieces.
  const GoogleCloudAiplatformV1beta1InputDataConfig({
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
      'bigqueryDestination': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1BigQueryDestination, Map<String, dynamic>>(bigqueryDestination, (value) => value.toMap()),
      'datasetId': datasetId,
      'filterSplit': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1FilterSplit, Map<String, dynamic>>(filterSplit, (value) => value.toMap()),
      'fractionSplit': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1FractionSplit, Map<String, dynamic>>(fractionSplit, (value) => value.toMap()),
      'gcsDestination': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1GcsDestination, Map<String, dynamic>>(gcsDestination, (value) => value.toMap()),
      'persistMlUseAssignment': ?persistMlUseAssignment,
      'predefinedSplit': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1PredefinedSplit, Map<String, dynamic>>(predefinedSplit, (value) => value.toMap()),
      'savedQueryId': ?savedQueryId,
      'stratifiedSplit': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1StratifiedSplit, Map<String, dynamic>>(stratifiedSplit, (value) => value.toMap()),
      'timestampSplit': ?pulumi.Input.mapOptionalInputValue<GoogleCloudAiplatformV1beta1TimestampSplit, Map<String, dynamic>>(timestampSplit, (value) => value.toMap()),
    };
  }

  factory GoogleCloudAiplatformV1beta1InputDataConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1InputDataConfig(
      annotationSchemaUri: (() { final guardedValue = map['annotationSchemaUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      annotationsFilter: (() { final guardedValue = map['annotationsFilter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bigqueryDestination: (() { final guardedValue = map['bigqueryDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1BigQueryDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      filterSplit: (() { final guardedValue = map['filterSplit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1FilterSplit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fractionSplit: (() { final guardedValue = map['fractionSplit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1FractionSplit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      gcsDestination: (() { final guardedValue = map['gcsDestination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1GcsDestination.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      persistMlUseAssignment: (() { final guardedValue = map['persistMlUseAssignment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      predefinedSplit: (() { final guardedValue = map['predefinedSplit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1PredefinedSplit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      savedQueryId: (() { final guardedValue = map['savedQueryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stratifiedSplit: (() { final guardedValue = map['stratifiedSplit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1StratifiedSplit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timestampSplit: (() { final guardedValue = map['timestampSplit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudAiplatformV1beta1TimestampSplit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
