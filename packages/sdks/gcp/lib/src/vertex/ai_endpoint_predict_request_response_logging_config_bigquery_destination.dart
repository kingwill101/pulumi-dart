// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiEndpointPredictRequestResponseLoggingConfigBigqueryDestination {
  /// BigQuery URI to a project or table, up to 2000 characters long. When only the project is specified, the Dataset and Table is created. When the full table reference is specified, the Dataset must exist and table must not exist. Accepted forms: - BigQuery path. For example: `bq://projectId` or `bq://projectId.bqDatasetId` or `bq://projectId.bqDatasetId.bqTableId`.
  final pulumi.Input<String>? outputUri;

  /// Creates a new [AiEndpointPredictRequestResponseLoggingConfigBigqueryDestination].
  /// [outputUri] BigQuery URI to a project or table, up to 2000 characters long. When only the project is specified, the Dataset and Table is created. When the full table reference is specified, the Dataset must exist and table must not exist. Accepted forms: - BigQuery path. For example: `bq://projectId` or `bq://projectId.bqDatasetId` or `bq://projectId.bqDatasetId.bqTableId`.
  AiEndpointPredictRequestResponseLoggingConfigBigqueryDestination({
    this.outputUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'outputUri': ?outputUri};
  }

  factory AiEndpointPredictRequestResponseLoggingConfigBigqueryDestination.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiEndpointPredictRequestResponseLoggingConfigBigqueryDestination(
      outputUri: (() {
        final guardedValue = map['outputUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
