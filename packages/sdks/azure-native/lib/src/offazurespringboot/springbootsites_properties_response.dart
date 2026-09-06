// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The springbootsites resource definition.
class SpringbootsitesPropertiesResponse {
  /// The master site ID from Azure Migrate.
  final pulumi.Input<String?>? masterSiteId;
  /// The migrate project ID from Azure Migrate.
  final pulumi.Input<String?>? migrateProjectId;
  /// The resource provisioning state.
  final pulumi.Input<String?>? provisioningState;

  /// Creates a new [SpringbootsitesPropertiesResponse].
  /// [masterSiteId] The master site ID from Azure Migrate.
  /// [migrateProjectId] The migrate project ID from Azure Migrate.
  /// [provisioningState] The resource provisioning state.
  const SpringbootsitesPropertiesResponse({
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
      masterSiteId: (() { final guardedValue = map['masterSiteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrateProjectId: (() { final guardedValue = map['migrateProjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
