// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InputDataset used to create model or do evaluation. NextID:5
class GoogleCloudDialogflowV2InputDatasetResponse {
  /// ConversationDataset resource name. Format: `projects//locations//conversationDatasets/`
  final pulumi.Input<String> dataset;

  /// Creates a new [GoogleCloudDialogflowV2InputDatasetResponse].
  /// [dataset] ConversationDataset resource name. Format: `projects//locations//conversationDatasets/`
  GoogleCloudDialogflowV2InputDatasetResponse({
    required this.dataset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
    };
  }

  factory GoogleCloudDialogflowV2InputDatasetResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2InputDatasetResponse(
      dataset: (map['dataset'] as String).input(),
    );
  }
}

