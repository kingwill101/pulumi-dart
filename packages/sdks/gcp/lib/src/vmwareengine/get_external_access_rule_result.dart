// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_external_access_rule_destination_ip_range.dart';
import 'get_external_access_rule_source_ip_range.dart';

/// Result data returned by getExternalAccessRule.
class GetExternalAccessRuleResult {
  final String? action;
  final String? createTime;
  final String? deletionPolicy;
  final String? description;
  final List<GetExternalAccessRuleDestinationIpRange>? destinationIpRanges;
  final List<String>? destinationPorts;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? ipProtocol;
  final String? name;
  final String? parent;
  final int? priority;
  final List<GetExternalAccessRuleSourceIpRange>? sourceIpRanges;
  final List<String>? sourcePorts;
  final String? state;
  final String? uid;
  final String? updateTime;

  /// Creates a new [GetExternalAccessRuleResult].
  /// [action] Optional.
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [destinationIpRanges] Optional.
  /// [destinationPorts] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipProtocol] Optional.
  /// [name] Optional.
  /// [parent] Optional.
  /// [priority] Optional.
  /// [sourceIpRanges] Optional.
  /// [sourcePorts] Optional.
  /// [state] Optional.
  /// [uid] Optional.
  /// [updateTime] Optional.
  const GetExternalAccessRuleResult({
    this.action,
    this.createTime,
    this.deletionPolicy,
    this.description,
    this.destinationIpRanges,
    this.destinationPorts,
    this.id,
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
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'destinationIpRanges': ?(() { final guardedValue = destinationIpRanges; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetExternalAccessRuleDestinationIpRange, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'destinationPorts': ?destinationPorts,
      'id': ?id,
      'ipProtocol': ?ipProtocol,
      'name': ?name,
      'parent': ?parent,
      'priority': ?priority,
      'sourceIpRanges': ?(() { final guardedValue = sourceIpRanges; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetExternalAccessRuleSourceIpRange, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sourcePorts': ?sourcePorts,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetExternalAccessRuleResult.fromMap(Map<String, dynamic> map) {
    return GetExternalAccessRuleResult(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationIpRanges: (() { final guardedValue = map['destinationIpRanges']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetExternalAccessRuleDestinationIpRange>(guardedValue, (value) => GetExternalAccessRuleDestinationIpRange.fromMap((value as Map).cast<String, dynamic>())); })(),
      destinationPorts: (() { final guardedValue = map['destinationPorts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipProtocol: (() { final guardedValue = map['ipProtocol']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      sourceIpRanges: (() { final guardedValue = map['sourceIpRanges']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetExternalAccessRuleSourceIpRange>(guardedValue, (value) => GetExternalAccessRuleSourceIpRange.fromMap((value as Map).cast<String, dynamic>())); })(),
      sourcePorts: (() { final guardedValue = map['sourcePorts']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
