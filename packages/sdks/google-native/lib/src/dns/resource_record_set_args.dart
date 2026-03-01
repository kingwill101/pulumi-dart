// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy.dart';

/// {@template pulumi_dns_v1_resource_record_set_args_doc}
/// The set of arguments for ResourceRecordSet.
/// {@endtemplate}
/// {@macro pulumi_dns_v1_resource_record_set_args_doc}
class ResourceRecordSetArgs {
  /// For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  final pulumi.Input<String>? clientOperationId;
  final pulumi.Input<String>? kind;
  final pulumi.Input<String> managedZone;
  /// For example, www.example.com.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  final pulumi.Input<RRSetRoutingPolicy>? routingPolicy;
  /// As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  final pulumi.Input<List<String>>? rrdatas;
  /// As defined in RFC 4034 (section 3.2).
  final pulumi.Input<List<String>>? signatureRrdatas;
  /// Number of seconds that this ResourceRecordSet can be cached by resolvers.
  final pulumi.Input<int>? ttl;
  /// The identifier of a supported record type. See the list of Supported DNS record types.
  final pulumi.Input<String>? type;

  /// Creates a new [ResourceRecordSetArgs].
  /// [clientOperationId] For mutating operation requests only. An optional identifier specified by the client. Must be unique for operation resources in the Operations collection.
  /// [kind] Optional.
  /// [managedZone] Required.
  /// [name] For example, www.example.com.
  /// [project] Optional.
  /// [routingPolicy] Configures dynamic query responses based on either the geo location of the querying user or a weighted round robin based routing policy. A valid ResourceRecordSet contains only rrdata (for static resolution) or a routing_policy (for dynamic resolution).
  /// [rrdatas] As defined in RFC 1035 (section 5) and RFC 1034 (section 3.6.1) -- see examples.
  /// [signatureRrdatas] As defined in RFC 4034 (section 3.2).
  /// [ttl] Number of seconds that this ResourceRecordSet can be cached by resolvers.
  /// [type] The identifier of a supported record type. See the list of Supported DNS record types.
  ResourceRecordSetArgs({
    pulumi.Output<String>? clientOperationId,
    pulumi.Output<String>? kind,
    required pulumi.Output<String> managedZone,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<RRSetRoutingPolicy>? routingPolicy,
    pulumi.Output<List<String>>? rrdatas,
    pulumi.Output<List<String>>? signatureRrdatas,
    pulumi.Output<int>? ttl,
    pulumi.Output<String>? type,
  }) :
      clientOperationId = pulumi.Input.asOptionalInput<String>(clientOperationId),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      managedZone = pulumi.Input.asInput<String>(managedZone),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      routingPolicy = pulumi.Input.asOptionalInput<RRSetRoutingPolicy>(routingPolicy),
      rrdatas = pulumi.Input.asOptionalInput<List<String>>(rrdatas),
      signatureRrdatas = pulumi.Input.asOptionalInput<List<String>>(signatureRrdatas),
      ttl = pulumi.Input.asOptionalInput<int>(ttl),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientOperationId': ?clientOperationId,
      'kind': ?kind,
      'managedZone': managedZone,
      'name': ?name,
      'project': ?project,
      'routingPolicy': ?pulumi.Input.mapOptionalInputValue<RRSetRoutingPolicy, Map<String, dynamic>>(routingPolicy, (value) => value.toMap()),
      'rrdatas': ?rrdatas,
      'signatureRrdatas': ?signatureRrdatas,
      'ttl': ?ttl,
      'type': ?type,
    };
  }

  factory ResourceRecordSetArgs.fromMap(Map<String, dynamic> map) {
    return ResourceRecordSetArgs(
      clientOperationId: map['clientOperationId'] == null ? null : pulumi.Output.create<String>(map['clientOperationId'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      managedZone: pulumi.Output.create<String>(map['managedZone'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      routingPolicy: map['routingPolicy'] == null ? null : pulumi.Output.create<RRSetRoutingPolicy>(RRSetRoutingPolicy.fromMap((map['routingPolicy'] as Map).cast<String, dynamic>())),
      rrdatas: map['rrdatas'] == null ? null : pulumi.Output.create<List<String>>((map['rrdatas'] as List).cast<String>()),
      signatureRrdatas: map['signatureRrdatas'] == null ? null : pulumi.Output.create<List<String>>((map['signatureRrdatas'] as List).cast<String>()),
      ttl: map['ttl'] == null ? null : pulumi.Output.create<int>(map['ttl'] as int),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

