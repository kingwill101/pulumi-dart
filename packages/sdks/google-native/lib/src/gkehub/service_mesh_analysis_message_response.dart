// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_mesh_analysis_message_base_response.dart';

/// AnalysisMessage is a single message produced by an analyzer, and it used to communicate to the end user about the state of their Service Mesh configuration.
class ServiceMeshAnalysisMessageResponse {
  /// A UI can combine these args with a template (based on message_base.type) to produce an internationalized message.
  final pulumi.Input<Map<String, String>> args;

  /// A human readable description of what the error means. It is suitable for non-internationalize display purposes.
  final pulumi.Input<String> description;

  /// Details common to all types of Istio and ServiceMesh analysis messages.
  final pulumi.Input<ServiceMeshAnalysisMessageBaseResponse> messageBase;

  /// A list of strings specifying the resource identifiers that were the cause of message generation. A "path" here may be: * MEMBERSHIP_ID if the cause is a specific member cluster * MEMBERSHIP_ID/(NAMESPACE\/)?RESOURCETYPE/NAME if the cause is a resource in a cluster
  final pulumi.Input<List<String>> resourcePaths;

  /// Creates a new [ServiceMeshAnalysisMessageResponse].
  /// [args] A UI can combine these args with a template (based on message_base.type) to produce an internationalized message.
  /// [description] A human readable description of what the error means. It is suitable for non-internationalize display purposes.
  /// [messageBase] Details common to all types of Istio and ServiceMesh analysis messages.
  /// [resourcePaths] A list of strings specifying the resource identifiers that were the cause of message generation. A "path" here may be: * MEMBERSHIP_ID if the cause is a specific member cluster * MEMBERSHIP_ID/(NAMESPACE\/)?RESOURCETYPE/NAME if the cause is a resource in a cluster
  ServiceMeshAnalysisMessageResponse({
    required this.args,
    required this.description,
    required this.messageBase,
    required this.resourcePaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'description': description,
      'messageBase':
          pulumi.Input.mapInputValue<
            ServiceMeshAnalysisMessageBaseResponse,
            Map<String, dynamic>
          >(messageBase, (value) => value.toMap()),
      'resourcePaths': resourcePaths,
    };
  }

  factory ServiceMeshAnalysisMessageResponse.fromMap(Map<String, dynamic> map) {
    return ServiceMeshAnalysisMessageResponse(
      args: pulumi.Input.fromValue((map['args'] as Map).cast<String, String>()),
      description: pulumi.Input.fromValue(map['description'] as String),
      messageBase: pulumi.Input.fromValue(
        ServiceMeshAnalysisMessageBaseResponse.fromMap(
          (map['messageBase']! as Map).cast<String, dynamic>(),
        ),
      ),
      resourcePaths: pulumi.Input.fromValue(
        (map['resourcePaths'] as List).cast<String>(),
      ),
    );
  }
}
