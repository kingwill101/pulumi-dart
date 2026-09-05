// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maintenance_assignment_dedicated_host_assignment_dedicated_host_args_doc}
/// The set of arguments for AssignmentDedicatedHost.
/// {@endtemplate}
/// {@macro pulumi_maintenance_assignment_dedicated_host_assignment_dedicated_host_args_doc}
class AssignmentDedicatedHostArgs {
  /// Specifies the Dedicated Host ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  final pulumi.Input<String> dedicatedHostId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> maintenanceConfigurationId;

  /// Creates a new [AssignmentDedicatedHostArgs].
  /// [dedicatedHostId] Specifies the Dedicated Host ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [maintenanceConfigurationId] Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  const AssignmentDedicatedHostArgs({
    required this.dedicatedHostId,
    this.location,
    required this.maintenanceConfigurationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedHostId': dedicatedHostId,
      'location': ?location,
      'maintenanceConfigurationId': maintenanceConfigurationId,
    };
  }

  factory AssignmentDedicatedHostArgs.fromMap(Map<String, dynamic> map) {
    return AssignmentDedicatedHostArgs(
      dedicatedHostId: pulumi.Input.fromValue(map['dedicatedHostId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maintenanceConfigurationId: pulumi.Input.fromValue(map['maintenanceConfigurationId'] as String),
    );
  }
}
