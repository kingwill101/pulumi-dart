// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_machine_types_machine_type.dart';

/// Result data returned by getMachineTypes.
class GetMachineTypesResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The list of machine types matching the provided filter. Structure is documented below.
  final List<GetMachineTypesMachineType> machineTypes;
  final String project;
  final String zone;

  /// Creates a new [GetMachineTypesResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [machineTypes] The list of machine types matching the provided filter. Structure is documented below.
  /// [project] Required.
  /// [zone] Required.
  GetMachineTypesResult({
    this.filter,
    required this.id,
    required this.machineTypes,
    required this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': id,
      'machineTypes': pulumi.Input.encodeList<GetMachineTypesMachineType, Map<String, dynamic>>(machineTypes, (value) => value.toMap()),
      'project': project,
      'zone': zone,
    };
  }

  factory GetMachineTypesResult.fromMap(Map<String, dynamic> map) {
    return GetMachineTypesResult(
      filter: map['filter'] == null ? null : map['filter'] as String,
      id: map['id'] as String,
      machineTypes: pulumi.Input.decodeList<GetMachineTypesMachineType>(map['machineTypes'], (value) => GetMachineTypesMachineType.fromMap((value as Map).cast<String, dynamic>())),
      project: map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}

