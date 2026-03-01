// ignore_for_file: unused_element, unnecessary_cast


/// VMwareV2 fabric provider specific settings.
class VMwareV2FabricCreationInput {
  /// Gets the class type.
  /// Expected value is 'VMwareV2'.
  final String instanceType;
  /// The ARM Id of the migration solution.
  final String migrationSolutionId;
  /// The ARM Id of the physical site.
  final String? physicalSiteId;
  /// The ARM Id of the VMware site.
  final String? vmwareSiteId;

  /// Creates a new [VMwareV2FabricCreationInput].
  /// [instanceType] Gets the class type.
  /// [migrationSolutionId] The ARM Id of the migration solution.
  /// [physicalSiteId] The ARM Id of the physical site.
  /// [vmwareSiteId] The ARM Id of the VMware site.
  VMwareV2FabricCreationInput({
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
      instanceType: map['instanceType'] as String,
      migrationSolutionId: map['migrationSolutionId'] as String,
      physicalSiteId: map['physicalSiteId'] == null ? null : map['physicalSiteId'] as String,
      vmwareSiteId: map['vmwareSiteId'] == null ? null : map['vmwareSiteId'] as String,
    );
  }
}

