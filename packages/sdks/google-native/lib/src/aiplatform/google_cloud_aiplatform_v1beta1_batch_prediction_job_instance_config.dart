// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration defining how to transform batch prediction input instances to the instances that the Model accepts.
class GoogleCloudAiplatformV1beta1BatchPredictionJobInstanceConfig {
  /// Fields that will be excluded in the prediction instance that is sent to the Model. Excluded will be attached to the batch prediction output if key_field is not specified. When excluded_fields is populated, included_fields must be empty. The input must be JSONL with objects at each line, CSV, BigQuery or TfRecord.
  final pulumi.Input<List<String>>? excludedFields;
  /// Fields that will be included in the prediction instance that is sent to the Model. If instance_type is `array`, the order of field names in included_fields also determines the order of the values in the array. When included_fields is populated, excluded_fields must be empty. The input must be JSONL with objects at each line, CSV, BigQuery or TfRecord.
  final pulumi.Input<List<String>>? includedFields;
  /// The format of the instance that the Model accepts. Vertex AI will convert compatible batch prediction input instance formats to the specified format. Supported values are: * `object`: Each input is converted to JSON object format. * For `bigquery`, each row is converted to an object. * For `jsonl`, each line of the JSONL input must be an object. * Does not apply to `csv`, `file-list`, `tf-record`, or `tf-record-gzip`. * `array`: Each input is converted to JSON array format. * For `bigquery`, each row is converted to an array. The order of columns is determined by the BigQuery column order, unless included_fields is populated. included_fields must be populated for specifying field orders. * For `jsonl`, if each line of the JSONL input is an object, included_fields must be populated for specifying field orders. * Does not apply to `csv`, `file-list`, `tf-record`, or `tf-record-gzip`. If not specified, Vertex AI converts the batch prediction input as follows: * For `bigquery` and `csv`, the behavior is the same as `array`. The order of columns is the same as defined in the file or table, unless included_fields is populated. * For `jsonl`, the prediction instance format is determined by each line of the input. * For `tf-record`/`tf-record-gzip`, each record will be converted to an object in the format of `{"b64": }`, where `` is the Base64-encoded string of the content of the record. * For `file-list`, each file in the list will be converted to an object in the format of `{"b64": }`, where `` is the Base64-encoded string of the content of the file.
  final pulumi.Input<String>? instanceType;
  /// The name of the field that is considered as a key. The values identified by the key field is not included in the transformed instances that is sent to the Model. This is similar to specifying this name of the field in excluded_fields. In addition, the batch prediction output will not include the instances. Instead the output will only include the value of the key field, in a field named `key` in the output: * For `jsonl` output format, the output will have a `key` field instead of the `instance` field. * For `csv`/`bigquery` output format, the output will have have a `key` column instead of the instance feature columns. The input must be JSONL with objects at each line, CSV, BigQuery or TfRecord.
  final pulumi.Input<String>? keyField;

  /// Creates a new [GoogleCloudAiplatformV1beta1BatchPredictionJobInstanceConfig].
  /// [excludedFields] Fields that will be excluded in the prediction instance that is sent to the Model. Excluded will be attached to the batch prediction output if key_field is not specified. When excluded_fields is populated, included_fields must be empty. The input must be JSONL with objects at each line, CSV, BigQuery or TfRecord.
  /// [includedFields] Fields that will be included in the prediction instance that is sent to the Model. If instance_type is `array`, the order of field names in included_fields also determines the order of the values in the array. When included_fields is populated, excluded_fields must be empty. The input must be JSONL with objects at each line, CSV, BigQuery or TfRecord.
  /// [instanceType] The format of the instance that the Model accepts. Vertex AI will convert compatible batch prediction input instance formats to the specified format. Supported values are: * `object`: Each input is converted to JSON object format. * For `bigquery`, each row is converted to an object. * For `jsonl`, each line of the JSONL input must be an object. * Does not apply to `csv`, `file-list`, `tf-record`, or `tf-record-gzip`. * `array`: Each input is converted to JSON array format. * For `bigquery`, each row is converted to an array. The order of columns is determined by the BigQuery column order, unless included_fields is populated. included_fields must be populated for specifying field orders. * For `jsonl`, if each line of the JSONL input is an object, included_fields must be populated for specifying field orders. * Does not apply to `csv`, `file-list`, `tf-record`, or `tf-record-gzip`. If not specified, Vertex AI converts the batch prediction input as follows: * For `bigquery` and `csv`, the behavior is the same as `array`. The order of columns is the same as defined in the file or table, unless included_fields is populated. * For `jsonl`, the prediction instance format is determined by each line of the input. * For `tf-record`/`tf-record-gzip`, each record will be converted to an object in the format of `{"b64": }`, where `` is the Base64-encoded string of the content of the record. * For `file-list`, each file in the list will be converted to an object in the format of `{"b64": }`, where `` is the Base64-encoded string of the content of the file.
  /// [keyField] The name of the field that is considered as a key. The values identified by the key field is not included in the transformed instances that is sent to the Model. This is similar to specifying this name of the field in excluded_fields. In addition, the batch prediction output will not include the instances. Instead the output will only include the value of the key field, in a field named `key` in the output: * For `jsonl` output format, the output will have a `key` field instead of the `instance` field. * For `csv`/`bigquery` output format, the output will have have a `key` column instead of the instance feature columns. The input must be JSONL with objects at each line, CSV, BigQuery or TfRecord.
  GoogleCloudAiplatformV1beta1BatchPredictionJobInstanceConfig({
    this.excludedFields,
    this.includedFields,
    this.instanceType,
    this.keyField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedFields': ?excludedFields,
      'includedFields': ?includedFields,
      'instanceType': ?instanceType,
      'keyField': ?keyField,
    };
  }

  factory GoogleCloudAiplatformV1beta1BatchPredictionJobInstanceConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1BatchPredictionJobInstanceConfig(
      excludedFields: map['excludedFields'] == null ? null : ((map['excludedFields']! as List).cast<String>()).input(),
      includedFields: map['includedFields'] == null ? null : ((map['includedFields']! as List).cast<String>()).input(),
      instanceType: map['instanceType'] == null ? null : (map['instanceType']! as String).input(),
      keyField: map['keyField'] == null ? null : (map['keyField']! as String).input(),
    );
  }
}

