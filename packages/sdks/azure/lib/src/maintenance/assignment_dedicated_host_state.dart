// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AssignmentDedicatedHost resources.
class AssignmentDedicatedHostState {
  /// Specifies the Dedicated Host ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  final pulumi.Input<String>? dedicatedHostId;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? maintenanceConfigurationId;

  /// Creates a new [AssignmentDedicatedHostState].
  /// [dedicatedHostId] Specifies the Dedicated Host ID to which the Maintenance Configuration will be assigned. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [maintenanceConfigurationId] Specifies the ID of the Maintenance Configuration Resource. Changing this forces a new resource to be created.
  AssignmentDedicatedHostState({
    pulumi.Output<String>? dedicatedHostId,
    pulumi.Output<String>? location,
    pulumi.Output<String>? maintenanceConfigurationId,
  }) :
      dedicatedHostId = pulumi.Input.asOptionalInput<String>(dedicatedHostId),
      location = pulumi.Input.asOptionalInput<String>(location),
      maintenanceConfigurationId = pulumi.Input.asOptionalInput<String>(maintenanceConfigurationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dedicatedHostId': ?dedicatedHostId,
      'location': ?location,
      'maintenanceConfigurationId': ?maintenanceConfigurationId,
    };
  }

  factory AssignmentDedicatedHostState.fromMap(Map<String, dynamic> map) {
    return AssignmentDedicatedHostState(
      dedicatedHostId: map['dedicatedHostId'] == null ? null : pulumi.Output.create<String>(map['dedicatedHostId'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maintenanceConfigurationId: map['maintenanceConfigurationId'] == null ? null : pulumi.Output.create<String>(map['maintenanceConfigurationId'] as String),
    );
  }
}

