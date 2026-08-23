// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for Notebook content.
class GoogleCloudDataplexV1ContentNotebookResponse {
  /// Kernel Type of the notebook.
  final pulumi.Input<String> kernelType;

  /// Creates a new [GoogleCloudDataplexV1ContentNotebookResponse].
  /// [kernelType] Kernel Type of the notebook.
  const GoogleCloudDataplexV1ContentNotebookResponse({
    required this.kernelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kernelType': kernelType,
    };
  }

  factory GoogleCloudDataplexV1ContentNotebookResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ContentNotebookResponse(
      kernelType: pulumi.Input.fromValue(map['kernelType'] as String),
    );
  }
}
