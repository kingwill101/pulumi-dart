// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'external_access_rule_destination_ip_range.dart';
import 'external_access_rule_source_ip_range.dart';

/// Input properties used for looking up and filtering ExternalAccessRule resources.
class ExternalAccessRuleState {
  /// The action that the external access rule performs.
  /// Possible values are: `ALLOW`, `DENY`.
  final pulumi.Input<String>? action;
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? createTime;
  /// User-provided description for the external access rule.
  final pulumi.Input<String>? description;
  /// If destination ranges are specified, the external access rule applies only to
  /// traffic that has a destination IP address in these ranges.
  /// Structure is documented below.
  final pulumi.Input<List<ExternalAccessRuleDestinationIpRange>>? destinationIpRanges;
  /// A list of destination ports to which the external access rule applies.
  final pulumi.Input<List<String>>? destinationPorts;
  /// The IP protocol to which the external access rule applies.
  final pulumi.Input<String>? ipProtocol;
  /// The ID of the external access rule.
  final pulumi.Input<String>? name;
  /// The resource name of the network policy.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/networkPolicies/my-policy
  final pulumi.Input<String>? parent;
  /// External access rule priority, which determines the external access rule to use when multiple rules apply.
  final pulumi.Input<int>? priority;
  /// If source ranges are specified, the external access rule applies only to
  /// traffic that has a source IP address in these ranges.
  /// Structure is documented below.
  final pulumi.Input<List<ExternalAccessRuleSourceIpRange>>? sourceIpRanges;
  /// A list of source ports to which the external access rule applies.
  final pulumi.Input<List<String>>? sourcePorts;
  /// State of the Cluster.
  final pulumi.Input<String>? state;
  /// System-generated unique identifier for the resource.
  final pulumi.Input<String>? uid;
  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ExternalAccessRuleState].
  /// [action] The action that the external access rule performs.
  /// [createTime] Creation time of this resource.
  /// [description] User-provided description for the external access rule.
  /// [destinationIpRanges] If destination ranges are specified, the external access rule applies only to
  /// [destinationPorts] A list of destination ports to which the external access rule applies.
  /// [ipProtocol] The IP protocol to which the external access rule applies.
  /// [name] The ID of the external access rule.
  /// [parent] The resource name of the network policy.
  /// [priority] External access rule priority, which determines the external access rule to use when multiple rules apply.
  /// [sourceIpRanges] If source ranges are specified, the external access rule applies only to
  /// [sourcePorts] A list of source ports to which the external access rule applies.
  /// [state] State of the Cluster.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last updated time of this resource.
  ExternalAccessRuleState({
    pulumi.Output<String>? action,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<List<ExternalAccessRuleDestinationIpRange>>? destinationIpRanges,
    pulumi.Output<List<String>>? destinationPorts,
    pulumi.Output<String>? ipProtocol,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<int>? priority,
    pulumi.Output<List<ExternalAccessRuleSourceIpRange>>? sourceIpRanges,
    pulumi.Output<List<String>>? sourcePorts,
    pulumi.Output<String>? state,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      action = pulumi.Input.asOptionalInput<String>(action),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationIpRanges = pulumi.Input.asOptionalInput<List<ExternalAccessRuleDestinationIpRange>>(destinationIpRanges),
      destinationPorts = pulumi.Input.asOptionalInput<List<String>>(destinationPorts),
      ipProtocol = pulumi.Input.asOptionalInput<String>(ipProtocol),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      sourceIpRanges = pulumi.Input.asOptionalInput<List<ExternalAccessRuleSourceIpRange>>(sourceIpRanges),
      sourcePorts = pulumi.Input.asOptionalInput<List<String>>(sourcePorts),
      state = pulumi.Input.asOptionalInput<String>(state),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'createTime': ?createTime,
      'description': ?description,
      'destinationIpRanges': ?pulumi.Input.mapOptionalInputValue<List<ExternalAccessRuleDestinationIpRange>, List<Map<String, dynamic>>>(destinationIpRanges, (value) => pulumi.Input.encodeList<ExternalAccessRuleDestinationIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'destinationPorts': ?destinationPorts,
      'ipProtocol': ?ipProtocol,
      'name': ?name,
      'parent': ?parent,
      'priority': ?priority,
      'sourceIpRanges': ?pulumi.Input.mapOptionalInputValue<List<ExternalAccessRuleSourceIpRange>, List<Map<String, dynamic>>>(sourceIpRanges, (value) => pulumi.Input.encodeList<ExternalAccessRuleSourceIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sourcePorts': ?sourcePorts,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory ExternalAccessRuleState.fromMap(Map<String, dynamic> map) {
    return ExternalAccessRuleState(
      action: map['action'] == null ? null : pulumi.Output.create<String>(map['action'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationIpRanges: map['destinationIpRanges'] == null ? null : pulumi.Output.create<List<ExternalAccessRuleDestinationIpRange>>(pulumi.Input.decodeList<ExternalAccessRuleDestinationIpRange>(map['destinationIpRanges'], (value) => ExternalAccessRuleDestinationIpRange.fromMap((value as Map).cast<String, dynamic>()))),
      destinationPorts: map['destinationPorts'] == null ? null : pulumi.Output.create<List<String>>((map['destinationPorts'] as List).cast<String>()),
      ipProtocol: map['ipProtocol'] == null ? null : pulumi.Output.create<String>(map['ipProtocol'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      sourceIpRanges: map['sourceIpRanges'] == null ? null : pulumi.Output.create<List<ExternalAccessRuleSourceIpRange>>(pulumi.Input.decodeList<ExternalAccessRuleSourceIpRange>(map['sourceIpRanges'], (value) => ExternalAccessRuleSourceIpRange.fromMap((value as Map).cast<String, dynamic>()))),
      sourcePorts: map['sourcePorts'] == null ? null : pulumi.Output.create<List<String>>((map['sourcePorts'] as List).cast<String>()),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

