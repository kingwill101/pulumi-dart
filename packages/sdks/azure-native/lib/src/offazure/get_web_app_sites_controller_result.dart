// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'site_appliance_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getWebAppSitesController.
class GetWebAppSitesControllerResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Gets or sets the discovery scenario.
  final String? discoveryScenario;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// provisioning state enum
  final String? provisioningState;
  /// Gets the service endpoint.
  final String? serviceEndpoint;
  /// Gets or sets the appliance details used by service to communicate
  ///
  /// to the appliance.
  final List<SiteAppliancePropertiesResponse>? siteAppliancePropertiesCollection;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
  const GetWebAppSitesControllerResult({
    this.azureApiVersion,
    this.discoveryScenario,
    this.id,
    this.name,
    this.provisioningState,
    this.serviceEndpoint,
    this.siteAppliancePropertiesCollection,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'discoveryScenario': ?discoveryScenario,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'serviceEndpoint': ?serviceEndpoint,
      'siteAppliancePropertiesCollection': ?(() { final guardedValue = siteAppliancePropertiesCollection; if (guardedValue == null) return null; return pulumi.Input.encodeList<SiteAppliancePropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetWebAppSitesControllerResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppSitesControllerResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      discoveryScenario: (() { final guardedValue = map['discoveryScenario']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceEndpoint: (() { final guardedValue = map['serviceEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      siteAppliancePropertiesCollection: (() { final guardedValue = map['siteAppliancePropertiesCollection']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SiteAppliancePropertiesResponse>(guardedValue, (value) => SiteAppliancePropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
