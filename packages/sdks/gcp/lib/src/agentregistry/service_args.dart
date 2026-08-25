// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_agent_spec.dart';
import 'service_endpoint_spec.dart';
import 'service_interface.dart';
import 'service_mcp_server_spec.dart';

/// {@template pulumi_agentregistry_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_agentregistry_service_service_args_doc}
class ServiceArgs {
  /// The spec of the Agent. When set, the type of the Service is Agent.
  /// Structure is documented below.
  final pulumi.Input<ServiceAgentSpec?>? agentSpec;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The description of the Service.
  final pulumi.Input<String?>? description;
  /// User-defined display name for the Service. Can have a maximum length of 63 characters.
  final pulumi.Input<String?>? displayName;
  /// The spec of the Endpoint. When set, the type of the Service is Endpoint.
  /// Structure is documented below.
  final pulumi.Input<ServiceEndpointSpec?>? endpointSpec;
  /// The connection details for the Service.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceInterface>?>? interfaces;
  /// The location of the resource.
  final pulumi.Input<String> location;
  /// The spec of the MCP Server. When set, the type of the Service is MCP Server.
  /// Structure is documented below.
  final pulumi.Input<ServiceMcpServerSpec?>? mcpServerSpec;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The name of the Service.
  final pulumi.Input<String> serviceId;

  /// Creates a new [ServiceArgs].
  /// [agentSpec] The spec of the Agent. When set, the type of the Service is Agent.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the Service.
  /// [displayName] User-defined display name for the Service. Can have a maximum length of 63 characters.
  /// [endpointSpec] The spec of the Endpoint. When set, the type of the Service is Endpoint.
  /// [interfaces] The connection details for the Service.
  /// [location] The location of the resource.
  /// [mcpServerSpec] The spec of the MCP Server. When set, the type of the Service is MCP Server.
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceId] The name of the Service.
  const ServiceArgs({
    this.agentSpec,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.endpointSpec,
    this.interfaces,
    required this.location,
    this.mcpServerSpec,
    this.project,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentSpec': ?pulumi.Input.mapOptionalInputValue<ServiceAgentSpec, Map<String, dynamic>>(agentSpec, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'endpointSpec': ?pulumi.Input.mapOptionalInputValue<ServiceEndpointSpec, Map<String, dynamic>>(endpointSpec, (value) => value.toMap()),
      'interfaces': ?pulumi.Input.mapOptionalInputValue<List<ServiceInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<ServiceInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': location,
      'mcpServerSpec': ?pulumi.Input.mapOptionalInputValue<ServiceMcpServerSpec, Map<String, dynamic>>(mcpServerSpec, (value) => value.toMap()),
      'project': ?project,
      'serviceId': serviceId,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      agentSpec: (() { final guardedValue = map['agentSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceAgentSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointSpec: (() { final guardedValue = map['endpointSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceEndpointSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interfaces: (() { final guardedValue = map['interfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceInterface>(guardedValue, (value) => ServiceInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      mcpServerSpec: (() { final guardedValue = map['mcpServerSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMcpServerSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
    );
  }
}
