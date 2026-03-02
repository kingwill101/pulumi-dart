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
    this.clientOperationId,
    this.kind,
    required this.managedZone,
    this.name,
    this.project,
    this.routingPolicy,
    this.rrdatas,
    this.signatureRrdatas,
    this.ttl,
    this.type,
  });

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
      clientOperationId: map['clientOperationId'] == null ? null : (map['clientOperationId']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      managedZone: (map['managedZone'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      routingPolicy: map['routingPolicy'] == null ? null : (RRSetRoutingPolicy.fromMap((map['routingPolicy']! as Map).cast<String, dynamic>())).input(),
      rrdatas: map['rrdatas'] == null ? null : ((map['rrdatas']! as List).cast<String>()).input(),
      signatureRrdatas: map['signatureRrdatas'] == null ? null : ((map['signatureRrdatas']! as List).cast<String>()).input(),
      ttl: map['ttl'] == null ? null : (map['ttl']! as int).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

