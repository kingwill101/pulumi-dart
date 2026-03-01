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
  final pulumi.Input<String>? location;
  /// Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  final pulumi.Input<String> maintenanceConfigurationId;

  /// Creates a new [AssignmentDedicatedHostArgs].
  /// [dedicatedHostId] Specifies the Dedicated Host ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [maintenanceConfigurationId] Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  AssignmentDedicatedHostArgs({
    required pulumi.Output<String> dedicatedHostId,
    pulumi.Output<String>? location,
    required pulumi.Output<String> maintenanceConfigurationId,
  }) :
      dedicatedHostId = pulumi.Input.asInput<String>(dedicatedHostId),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceConfigurationId = pulumi.Input.asInput<String>(maintenanceConfigurationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedHostId': dedicatedHostId,
      'location': ?location,
      'maintenanceConfigurationId': maintenanceConfigurationId,
    };
  }

  factory AssignmentDedicatedHostArgs.fromMap(Map<String, dynamic> map) {
    return AssignmentDedicatedHostArgs(
      dedicatedHostId: pulumi.Output.create<String>(map['dedicatedHostId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceConfigurationId: pulumi.Output.create<String>(map['maintenanceConfigurationId'] as String),
    );
  }
}

