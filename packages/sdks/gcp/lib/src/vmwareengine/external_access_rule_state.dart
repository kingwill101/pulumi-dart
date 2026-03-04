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
  final pulumi.Input<List<ExternalAccessRuleDestinationIpRange>>?
  destinationIpRanges;

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
    this.action,
    this.createTime,
    this.description,
    this.destinationIpRanges,
    this.destinationPorts,
    this.ipProtocol,
    this.name,
    this.parent,
    this.priority,
    this.sourceIpRanges,
    this.sourcePorts,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'createTime': ?createTime,
      'description': ?description,
      'destinationIpRanges':
          ?pulumi.Input.mapOptionalInputValue<
            List<ExternalAccessRuleDestinationIpRange>,
            List<Map<String, dynamic>>
          >(
            destinationIpRanges,
            (value) =>
                pulumi.Input.encodeList<
                  ExternalAccessRuleDestinationIpRange,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'destinationPorts': ?destinationPorts,
      'ipProtocol': ?ipProtocol,
      'name': ?name,
      'parent': ?parent,
      'priority': ?priority,
      'sourceIpRanges':
          ?pulumi.Input.mapOptionalInputValue<
            List<ExternalAccessRuleSourceIpRange>,
            List<Map<String, dynamic>>
          >(
            sourceIpRanges,
            (value) =>
                pulumi.Input.encodeList<
                  ExternalAccessRuleSourceIpRange,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'sourcePorts': ?sourcePorts,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory ExternalAccessRuleState.fromMap(Map<String, dynamic> map) {
    return ExternalAccessRuleState(
      action: (() {
        final guardedValue = map['action'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destinationIpRanges: (() {
        final guardedValue = map['destinationIpRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ExternalAccessRuleDestinationIpRange>(
            guardedValue,
            (value) => ExternalAccessRuleDestinationIpRange.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      destinationPorts: (() {
        final guardedValue = map['destinationPorts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      ipProtocol: (() {
        final guardedValue = map['ipProtocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parent: (() {
        final guardedValue = map['parent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      sourceIpRanges: (() {
        final guardedValue = map['sourceIpRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ExternalAccessRuleSourceIpRange>(
            guardedValue,
            (value) => ExternalAccessRuleSourceIpRange.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      sourcePorts: (() {
        final guardedValue = map['sourcePorts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uid: (() {
        final guardedValue = map['uid'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
