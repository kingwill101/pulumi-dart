// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_managed_zones_get_managed_zones_args_doc}
/// Arguments for getManagedZones.
/// {@endtemplate}
/// {@macro pulumi_dns_get_managed_zones_get_managed_zones_args_doc}
class GetManagedZonesArgs {
  /// The ID of the project containing Google Cloud DNS zones. If this is not provided the default project will be used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetManagedZonesArgs].
  /// [project] The ID of the project containing Google Cloud DNS zones. If this is not provided the default project will be used.
  GetManagedZonesArgs({
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
    };
  }

  factory GetManagedZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedZonesArgs(
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

