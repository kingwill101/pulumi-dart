// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tpu_get_v2_accelerator_types_get_v2_accelerator_types_args_doc}
/// Arguments for getV2AcceleratorTypes.
/// {@endtemplate}
/// {@macro pulumi_tpu_get_v2_accelerator_types_get_v2_accelerator_types_args_doc}
class GetV2AcceleratorTypesArgs {
  /// The project to list types for. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The zone to list types for. If it
  /// is not provided, the provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetV2AcceleratorTypesArgs].
  /// [project] The project to list types for. If it
  /// [zone] The zone to list types for. If it
  const GetV2AcceleratorTypesArgs({
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory GetV2AcceleratorTypesArgs.fromMap(Map<String, dynamic> map) {
    return GetV2AcceleratorTypesArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
