// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_content_notebook_kernel_type.dart';

/// Configuration for Notebook content.
class GoogleCloudDataplexV1ContentNotebook {
  /// Kernel Type of the notebook.
  final pulumi.Input<GoogleCloudDataplexV1ContentNotebookKernelType> kernelType;

  /// Creates a new [GoogleCloudDataplexV1ContentNotebook].
  /// [kernelType] Kernel Type of the notebook.
  const GoogleCloudDataplexV1ContentNotebook({
    required this.kernelType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kernelType': pulumi.Input.mapInputValue<GoogleCloudDataplexV1ContentNotebookKernelType, String>(kernelType, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDataplexV1ContentNotebook.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ContentNotebook(
      kernelType: pulumi.Input.fromValue(GoogleCloudDataplexV1ContentNotebookKernelType.fromValue(map['kernelType']! as String)),
    );
  }
}

