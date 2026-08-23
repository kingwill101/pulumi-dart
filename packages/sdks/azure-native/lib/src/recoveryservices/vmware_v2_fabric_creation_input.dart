// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMwareV2 fabric provider specific settings.
class VMwareV2FabricCreationInput {
  /// Gets the class type.
  /// Expected value is 'VMwareV2'.
  final pulumi.Input<String> instanceType;
  /// The ARM Id of the migration solution.
  final pulumi.Input<String> migrationSolutionId;
  /// The ARM Id of the physical site.
  final pulumi.Input<String>? physicalSiteId;
  /// The ARM Id of the VMware site.
  final pulumi.Input<String>? vmwareSiteId;

  /// Creates a new [VMwareV2FabricCreationInput].
  /// [instanceType] Gets the class type.
  /// [migrationSolutionId] The ARM Id of the migration solution.
  /// [physicalSiteId] The ARM Id of the physical site.
  /// [vmwareSiteId] The ARM Id of the VMware site.
  const VMwareV2FabricCreationInput({
    required this.instanceType,
    required this.migrationSolutionId,
    this.physicalSiteId,
    this.vmwareSiteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'migrationSolutionId': migrationSolutionId,
      'physicalSiteId': ?physicalSiteId,
      'vmwareSiteId': ?vmwareSiteId,
    };
  }

  factory VMwareV2FabricCreationInput.fromMap(Map<String, dynamic> map) {
    return VMwareV2FabricCreationInput(
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      migrationSolutionId: pulumi.Input.fromValue(map['migrationSolutionId'] as String),
      physicalSiteId: (() { final guardedValue = map['physicalSiteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmwareSiteId: (() { final guardedValue = map['vmwareSiteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
