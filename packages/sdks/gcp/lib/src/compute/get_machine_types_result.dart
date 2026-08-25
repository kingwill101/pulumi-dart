// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_machine_types_machine_type.dart';

/// Result data returned by getMachineTypes.
class GetMachineTypesResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The list of machine types matching the provided filter. Structure is documented below.
  final List<GetMachineTypesMachineType>? machineTypes;
  final String? project;
  final String? zone;

  /// Creates a new [GetMachineTypesResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [machineTypes] The list of machine types matching the provided filter. Structure is documented below.
  /// [project] Optional.
  /// [zone] Optional.
  const GetMachineTypesResult({
    this.filter,
    this.id,
    this.machineTypes,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'machineTypes': ?(() { final guardedValue = machineTypes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetMachineTypesMachineType, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory GetMachineTypesResult.fromMap(Map<String, dynamic> map) {
    return GetMachineTypesResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      machineTypes: (() { final guardedValue = map['machineTypes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetMachineTypesMachineType>(guardedValue, (value) => GetMachineTypesMachineType.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
