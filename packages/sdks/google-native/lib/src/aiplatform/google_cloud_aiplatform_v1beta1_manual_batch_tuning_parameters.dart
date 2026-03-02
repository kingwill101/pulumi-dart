// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Manual batch tuning parameters.
class GoogleCloudAiplatformV1beta1ManualBatchTuningParameters {
  /// Immutable. The number of the records (e.g. instances) of the operation given in each batch to a machine replica. Machine type, and size of a single record should be considered when setting this parameter, higher value speeds up the batch operation's execution, but too high value will result in a whole batch not fitting in a machine's memory, and the whole operation will fail. The default value is 64.
  final pulumi.Input<int>? batchSize;

  /// Creates a new [GoogleCloudAiplatformV1beta1ManualBatchTuningParameters].
  /// [batchSize] Immutable. The number of the records (e.g. instances) of the operation given in each batch to a machine replica. Machine type, and size of a single record should be considered when setting this parameter, higher value speeds up the batch operation's execution, but too high value will result in a whole batch not fitting in a machine's memory, and the whole operation will fail. The default value is 64.
  GoogleCloudAiplatformV1beta1ManualBatchTuningParameters({
    this.batchSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'batchSize': ?batchSize,
    };
  }

  factory GoogleCloudAiplatformV1beta1ManualBatchTuningParameters.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ManualBatchTuningParameters(
      batchSize: map['batchSize'] == null ? null : (map['batchSize'] as int).input(),
    );
  }
}

