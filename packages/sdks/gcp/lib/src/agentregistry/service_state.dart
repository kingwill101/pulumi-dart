// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_agent_spec.dart';
import 'service_endpoint_spec.dart';
import 'service_interface.dart';
import 'service_mcp_server_spec.dart';

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// The spec of the Agent. When set, the type of the Service is Agent.
  /// Structure is documented below.
  final pulumi.Input<ServiceAgentSpec?>? agentSpec;
  /// The timestamp when the resource was created.
  final pulumi.Input<String?>? createTime;
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
  final pulumi.Input<String?>? location;
  /// The spec of the MCP Server. When set, the type of the Service is MCP Server.
  /// Structure is documented below.
  final pulumi.Input<ServiceMcpServerSpec?>? mcpServerSpec;
  /// The resource name of the Service.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The resource name of the resulting Agent, MCP Server, or Endpoint.
  final pulumi.Input<String?>? registryResource;
  /// The name of the Service.
  final pulumi.Input<String?>? serviceId;
  /// The timestamp when the resource was updated.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [ServiceState].
  /// [agentSpec] The spec of the Agent. When set, the type of the Service is Agent.
  /// [createTime] The timestamp when the resource was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the Service.
  /// [displayName] User-defined display name for the Service. Can have a maximum length of 63 characters.
  /// [endpointSpec] The spec of the Endpoint. When set, the type of the Service is Endpoint.
  /// [interfaces] The connection details for the Service.
  /// [location] The location of the resource.
  /// [mcpServerSpec] The spec of the MCP Server. When set, the type of the Service is MCP Server.
  /// [name] The resource name of the Service.
  /// [project] The ID of the project in which the resource belongs.
  /// [registryResource] The resource name of the resulting Agent, MCP Server, or Endpoint.
  /// [serviceId] The name of the Service.
  /// [updateTime] The timestamp when the resource was updated.
  const ServiceState({
    this.agentSpec,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.endpointSpec,
    this.interfaces,
    this.location,
    this.mcpServerSpec,
    this.name,
    this.project,
    this.registryResource,
    this.serviceId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentSpec': ?pulumi.Input.mapOptionalInputValue<ServiceAgentSpec, Map<String, dynamic>>(agentSpec, (value) => value.toMap()),
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'endpointSpec': ?pulumi.Input.mapOptionalInputValue<ServiceEndpointSpec, Map<String, dynamic>>(endpointSpec, (value) => value.toMap()),
      'interfaces': ?pulumi.Input.mapOptionalInputValue<List<ServiceInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<ServiceInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'mcpServerSpec': ?pulumi.Input.mapOptionalInputValue<ServiceMcpServerSpec, Map<String, dynamic>>(mcpServerSpec, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'registryResource': ?registryResource,
      'serviceId': ?serviceId,
      'updateTime': ?updateTime,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      agentSpec: (() { final guardedValue = map['agentSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceAgentSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointSpec: (() { final guardedValue = map['endpointSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceEndpointSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interfaces: (() { final guardedValue = map['interfaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceInterface>(guardedValue, (value) => ServiceInterface.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mcpServerSpec: (() { final guardedValue = map['mcpServerSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceMcpServerSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryResource: (() { final guardedValue = map['registryResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceId: (() { final guardedValue = map['serviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
