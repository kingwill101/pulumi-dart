// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_manager_admin_rule_destination.dart';
import 'network_manager_admin_rule_source.dart';

/// Input properties used for looking up and filtering NetworkManagerAdminRule resources.
class NetworkManagerAdminRuleState {
  /// Specifies the action allowed for this Network Manager Admin Rule. Possible values are `Allow`, `AlwaysAllow`, and `Deny`.
  final pulumi.Input<String?>? action;
  /// Specifies the ID of the Network Manager Admin Rule Collection. Changing this forces a new Network Manager Admin Rule to be created.
  final pulumi.Input<String?>? adminRuleCollectionId;
  /// A description of the Network Manager Admin Rule.
  final pulumi.Input<String?>? description;
  /// A list of string specifies the destination port ranges. Specify one or more single port number or port ranges such as `1024-65535`. Use `*` to specify any port.
  final pulumi.Input<List<String>?>? destinationPortRanges;
  /// One or more `destination` blocks as defined below.
  final pulumi.Input<List<NetworkManagerAdminRuleDestination>?>? destinations;
  /// Indicates if the traffic matched against the rule in inbound or outbound. Possible values are `Inbound` and `Outbound`.
  final pulumi.Input<String?>? direction;
  /// Specifies the name which should be used for this Network Manager Admin Rule. Changing this forces a new Network Manager Admin Rule to be created.
  final pulumi.Input<String?>? name;
  /// The priority of the rule. Possible values are integers between `1` and `4096`. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  final pulumi.Input<int?>? priority;
  /// Specifies which network protocol this Network Manager Admin Rule applies to. Possible values are `Ah`, `Any`, `Esp`, `Icmp`, `Tcp`, and `Udp`.
  final pulumi.Input<String?>? protocol;
  /// A list of string specifies the source port ranges. Specify one or more single port number or port ranges such as `1024-65535`. Use `*` to specify any port.
  final pulumi.Input<List<String>?>? sourcePortRanges;
  /// One or more `source` blocks as defined below.
  final pulumi.Input<List<NetworkManagerAdminRuleSource>?>? sources;

  /// Creates a new [NetworkManagerAdminRuleState].
  /// [action] Specifies the action allowed for this Network Manager Admin Rule. Possible values are `Allow`, `AlwaysAllow`, and `Deny`.
  /// [adminRuleCollectionId] Specifies the ID of the Network Manager Admin Rule Collection. Changing this forces a new Network Manager Admin Rule to be created.
  /// [description] A description of the Network Manager Admin Rule.
  /// [destinationPortRanges] A list of string specifies the destination port ranges. Specify one or more single port number or port ranges such as `1024-65535`. Use `*` to specify any port.
  /// [destinations] One or more `destination` blocks as defined below.
  /// [direction] Indicates if the traffic matched against the rule in inbound or outbound. Possible values are `Inbound` and `Outbound`.
  /// [name] Specifies the name which should be used for this Network Manager Admin Rule. Changing this forces a new Network Manager Admin Rule to be created.
  /// [priority] The priority of the rule. Possible values are integers between `1` and `4096`. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  /// [protocol] Specifies which network protocol this Network Manager Admin Rule applies to. Possible values are `Ah`, `Any`, `Esp`, `Icmp`, `Tcp`, and `Udp`.
  /// [sourcePortRanges] A list of string specifies the source port ranges. Specify one or more single port number or port ranges such as `1024-65535`. Use `*` to specify any port.
  /// [sources] One or more `source` blocks as defined below.
  const NetworkManagerAdminRuleState({
    this.action,
    this.adminRuleCollectionId,
    this.description,
    this.destinationPortRanges,
    this.destinations,
    this.direction,
    this.name,
    this.priority,
    this.protocol,
    this.sourcePortRanges,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'adminRuleCollectionId': ?adminRuleCollectionId,
      'description': ?description,
      'destinationPortRanges': ?destinationPortRanges,
      'destinations': ?pulumi.Input.mapOptionalInputValue<List<NetworkManagerAdminRuleDestination>, List<Map<String, dynamic>>>(destinations, (value) => pulumi.Input.encodeList<NetworkManagerAdminRuleDestination, Map<String, dynamic>>(value, (value) => value.toMap())),
      'direction': ?direction,
      'name': ?name,
      'priority': ?priority,
      'protocol': ?protocol,
      'sourcePortRanges': ?sourcePortRanges,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<NetworkManagerAdminRuleSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<NetworkManagerAdminRuleSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkManagerAdminRuleState.fromMap(Map<String, dynamic> map) {
    return NetworkManagerAdminRuleState(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminRuleCollectionId: (() { final guardedValue = map['adminRuleCollectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPortRanges: (() { final guardedValue = map['destinationPortRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkManagerAdminRuleDestination>(guardedValue, (value) => NetworkManagerAdminRuleDestination.fromMap((value as Map).cast<String, dynamic>()))); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourcePortRanges: (() { final guardedValue = map['sourcePortRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NetworkManagerAdminRuleSource>(guardedValue, (value) => NetworkManagerAdminRuleSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
