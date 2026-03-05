// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Persistent Cluster runtime information as output
class GoogleCloudAiplatformV1beta1ResourceRuntimeResponse {
  /// URIs for user to connect to the Cluster. Example: { "RAY_HEAD_NODE_INTERNAL_IP": "head-node-IP:10001" "RAY_DASHBOARD_URI": "ray-dashboard-address:8888" }
  final pulumi.Input<Map<String, String>> accessUris;
  /// The resource name of NotebookRuntimeTemplate for the RoV Persistent Cluster The NotebokRuntimeTemplate is created in the same VPC (if set), and with the same Ray and Python version as the Persistent Cluster. Example: "projects/1000/locations/us-central1/notebookRuntimeTemplates/abc123"
  final pulumi.Input<String> notebookRuntimeTemplate;

  /// Creates a new [GoogleCloudAiplatformV1beta1ResourceRuntimeResponse].
  /// [accessUris] URIs for user to connect to the Cluster. Example: { "RAY_HEAD_NODE_INTERNAL_IP": "head-node-IP:10001" "RAY_DASHBOARD_URI": "ray-dashboard-address:8888" }
  /// [notebookRuntimeTemplate] The resource name of NotebookRuntimeTemplate for the RoV Persistent Cluster The NotebokRuntimeTemplate is created in the same VPC (if set), and with the same Ray and Python version as the Persistent Cluster. Example: "projects/1000/locations/us-central1/notebookRuntimeTemplates/abc123"
  GoogleCloudAiplatformV1beta1ResourceRuntimeResponse({
    required this.accessUris,
    required this.notebookRuntimeTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessUris': accessUris,
      'notebookRuntimeTemplate': notebookRuntimeTemplate,
    };
  }

  factory GoogleCloudAiplatformV1beta1ResourceRuntimeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ResourceRuntimeResponse(
      accessUris: pulumi.Input.fromValue((map['accessUris'] as Map).cast<String, String>()),
      notebookRuntimeTemplate: pulumi.Input.fromValue(map['notebookRuntimeTemplate'] as String),
    );
  }
}

