// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response_compute_v1.dart';
import 'local_disk_response_compute_v1.dart';
import 'node_template_node_type_flexibility_response_compute_v1.dart';
import 'server_binding_response_compute_v1.dart';

/// Result data returned by getNodeTemplate.
class GetNodeTemplateComputeV1Result {
  final List<AcceleratorConfigResponseComputeV1>? accelerators;
  /// CPU overcommit.
  final String? cpuOvercommitType;
  /// Creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String? description;
  final List<LocalDiskResponseComputeV1>? disks;
  /// The type of the resource. Always compute#nodeTemplate for node templates.
  final String? kind;
  /// The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;
  /// Labels to use for node affinity, which will be used in instance scheduling.
  final Map<String, String>? nodeAffinityLabels;
  /// The node type to use for nodes group that are created from this template.
  final String? nodeType;
  /// Do not use. Instead, use the node_type property.
  final NodeTemplateNodeTypeFlexibilityResponseComputeV1? nodeTypeFlexibility;
  /// The name of the region where the node template resides, such as us-central1.
  final String? region;
  /// Server-defined URL for the resource.
  final String? selfLink;
  /// Sets the binding properties for the physical server. Valid values include: - *[Default]* RESTART_NODE_ON_ANY_SERVER: Restarts VMs on any available physical server - RESTART_NODE_ON_MINIMAL_SERVER: Restarts VMs on the same physical server whenever possible See Sole-tenant node options for more information.
  final ServerBindingResponseComputeV1? serverBinding;
  /// The status of the node template. One of the following values: CREATING, READY, and DELETING.
  final String? status;
  /// An optional, human-readable explanation of the status.
  final String? statusMessage;

  /// Creates a new [GetNodeTemplateComputeV1Result].
  /// [accelerators] Optional.
  /// [cpuOvercommitType] CPU overcommit.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [disks] Optional.
  /// [kind] The type of the resource. Always compute#nodeTemplate for node templates.
  /// [name] The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [nodeAffinityLabels] Labels to use for node affinity, which will be used in instance scheduling.
  /// [nodeType] The node type to use for nodes group that are created from this template.
  /// [nodeTypeFlexibility] Do not use. Instead, use the node_type property.
  /// [region] The name of the region where the node template resides, such as us-central1.
  /// [selfLink] Server-defined URL for the resource.
  /// [serverBinding] Sets the binding properties for the physical server. Valid values include: - *[Default]* RESTART_NODE_ON_ANY_SERVER: Restarts VMs on any available physical server - RESTART_NODE_ON_MINIMAL_SERVER: Restarts VMs on the same physical server whenever possible See Sole-tenant node options for more information.
  /// [status] The status of the node template. One of the following values: CREATING, READY, and DELETING.
  /// [statusMessage] An optional, human-readable explanation of the status.
  const GetNodeTemplateComputeV1Result({
    this.accelerators,
    this.cpuOvercommitType,
    this.creationTimestamp,
    this.description,
    this.disks,
    this.kind,
    this.name,
    this.nodeAffinityLabels,
    this.nodeType,
    this.nodeTypeFlexibility,
    this.region,
    this.selfLink,
    this.serverBinding,
    this.status,
    this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accelerators': ?(() { final guardedValue = accelerators; if (guardedValue == null) return null; return pulumi.Input.encodeList<AcceleratorConfigResponseComputeV1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'cpuOvercommitType': ?cpuOvercommitType,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'disks': ?(() { final guardedValue = disks; if (guardedValue == null) return null; return pulumi.Input.encodeList<LocalDiskResponseComputeV1, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kind': ?kind,
      'name': ?name,
      'nodeAffinityLabels': ?nodeAffinityLabels,
      'nodeType': ?nodeType,
      'nodeTypeFlexibility': ?nodeTypeFlexibility?.toMap(),
      'region': ?region,
      'selfLink': ?selfLink,
      'serverBinding': ?serverBinding?.toMap(),
      'status': ?status,
      'statusMessage': ?statusMessage,
    };
  }

  factory GetNodeTemplateComputeV1Result.fromMap(Map<String, dynamic> map) {
    return GetNodeTemplateComputeV1Result(
      accelerators: (() { final guardedValue = map['accelerators']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AcceleratorConfigResponseComputeV1>(guardedValue, (value) => AcceleratorConfigResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); })(),
      cpuOvercommitType: (() { final guardedValue = map['cpuOvercommitType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disks: (() { final guardedValue = map['disks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<LocalDiskResponseComputeV1>(guardedValue, (value) => LocalDiskResponseComputeV1.fromMap((value as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeAffinityLabels: (() { final guardedValue = map['nodeAffinityLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeTypeFlexibility: (() { final guardedValue = map['nodeTypeFlexibility']; if (guardedValue == null) return null; return NodeTemplateNodeTypeFlexibilityResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverBinding: (() { final guardedValue = map['serverBinding']; if (guardedValue == null) return null; return ServerBindingResponseComputeV1.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
