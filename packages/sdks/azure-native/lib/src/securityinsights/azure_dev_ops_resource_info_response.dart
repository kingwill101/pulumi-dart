// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resources created in Azure DevOps repository.
class AzureDevOpsResourceInfoResponse {
  /// Id of the pipeline created for the source-control.
  final pulumi.Input<String>? pipelineId;
  /// Id of the service-connection created for the source-control.
  final pulumi.Input<String>? serviceConnectionId;

  /// Creates a new [AzureDevOpsResourceInfoResponse].
  /// [pipelineId] Id of the pipeline created for the source-control.
  /// [serviceConnectionId] Id of the service-connection created for the source-control.
  AzureDevOpsResourceInfoResponse({
    this.pipelineId,
    this.serviceConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pipelineId': ?pipelineId,
      'serviceConnectionId': ?serviceConnectionId,
    };
  }

  factory AzureDevOpsResourceInfoResponse.fromMap(Map<String, dynamic> map) {
    return AzureDevOpsResourceInfoResponse(
      pipelineId: map['pipelineId'] == null ? null : (map['pipelineId']! as String).input(),
      serviceConnectionId: map['serviceConnectionId'] == null ? null : (map['serviceConnectionId']! as String).input(),
    );
  }
}

