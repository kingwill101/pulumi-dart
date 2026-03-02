// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for Notebook content.
class GoogleCloudDataplexV1ContentNotebookResponse {
  /// Kernel Type of the notebook.
  final pulumi.Input<String> kernelType;

  /// Creates a new [GoogleCloudDataplexV1ContentNotebookResponse].
  /// [kernelType] Kernel Type of the notebook.
  GoogleCloudDataplexV1ContentNotebookResponse({
    required this.kernelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kernelType': kernelType,
    };
  }

  factory GoogleCloudDataplexV1ContentNotebookResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ContentNotebookResponse(
      kernelType: (map['kernelType'] as String).input(),
    );
  }
}

