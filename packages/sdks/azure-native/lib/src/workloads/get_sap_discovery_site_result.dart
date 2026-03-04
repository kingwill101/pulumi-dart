// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'sapmigrate_error_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSapDiscoverySite.
class GetSapDiscoverySiteResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Indicates any errors on the SAP Migration discovery site resource.
  final SAPMigrateErrorResponse errors;

  /// The extended location definition.
  final ExtendedLocationResponse? extendedLocation;

  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;

  /// The geo-location where the resource lives
  final String location;

  /// The master site ID from Azure Migrate.
  final String? masterSiteId;

  /// The migrate project ID from Azure Migrate.
  final String? migrateProjectId;

  /// The name of the resource
  final String name;

  /// Defines the provisioning states.
  final String provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// Resource tags.
  final Map<String, String>? tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetSapDiscoverySiteResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [errors] Indicates any errors on the SAP Migration discovery site resource.
  /// [extendedLocation] The extended location definition.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [masterSiteId] The master site ID from Azure Migrate.
  /// [migrateProjectId] The migrate project ID from Azure Migrate.
  /// [name] The name of the resource
  /// [provisioningState] Defines the provisioning states.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetSapDiscoverySiteResult({
    required this.azureApiVersion,
    required this.errors,
    this.extendedLocation,
    required this.id,
    required this.location,
    this.masterSiteId,
    this.migrateProjectId,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'errors': errors.toMap(),
      'extendedLocation': ?extendedLocation?.toMap(),
      'id': id,
      'location': location,
      'masterSiteId': ?masterSiteId,
      'migrateProjectId': ?migrateProjectId,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetSapDiscoverySiteResult.fromMap(Map<String, dynamic> map) {
    return GetSapDiscoverySiteResult(
      azureApiVersion: map['azureApiVersion'] as String,
      errors: SAPMigrateErrorResponse.fromMap(
        (map['errors']! as Map).cast<String, dynamic>(),
      ),
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      id: map['id'] as String,
      location: map['location'] as String,
      masterSiteId: (() {
        final guardedValue = map['masterSiteId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      migrateProjectId: (() {
        final guardedValue = map['migrateProjectId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
