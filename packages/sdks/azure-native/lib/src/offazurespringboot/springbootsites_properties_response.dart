// ignore_for_file: unused_element, unnecessary_cast


/// The springbootsites resource definition.
class SpringbootsitesPropertiesResponse {
  /// The master site ID from Azure Migrate.
  final String? masterSiteId;
  /// The migrate project ID from Azure Migrate.
  final String? migrateProjectId;
  /// The resource provisioning state.
  final String? provisioningState;

  /// Creates a new [SpringbootsitesPropertiesResponse].
  /// [masterSiteId] The master site ID from Azure Migrate.
  /// [migrateProjectId] The migrate project ID from Azure Migrate.
  /// [provisioningState] The resource provisioning state.
  SpringbootsitesPropertiesResponse({
    this.masterSiteId,
    this.migrateProjectId,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'masterSiteId': ?masterSiteId,
      'migrateProjectId': ?migrateProjectId,
      'provisioningState': ?provisioningState,
    };
  }

  factory SpringbootsitesPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SpringbootsitesPropertiesResponse(
      masterSiteId: map['masterSiteId'] == null ? null : map['masterSiteId'] as String,
      migrateProjectId: map['migrateProjectId'] == null ? null : map['migrateProjectId'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
    );
  }
}

