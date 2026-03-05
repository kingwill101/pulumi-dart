// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_appliance_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getWebAppSitesController.
class GetWebAppSitesControllerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets or sets the discovery scenario.
  final String? discoveryScenario;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// provisioning state enum
  final String provisioningState;
  /// Gets the service endpoint.
  final String serviceEndpoint;
  /// Gets or sets the appliance details used by service to communicate
  ///
  /// to the appliance.
  final List<SiteAppliancePropertiesResponse>? siteAppliancePropertiesCollection;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetWebAppSitesControllerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [discoveryScenario] Gets or sets the discovery scenario.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] provisioning state enum
  /// [serviceEndpoint] Gets the service endpoint.
  /// [siteAppliancePropertiesCollection] Gets or sets the appliance details used by service to communicate
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetWebAppSitesControllerResult({
    required this.azureApiVersion,
    this.discoveryScenario,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.serviceEndpoint,
    this.siteAppliancePropertiesCollection,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'discoveryScenario': ?discoveryScenario,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'serviceEndpoint': serviceEndpoint,
      'siteAppliancePropertiesCollection': ?(() { final guardedValue = siteAppliancePropertiesCollection; if (guardedValue == null) return null; return pulumi.Input.encodeList<SiteAppliancePropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetWebAppSitesControllerResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppSitesControllerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      discoveryScenario: (() { final guardedValue = map['discoveryScenario']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      serviceEndpoint: map['serviceEndpoint'] as String,
      siteAppliancePropertiesCollection: (() { final guardedValue = map['siteAppliancePropertiesCollection']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SiteAppliancePropertiesResponse>(guardedValue, (value) => SiteAppliancePropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

