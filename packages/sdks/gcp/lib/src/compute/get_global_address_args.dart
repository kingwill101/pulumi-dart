// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_global_address_get_global_address_args_doc}
/// Arguments for getGlobalAddress.
/// {@endtemplate}
/// {@macro pulumi_compute_get_global_address_get_global_address_args_doc}
class GetGlobalAddressArgs {
  /// A unique name for the resource, required by GCE.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [GetGlobalAddressArgs].
  /// [name] A unique name for the resource, required by GCE.
  /// [project] The project in which the resource belongs. If it
  const GetGlobalAddressArgs({
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
    };
  }

  factory GetGlobalAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalAddressArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
