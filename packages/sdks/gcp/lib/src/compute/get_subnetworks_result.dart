// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnetworks_subnetwork.dart';

/// Result data returned by getSubnetworks.
class GetSubnetworksResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? project;
  final String? region;
  /// A list of all retrieved GCE subnetworks. Structure is defined below.
  final List<GetSubnetworksSubnetwork>? subnetworks;

  /// Creates a new [GetSubnetworksResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Optional.
  /// [region] Optional.
  /// [subnetworks] A list of all retrieved GCE subnetworks. Structure is defined below.
  const GetSubnetworksResult({
    this.filter,
    this.id,
    this.project,
    this.region,
    this.subnetworks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'project': ?project,
      'region': ?region,
      'subnetworks': ?(() { final guardedValue = subnetworks; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetSubnetworksSubnetwork, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSubnetworksResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetworksResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetworks: (() { final guardedValue = map['subnetworks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetSubnetworksSubnetwork>(guardedValue, (value) => GetSubnetworksSubnetwork.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
