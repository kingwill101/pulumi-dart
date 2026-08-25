// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_address_get_address_args_doc}
/// Arguments for getAddress.
/// {@endtemplate}
/// {@macro pulumi_compute_get_address_get_address_args_doc}
class GetAddressArgs {
  /// A unique name for the resource, required by GCE.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The Region in which the created address reside.
  /// If it is not provided, the provider region is used.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetAddressArgs].
  /// [name] A unique name for the resource, required by GCE.
  /// [project] The project in which the resource belongs. If it
  /// [region] The Region in which the created address reside.
  const GetAddressArgs({
    required this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetAddressArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
