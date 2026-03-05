// ignore_for_file: unused_element, unnecessary_cast

import 'app_service_plan_configuration_response.dart';
import 'error_detail_response.dart';
import 'managed_resource_group_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMonitor.
class GetMonitorResult {
  /// The SAP monitor resources will be deployed in the SAP monitoring region. The subnet region should be same as the SAP monitoring region.
  final String? appLocation;
  /// App service plan configuration
  final AppServicePlanConfigurationResponse? appServicePlanConfiguration;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Defines the SAP monitor errors.
  final ErrorDetailResponse errors;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The managed service identities assigned to this resource.
  final ManagedServiceIdentityResponse? identity;
  /// The geo-location where the resource lives
  final String location;
  /// The ARM ID of the Log Analytics Workspace that is used for SAP monitoring.
  final String? logAnalyticsWorkspaceArmId;
  /// Managed resource group configuration
  final ManagedResourceGroupConfigurationResponse? managedResourceGroupConfiguration;
  /// The subnet which the SAP monitor will be deployed in
  final String? monitorSubnet;
  /// The ARM ID of the MSI used for SAP monitoring.
  final String msiArmId;
  /// The name of the resource
  final String name;
  /// State of provisioning of the SAP monitor.
  final String provisioningState;
  /// Sets the routing preference of the SAP monitor. By default only RFC1918 traffic is routed to the customer VNET.
  final String? routingPreference;
  /// The ARM ID of the Storage account used for SAP monitoring.
  final String storageAccountArmId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Sets the preference for zone redundancy on resources created for the SAP monitor. By default resources will be created which do not support zone redundancy.
  final String? zoneRedundancyPreference;

  /// Creates a new [GetMonitorResult].
  /// [appLocation] The SAP monitor resources will be deployed in the SAP monitoring region. The subnet region should be same as the SAP monitoring region.
  /// [appServicePlanConfiguration] App service plan configuration
  /// [azureApiVersion] The Azure API version of the resource.
  /// [errors] Defines the SAP monitor errors.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] The managed service identities assigned to this resource.
  /// [location] The geo-location where the resource lives
  /// [logAnalyticsWorkspaceArmId] The ARM ID of the Log Analytics Workspace that is used for SAP monitoring.
  /// [managedResourceGroupConfiguration] Managed resource group configuration
  /// [monitorSubnet] The subnet which the SAP monitor will be deployed in
  /// [msiArmId] The ARM ID of the MSI used for SAP monitoring.
  /// [name] The name of the resource
  /// [provisioningState] State of provisioning of the SAP monitor.
  /// [routingPreference] Sets the routing preference of the SAP monitor. By default only RFC1918 traffic is routed to the customer VNET.
  /// [storageAccountArmId] The ARM ID of the Storage account used for SAP monitoring.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [zoneRedundancyPreference] Sets the preference for zone redundancy on resources created for the SAP monitor. By default resources will be created which do not support zone redundancy.
  GetMonitorResult({
    this.appLocation,
    this.appServicePlanConfiguration,
    required this.azureApiVersion,
    required this.errors,
    required this.id,
    this.identity,
    required this.location,
    this.logAnalyticsWorkspaceArmId,
    this.managedResourceGroupConfiguration,
    this.monitorSubnet,
    required this.msiArmId,
    required this.name,
    required this.provisioningState,
    this.routingPreference,
    required this.storageAccountArmId,
    required this.systemData,
    this.tags,
    required this.type,
    this.zoneRedundancyPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appLocation': ?appLocation,
      'appServicePlanConfiguration': ?appServicePlanConfiguration?.toMap(),
      'azureApiVersion': azureApiVersion,
      'errors': errors.toMap(),
      'id': id,
      'identity': ?identity?.toMap(),
      'location': location,
      'logAnalyticsWorkspaceArmId': ?logAnalyticsWorkspaceArmId,
      'managedResourceGroupConfiguration': ?managedResourceGroupConfiguration?.toMap(),
      'monitorSubnet': ?monitorSubnet,
      'msiArmId': msiArmId,
      'name': name,
      'provisioningState': provisioningState,
      'routingPreference': ?routingPreference,
      'storageAccountArmId': storageAccountArmId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'zoneRedundancyPreference': ?zoneRedundancyPreference,
    };
  }

  factory GetMonitorResult.fromMap(Map<String, dynamic> map) {
    return GetMonitorResult(
      appLocation: (() { final guardedValue = map['appLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appServicePlanConfiguration: (() { final guardedValue = map['appServicePlanConfiguration']; if (guardedValue == null) return null; return AppServicePlanConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      errors: ErrorDetailResponse.fromMap((map['errors']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      logAnalyticsWorkspaceArmId: (() { final guardedValue = map['logAnalyticsWorkspaceArmId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedResourceGroupConfiguration: (() { final guardedValue = map['managedResourceGroupConfiguration']; if (guardedValue == null) return null; return ManagedResourceGroupConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      monitorSubnet: (() { final guardedValue = map['monitorSubnet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      msiArmId: map['msiArmId'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      routingPreference: (() { final guardedValue = map['routingPreference']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageAccountArmId: map['storageAccountArmId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      zoneRedundancyPreference: (() { final guardedValue = map['zoneRedundancyPreference']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

