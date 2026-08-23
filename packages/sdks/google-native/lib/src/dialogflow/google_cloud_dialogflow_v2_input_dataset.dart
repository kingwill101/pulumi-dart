// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// InputDataset used to create model or do evaluation. NextID:5
class GoogleCloudDialogflowV2InputDataset {
  /// ConversationDataset resource name. Format: `projects//locations//conversationDatasets/`
  final pulumi.Input<String> dataset;

  /// Creates a new [GoogleCloudDialogflowV2InputDataset].
  /// [dataset] ConversationDataset resource name. Format: `projects//locations//conversationDatasets/`
  const GoogleCloudDialogflowV2InputDataset({
    required this.dataset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': dataset,
    };
  }

  factory GoogleCloudDialogflowV2InputDataset.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowV2InputDataset(
      dataset: pulumi.Input.fromValue(map['dataset'] as String),
    );
  }
}
