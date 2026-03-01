// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Endpoint resources.
class EndpointState {
  /// Creation timestamp in RFC 3339 text format.
  final pulumi.Input<String>? createTime;
  /// An optional description of the endpoint.
  final pulumi.Input<String>? description;
  /// URL of the endpoint's network address to which traffic is to be sent by Packet Mirroring.
  final pulumi.Input<String>? endpointForwardingRule;
  /// Internal IP address of the endpoint's network entry point.
  final pulumi.Input<String>? endpointIp;
  /// The location for the endpoint.
  final pulumi.Input<String>? location;
  /// Name of the endpoint in the format projects/{project_id}/locations/{locationId}/endpoints/{endpointId}.
  final pulumi.Input<String>? name;
  /// Name of the VPC network that is connected to the IDS endpoint. This can either contain the VPC network name itself (like "src-net") or the full URL to the network (like "projects/{project_id}/global/networks/src-net").
  final pulumi.Input<String>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The minimum alert severity level that is reported by the endpoint.
  /// Possible values are: `INFORMATIONAL`, `LOW`, `MEDIUM`, `HIGH`, `CRITICAL`.
  final pulumi.Input<String>? severity;
  /// Configuration for threat IDs excluded from generating alerts. Limit: 99 IDs.
  final pulumi.Input<List<String>>? threatExceptions;
  /// Last update timestamp in RFC 3339 text format.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [EndpointState].
  /// [createTime] Creation timestamp in RFC 3339 text format.
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
  EndpointState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? endpointForwardingRule,
    pulumi.Output<String>? endpointIp,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? project,
    pulumi.Output<String>? severity,
    pulumi.Output<List<String>>? threatExceptions,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      endpointForwardingRule = pulumi.Input.asOptionalInput<String>(endpointForwardingRule),
      endpointIp = pulumi.Input.asOptionalInput<String>(endpointIp),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      severity = pulumi.Input.asOptionalInput<String>(severity),
      threatExceptions = pulumi.Input.asOptionalInput<List<String>>(threatExceptions),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endpointForwardingRule: map['endpointForwardingRule'] == null ? null : pulumi.Output.create<String>(map['endpointForwardingRule'] as String),
      endpointIp: map['endpointIp'] == null ? null : pulumi.Output.create<String>(map['endpointIp'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      severity: map['severity'] == null ? null : pulumi.Output.create<String>(map['severity'] as String),
      threatExceptions: map['threatExceptions'] == null ? null : pulumi.Output.create<List<String>>((map['threatExceptions'] as List).cast<String>()),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

