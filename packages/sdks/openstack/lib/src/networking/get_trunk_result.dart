// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_trunk_sub_port.dart';

/// Result data returned by getTrunk.
class GetTrunkResult {
  final bool? adminStateUp;

  /// The set of string tags applied on the trunk.
  final List<String> allTags;
  final String? description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? name;

  /// The ID of the trunk subport.
  final String? portId;
  final String projectId;
  final String region;
  final String? status;

  /// The set of the trunk subports. The structure of each subport is
  /// described below.
  final List<GetTrunkSubPort> subPorts;
  final List<String>? tags;
  final String? trunkId;

  /// Creates a new [GetTrunkResult].
  /// [adminStateUp] Optional.
  /// [allTags] The set of string tags applied on the trunk.
  /// [description] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [portId] The ID of the trunk subport.
  /// [projectId] Required.
  /// [region] Required.
  /// [status] Optional.
  /// [subPorts] The set of the trunk subports. The structure of each subport is
  /// [tags] Optional.
  /// [trunkId] Optional.
  GetTrunkResult({
    this.adminStateUp,
    required this.allTags,
    this.description,
    required this.id,
    this.name,
    this.portId,
    required this.projectId,
    required this.region,
    this.status,
    required this.subPorts,
    this.tags,
    this.trunkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminStateUp': ?adminStateUp,
      'allTags': allTags,
      'description': ?description,
      'id': id,
      'name': ?name,
      'portId': ?portId,
      'projectId': projectId,
      'region': region,
      'status': ?status,
      'subPorts':
          pulumi.Input.encodeList<GetTrunkSubPort, Map<String, dynamic>>(
            subPorts,
            (value) => value.toMap(),
          ),
      'tags': ?tags,
      'trunkId': ?trunkId,
    };
  }

  factory GetTrunkResult.fromMap(Map<String, dynamic> map) {
    return GetTrunkResult(
      adminStateUp: (() {
        final guardedValue = map['adminStateUp'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      allTags: (map['allTags'] as List).cast<String>(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      portId: (() {
        final guardedValue = map['portId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      subPorts: pulumi.Input.decodeList<GetTrunkSubPort>(
        map['subPorts']!,
        (value) =>
            GetTrunkSubPort.fromMap((value as Map).cast<String, dynamic>()),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      trunkId: (() {
        final guardedValue = map['trunkId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
