// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_identity_response.dart';
import 'extended_location_response.dart';
import 'hosting_environment_profile_response.dart';
import 'install_script_response.dart';
import 'kube_environment_profile_response.dart';
import 'managed_service_identity_response.dart';
import 'registry_adapter_response.dart';
import 'server_farm_network_settings_response.dart';
import 'sku_description_response.dart';
import 'storage_mount_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAppServicePlan.
class GetAppServicePlanResult {
  /// If &lt;code&gt;true&lt;/code&gt;, this App Service Plan will attempt to scale asynchronously if there are insufficient workers to scale synchronously.
  /// If &lt;code&gt;false&lt;/code&gt;, this App Service Plan will only attempt sync scaling.
  final bool? asyncScalingEnabled;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// ServerFarm supports ElasticScale. Apps in this plan will scale as if the ServerFarm was ElasticPremium sku
  final bool? elasticScaleEnabled;
  /// Extended Location.
  final ExtendedLocationResponse? extendedLocation;
  /// The time when the server farm free offer expires.
  final String? freeOfferExpirationTime;
  /// Geographical location for the App Service plan.
  final String geoRegion;
  /// Specification for the App Service Environment to use for the App Service plan.
  final HostingEnvironmentProfileResponse? hostingEnvironmentProfile;
  /// If Hyper-V container app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  final bool? hyperV;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Managed service identity.
  final ManagedServiceIdentityResponse? identity;
  /// Install scripts associated with this App Service plan.
  final List<InstallScriptResponse>? installScripts;
  /// Whether this server farm is in custom mode.
  final bool? isCustomMode;
  /// If &lt;code&gt;true&lt;/code&gt;, this App Service Plan owns spot instances.
  final bool? isSpot;
  /// Obsolete: If Hyper-V container app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  final bool? isXenon;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final String? kind;
  /// Specification for the Kubernetes Environment to use for the App Service plan.
  final KubeEnvironmentProfileResponse? kubeEnvironmentProfile;
  /// The geo-location where the resource lives
  final String location;
  /// Maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan
  final int? maximumElasticWorkerCount;
  /// Maximum number of instances that can be assigned to this App Service plan.
  final int maximumNumberOfWorkers;
  /// The name of the resource
  final String name;
  /// All network settings for the server farm.
  final ServerFarmNetworkSettingsResponse? network;
  /// Number of apps assigned to this App Service plan.
  final int numberOfSites;
  /// The number of instances that are assigned to this App Service plan.
  final int numberOfWorkers;
  /// If &lt;code&gt;true&lt;/code&gt;, apps assigned to this App Service plan can be scaled independently.
  /// If &lt;code&gt;false&lt;/code&gt;, apps assigned to this App Service plan will scale to all instances of the plan.
  final bool? perSiteScaling;
  /// Identity to use by platform for various features and integrations using managed identity.
  final DefaultIdentityResponse? planDefaultIdentity;
  /// Provisioning state of the App Service Plan.
  final String provisioningState;
  /// If &lt;code&gt;true&lt;/code&gt;, RDP access is enabled for this App Service plan. Only applicable for IsCustomMode ASPs.
  /// If &lt;code&gt;false&lt;/code&gt;, RDP access is disabled.
  final bool? rdpEnabled;
  /// Registry adapters associated with this App Service plan.
  final List<RegistryAdapterResponse>? registryAdapters;
  /// If Linux app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  final bool? reserved;
  /// Resource group of the App Service plan.
  final String resourceGroup;
  /// Description of a SKU for a scalable resource.
  final SkuDescriptionResponse? sku;
  /// The time when the server farm expires. Valid only if it is a spot server farm.
  final String? spotExpirationTime;
  /// App Service plan status.
  final String status;
  /// Storage mounts associated with this App Service plan.
  final List<StorageMountResponse>? storageMounts;
  /// App Service plan subscription.
  final String subscription;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Scaling worker count.
  final int? targetWorkerCount;
  /// Scaling worker size ID.
  final int? targetWorkerSizeId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Target worker tier assigned to the App Service plan.
  final String? workerTierName;
  /// If &lt;code&gt;true&lt;/code&gt;, this App Service Plan will perform availability zone balancing.
  /// If &lt;code&gt;false&lt;/code&gt;, this App Service Plan will not perform availability zone balancing.
  final bool? zoneRedundant;

  /// Creates a new [GetAppServicePlanResult].
  /// [asyncScalingEnabled] If &lt;code&gt;true&lt;/code&gt;, this App Service Plan will attempt to scale asynchronously if there are insufficient workers to scale synchronously.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [elasticScaleEnabled] ServerFarm supports ElasticScale. Apps in this plan will scale as if the ServerFarm was ElasticPremium sku
  /// [extendedLocation] Extended Location.
  /// [freeOfferExpirationTime] The time when the server farm free offer expires.
  /// [geoRegion] Geographical location for the App Service plan.
  /// [hostingEnvironmentProfile] Specification for the App Service Environment to use for the App Service plan.
  /// [hyperV] If Hyper-V container app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [identity] Managed service identity.
  /// [installScripts] Install scripts associated with this App Service plan.
  /// [isCustomMode] Whether this server farm is in custom mode.
  /// [isSpot] If &lt;code&gt;true&lt;/code&gt;, this App Service Plan owns spot instances.
  /// [isXenon] Obsolete: If Hyper-V container app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [kubeEnvironmentProfile] Specification for the Kubernetes Environment to use for the App Service plan.
  /// [location] The geo-location where the resource lives
  /// [maximumElasticWorkerCount] Maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan
  /// [maximumNumberOfWorkers] Maximum number of instances that can be assigned to this App Service plan.
  /// [name] The name of the resource
  /// [network] All network settings for the server farm.
  /// [numberOfSites] Number of apps assigned to this App Service plan.
  /// [numberOfWorkers] The number of instances that are assigned to this App Service plan.
  /// [perSiteScaling] If &lt;code&gt;true&lt;/code&gt;, apps assigned to this App Service plan can be scaled independently.
  /// [planDefaultIdentity] Identity to use by platform for various features and integrations using managed identity.
  /// [provisioningState] Provisioning state of the App Service Plan.
  /// [rdpEnabled] If &lt;code&gt;true&lt;/code&gt;, RDP access is enabled for this App Service plan. Only applicable for IsCustomMode ASPs.
  /// [registryAdapters] Registry adapters associated with this App Service plan.
  /// [reserved] If Linux app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  /// [resourceGroup] Resource group of the App Service plan.
  /// [sku] Description of a SKU for a scalable resource.
  /// [spotExpirationTime] The time when the server farm expires. Valid only if it is a spot server farm.
  /// [status] App Service plan status.
  /// [storageMounts] Storage mounts associated with this App Service plan.
  /// [subscription] App Service plan subscription.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [targetWorkerCount] Scaling worker count.
  /// [targetWorkerSizeId] Scaling worker size ID.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [workerTierName] Target worker tier assigned to the App Service plan.
  /// [zoneRedundant] If &lt;code&gt;true&lt;/code&gt;, this App Service Plan will perform availability zone balancing.
  const GetAppServicePlanResult({
    this.asyncScalingEnabled,
    required this.azureApiVersion,
    this.elasticScaleEnabled,
    this.extendedLocation,
    this.freeOfferExpirationTime,
    required this.geoRegion,
    this.hostingEnvironmentProfile,
    this.hyperV,
    required this.id,
    this.identity,
    this.installScripts,
    this.isCustomMode,
    this.isSpot,
    this.isXenon,
    this.kind,
    this.kubeEnvironmentProfile,
    required this.location,
    this.maximumElasticWorkerCount,
    required this.maximumNumberOfWorkers,
    required this.name,
    this.network,
    required this.numberOfSites,
    required this.numberOfWorkers,
    this.perSiteScaling,
    this.planDefaultIdentity,
    required this.provisioningState,
    this.rdpEnabled,
    this.registryAdapters,
    this.reserved,
    required this.resourceGroup,
    this.sku,
    this.spotExpirationTime,
    required this.status,
    this.storageMounts,
    required this.subscription,
    required this.systemData,
    this.tags,
    this.targetWorkerCount,
    this.targetWorkerSizeId,
    required this.type,
    this.workerTierName,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncScalingEnabled': ?asyncScalingEnabled,
      'azureApiVersion': azureApiVersion,
      'elasticScaleEnabled': ?elasticScaleEnabled,
      'extendedLocation': ?extendedLocation?.toMap(),
      'freeOfferExpirationTime': ?freeOfferExpirationTime,
      'geoRegion': geoRegion,
      'hostingEnvironmentProfile': ?hostingEnvironmentProfile?.toMap(),
      'hyperV': ?hyperV,
      'id': id,
      'identity': ?identity?.toMap(),
      'installScripts': ?(() { final guardedValue = installScripts; if (guardedValue == null) return null; return pulumi.Input.encodeList<InstallScriptResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'isCustomMode': ?isCustomMode,
      'isSpot': ?isSpot,
      'isXenon': ?isXenon,
      'kind': ?kind,
      'kubeEnvironmentProfile': ?kubeEnvironmentProfile?.toMap(),
      'location': location,
      'maximumElasticWorkerCount': ?maximumElasticWorkerCount,
      'maximumNumberOfWorkers': maximumNumberOfWorkers,
      'name': name,
      'network': ?network?.toMap(),
      'numberOfSites': numberOfSites,
      'numberOfWorkers': numberOfWorkers,
      'perSiteScaling': ?perSiteScaling,
      'planDefaultIdentity': ?planDefaultIdentity?.toMap(),
      'provisioningState': provisioningState,
      'rdpEnabled': ?rdpEnabled,
      'registryAdapters': ?(() { final guardedValue = registryAdapters; if (guardedValue == null) return null; return pulumi.Input.encodeList<RegistryAdapterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'reserved': ?reserved,
      'resourceGroup': resourceGroup,
      'sku': ?sku?.toMap(),
      'spotExpirationTime': ?spotExpirationTime,
      'status': status,
      'storageMounts': ?(() { final guardedValue = storageMounts; if (guardedValue == null) return null; return pulumi.Input.encodeList<StorageMountResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'subscription': subscription,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'targetWorkerCount': ?targetWorkerCount,
      'targetWorkerSizeId': ?targetWorkerSizeId,
      'type': type,
      'workerTierName': ?workerTierName,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory GetAppServicePlanResult.fromMap(Map<String, dynamic> map) {
    return GetAppServicePlanResult(
      asyncScalingEnabled: (() { final guardedValue = map['asyncScalingEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      elasticScaleEnabled: (() { final guardedValue = map['elasticScaleEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return ExtendedLocationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      freeOfferExpirationTime: (() { final guardedValue = map['freeOfferExpirationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      geoRegion: map['geoRegion'] as String,
      hostingEnvironmentProfile: (() { final guardedValue = map['hostingEnvironmentProfile']; if (guardedValue == null) return null; return HostingEnvironmentProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      hyperV: (() { final guardedValue = map['hyperV']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      installScripts: (() { final guardedValue = map['installScripts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<InstallScriptResponse>(guardedValue, (value) => InstallScriptResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      isCustomMode: (() { final guardedValue = map['isCustomMode']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isSpot: (() { final guardedValue = map['isSpot']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      isXenon: (() { final guardedValue = map['isXenon']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kubeEnvironmentProfile: (() { final guardedValue = map['kubeEnvironmentProfile']; if (guardedValue == null) return null; return KubeEnvironmentProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: map['location'] as String,
      maximumElasticWorkerCount: (() { final guardedValue = map['maximumElasticWorkerCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      maximumNumberOfWorkers: map['maximumNumberOfWorkers'] as int,
      name: map['name'] as String,
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return ServerFarmNetworkSettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      numberOfSites: map['numberOfSites'] as int,
      numberOfWorkers: map['numberOfWorkers'] as int,
      perSiteScaling: (() { final guardedValue = map['perSiteScaling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      planDefaultIdentity: (() { final guardedValue = map['planDefaultIdentity']; if (guardedValue == null) return null; return DefaultIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: map['provisioningState'] as String,
      rdpEnabled: (() { final guardedValue = map['rdpEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      registryAdapters: (() { final guardedValue = map['registryAdapters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryAdapterResponse>(guardedValue, (value) => RegistryAdapterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      reserved: (() { final guardedValue = map['reserved']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroup: map['resourceGroup'] as String,
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuDescriptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      spotExpirationTime: (() { final guardedValue = map['spotExpirationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: map['status'] as String,
      storageMounts: (() { final guardedValue = map['storageMounts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<StorageMountResponse>(guardedValue, (value) => StorageMountResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      subscription: map['subscription'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetWorkerCount: (() { final guardedValue = map['targetWorkerCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      targetWorkerSizeId: (() { final guardedValue = map['targetWorkerSizeId']; if (guardedValue == null) return null; return guardedValue as int; })(),
      type: map['type'] as String,
      workerTierName: (() { final guardedValue = map['workerTierName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
