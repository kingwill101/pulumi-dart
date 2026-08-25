// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Endpoint resources.
class EndpointState {
  /// Creation timestamp in RFC 3339 text format.
  final pulumi.Input<String?>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of the endpoint.
  final pulumi.Input<String?>? description;
  /// URL of the endpoint's network address to which traffic is to be sent by Packet Mirroring.
  final pulumi.Input<String?>? endpointForwardingRule;
  /// Internal IP address of the endpoint's network entry point.
  final pulumi.Input<String?>? endpointIp;
  /// The location for the endpoint.
  final pulumi.Input<String?>? location;
  /// Name of the endpoint in the format projects/{project_id}/locations/{locationId}/endpoints/{endpointId}.
  final pulumi.Input<String?>? name;
  /// Name of the VPC network that is connected to the IDS endpoint. This can either contain the VPC network name itself (like "src-net") or the full URL to the network (like "projects/{project_id}/global/networks/src-net").
  final pulumi.Input<String?>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The minimum alert severity level that is reported by the endpoint.
  /// Possible values are: `INFORMATIONAL`, `LOW`, `MEDIUM`, `HIGH`, `CRITICAL`.
  final pulumi.Input<String?>? severity;
  /// Configuration for threat IDs excluded from generating alerts. Limit: 99 IDs.
  final pulumi.Input<List<String>?>? threatExceptions;
  /// Last update timestamp in RFC 3339 text format.
  final pulumi.Input<String?>? updateTime;

  /// Creates a new [EndpointState].
  /// [createTime] Creation timestamp in RFC 3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of the endpoint.
  /// [endpointForwardingRule] URL of the endpoint's network address to which traffic is to be sent by Packet Mirroring.
  /// [endpointIp] Internal IP address of the endpoint's network entry point.
  /// [location] The location for the endpoint.
  /// [name] Name of the endpoint in the format projects/{project_id}/locations/{locationId}/endpoints/{endpointId}.
  /// [network] Name of the VPC network that is connected to the IDS endpoint. This can either contain the VPC network name itself (like "src-net") or the full URL to the network (like "projects/{project_id}/global/networks/src-net").
  /// [project] The ID of the project in which the resource belongs.
  /// [severity] The minimum alert severity level that is reported by the endpoint.
  /// [threatExceptions] Configuration for threat IDs excluded from generating alerts. Limit: 99 IDs.
  /// [updateTime] Last update timestamp in RFC 3339 text format.
  const EndpointState({
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.endpointForwardingRule,
    this.endpointIp,
    this.location,
    this.name,
    this.network,
    this.project,
    this.severity,
    this.threatExceptions,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'endpointForwardingRule': ?endpointForwardingRule,
      'endpointIp': ?endpointIp,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'severity': ?severity,
      'threatExceptions': ?threatExceptions,
      'updateTime': ?updateTime,
    };
  }

  factory EndpointState.fromMap(Map<String, dynamic> map) {
    return EndpointState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointForwardingRule: (() { final guardedValue = map['endpointForwardingRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointIp: (() { final guardedValue = map['endpointIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      severity: (() { final guardedValue = map['severity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      threatExceptions: (() { final guardedValue = map['threatExceptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
