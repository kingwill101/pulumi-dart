// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connectors_v1_get_managed_zone_args_doc}
/// Arguments for getManagedZone.
/// {@endtemplate}
/// {@macro pulumi_connectors_v1_get_managed_zone_args_doc}
class GetManagedZoneArgs {
  final pulumi.Input<String> managedZone;
  final pulumi.Input<String>? project;

  /// Creates a new [GetManagedZoneArgs].
  /// [managedZone] Required.
  /// [project] Optional.
  GetManagedZoneArgs({
    required this.managedZone,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedZone': managedZone,
      'project': ?project,
    };
  }

  factory GetManagedZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedZoneArgs(
      managedZone: (map['managedZone'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

