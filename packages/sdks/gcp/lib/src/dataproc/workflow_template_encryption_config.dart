// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplateEncryptionConfig {
  /// The Cloud KMS key name to use for encrypting workflow template [job arguments](https://docs.docs.cloud.google.com/dataproc/docs/concepts/workflows/use-workflows).
  ///
  /// When this this key is provided, the following workflow template job arguments, if present, are [CMEK encrypted](https://docs.cloud.google.com/dataproc/docs/concepts/configuring-clusters/customer-managed-encryption#use_cmek_with_workflow_template_data):
  ///
  /// - [FlinkJob args](https://docs.cloud.google.com/dataproc/docs/reference/rest/v1/FlinkJob)
  /// - [HadoopJob args](https://docs.cloud.google.com/dataproc/docs/reference/rest/v1/HadoopJob)
  /// - [SparkJob args](https://docs.cloud.google.com/dataproc/docs/reference/rest/v1/SparkJob)
  /// - [SparkRJob args](https://docs.cloud.google.com/dataproc/docs/reference/rest/v1/SparkRJob)
  /// - [PySparkJob args](https://docs.cloud.google.com/dataproc/docs/reference/rest/v1/PySparkJob)
  /// - [SparkSqlJob](https://docs.cloud.google.com/dataproc/docs/reference/rest/v1/SparkSqlJob) scriptVariables and queryList.queries
  /// - [HiveJob](https://docs.cloud.google.com/dataproc/docs/reference/rest/v1/HiveJob) scriptVariables and queryList.queries
  /// - [PigJob](https://docs.cloud.google.com/dataproc/docs/reference/rest/v1/PigJob) scriptVariables  and queryList.queries
  /// - [PrestoJob](https://docs.cloud.google.com/dataproc/docs/reference/rest/v1/PrestoJob) scriptVariables and queryList.queries
  final pulumi.Input<String>? kmsKey;

  /// Creates a new [WorkflowTemplateEncryptionConfig].
  /// [kmsKey] The Cloud KMS key name to use for encrypting workflow template [job arguments](https://docs.docs.cloud.google.com/dataproc/docs/concepts/workflows/use-workflows).
  const WorkflowTemplateEncryptionConfig({
    this.kmsKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKey': ?kmsKey,
    };
  }

  factory WorkflowTemplateEncryptionConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateEncryptionConfig(
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
