// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_regions_get_regions_args_doc}
/// Arguments for getRegions.
/// {@endtemplate}
/// {@macro pulumi_compute_get_regions_get_regions_args_doc}
class GetRegionsArgs {
  /// Project from which to list available regions. Defaults to project declared in the provider.
  final pulumi.Input<String>? project;
  /// Allows to filter list of regions based on their current status. Status can be either `UP` or `DOWN`.
  /// Defaults to no filtering (all available regions - both `UP` and `DOWN`).
  final pulumi.Input<String>? status;

  /// Creates a new [GetRegionsArgs].
  /// [project] Project from which to list available regions. Defaults to project declared in the provider.
  /// [status] Allows to filter list of regions based on their current status. Status can be either `UP` or `DOWN`.
  const GetRegionsArgs({
    this.project,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'status': ?status,
    };
  }

  factory GetRegionsArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionsArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

