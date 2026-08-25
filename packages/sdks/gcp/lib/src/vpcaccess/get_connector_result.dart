// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connector_subnet.dart';

/// Result data returned by getConnector.
class GetConnectorResult {
  final List<String>? connectedProjects;
  final String? deletionPolicy;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? ipCidrRange;
  final String? machineType;
  final int? maxInstances;
  final int? maxThroughput;
  final int? minInstances;
  final int? minThroughput;
  final String? name;
  final String? network;
  final String? project;
  final String? region;
  final String? selfLink;
  final String? state;
  final List<GetConnectorSubnet>? subnets;

  /// Creates a new [GetConnectorResult].
  /// [connectedProjects] Optional.
  /// [deletionPolicy] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipCidrRange] Optional.
  /// [machineType] Optional.
  /// [maxInstances] Optional.
  /// [maxThroughput] Optional.
  /// [minInstances] Optional.
  /// [minThroughput] Optional.
  /// [name] Optional.
  /// [network] Optional.
  /// [project] Optional.
  /// [region] Optional.
  /// [selfLink] Optional.
  /// [state] Optional.
  /// [subnets] Optional.
  const GetConnectorResult({
    this.connectedProjects,
    this.deletionPolicy,
    this.id,
    this.ipCidrRange,
    this.machineType,
    this.maxInstances,
    this.maxThroughput,
    this.minInstances,
    this.minThroughput,
    this.name,
    this.network,
    this.project,
    this.region,
    this.selfLink,
    this.state,
    this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedProjects': ?connectedProjects,
      'deletionPolicy': ?deletionPolicy,
      'id': ?id,
      'ipCidrRange': ?ipCidrRange,
      'machineType': ?machineType,
      'maxInstances': ?maxInstances,
      'maxThroughput': ?maxThroughput,
      'minInstances': ?minInstances,
      'minThroughput': ?minThroughput,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'region': ?region,
      'selfLink': ?selfLink,
      'state': ?state,
      'subnets': ?(() { final guardedValue = subnets; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConnectorSubnet, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorResult(
      connectedProjects: (() { final guardedValue = map['connectedProjects']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipCidrRange: (() { final guardedValue = map['ipCidrRange']; if (guardedValue == null) return null; return guardedValue as String; })(),
      machineType: (() { final guardedValue = map['machineType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maxInstances: (() { final guardedValue = map['maxInstances']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maxThroughput: (() { final guardedValue = map['maxThroughput']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      minInstances: (() { final guardedValue = map['minInstances']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      minThroughput: (() { final guardedValue = map['minThroughput']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnets: (() { final guardedValue = map['subnets']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConnectorSubnet>(guardedValue, (value) => GetConnectorSubnet.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
