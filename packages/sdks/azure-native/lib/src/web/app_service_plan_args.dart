// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_identity.dart';
import 'extended_location.dart';
import 'hosting_environment_profile.dart';
import 'install_script.dart';
import 'kube_environment_profile.dart';
import 'managed_service_identity.dart';
import 'registry_adapter.dart';
import 'server_farm_network_settings.dart';
import 'sku_description.dart';
import 'storage_mount.dart';

/// {@template pulumi_web_app_service_plan_args_doc}
/// The set of arguments for AppServicePlan.
/// {@endtemplate}
/// {@macro pulumi_web_app_service_plan_args_doc}
class AppServicePlanArgs {
  /// If &lt;code&gt;true&lt;/code&gt;, this App Service Plan will attempt to scale asynchronously if there are insufficient workers to scale synchronously.
  /// If &lt;code&gt;false&lt;/code&gt;, this App Service Plan will only attempt sync scaling.
  final pulumi.Input<bool?>? asyncScalingEnabled;
  /// ServerFarm supports ElasticScale. Apps in this plan will scale as if the ServerFarm was ElasticPremium sku
  final pulumi.Input<bool?>? elasticScaleEnabled;
  /// Extended Location.
  final pulumi.Input<ExtendedLocation?>? extendedLocation;
  /// The time when the server farm free offer expires.
  final pulumi.Input<String?>? freeOfferExpirationTime;
  /// Specification for the App Service Environment to use for the App Service plan.
  final pulumi.Input<HostingEnvironmentProfile?>? hostingEnvironmentProfile;
  /// If Hyper-V container app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  final pulumi.Input<bool?>? hyperV;
  /// Managed service identity.
  final pulumi.Input<ManagedServiceIdentity?>? identity;
  /// Install scripts associated with this App Service plan.
  final pulumi.Input<List<InstallScript>?>? installScripts;
  /// Whether this server farm is in custom mode.
  final pulumi.Input<bool?>? isCustomMode;
  /// If &lt;code&gt;true&lt;/code&gt;, this App Service Plan owns spot instances.
  final pulumi.Input<bool?>? isSpot;
  /// Obsolete: If Hyper-V container app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  final pulumi.Input<bool?>? isXenon;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final pulumi.Input<String?>? kind;
  /// Specification for the Kubernetes Environment to use for the App Service plan.
  final pulumi.Input<KubeEnvironmentProfile?>? kubeEnvironmentProfile;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// Maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan
  final pulumi.Input<int?>? maximumElasticWorkerCount;
  /// Name of the App Service plan.
  final pulumi.Input<String?>? name;
  /// All network settings for the server farm.
  final pulumi.Input<ServerFarmNetworkSettings?>? network;
  /// If &lt;code&gt;true&lt;/code&gt;, apps assigned to this App Service plan can be scaled independently.
  /// If &lt;code&gt;false&lt;/code&gt;, apps assigned to this App Service plan will scale to all instances of the plan.
  final pulumi.Input<bool?>? perSiteScaling;
  /// Identity to use by platform for various features and integrations using managed identity.
  final pulumi.Input<DefaultIdentity?>? planDefaultIdentity;
  /// If &lt;code&gt;true&lt;/code&gt;, RDP access is enabled for this App Service plan. Only applicable for IsCustomMode ASPs.
  /// If &lt;code&gt;false&lt;/code&gt;, RDP access is disabled.
  final pulumi.Input<bool?>? rdpEnabled;
  /// Registry adapters associated with this App Service plan.
  final pulumi.Input<List<RegistryAdapter>?>? registryAdapters;
  /// If Linux app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  final pulumi.Input<bool?>? reserved;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Description of a SKU for a scalable resource.
  final pulumi.Input<SkuDescription?>? sku;
  /// The time when the server farm expires. Valid only if it is a spot server farm.
  final pulumi.Input<String?>? spotExpirationTime;
  /// Storage mounts associated with this App Service plan.
  final pulumi.Input<List<StorageMount>?>? storageMounts;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Scaling worker count.
  final pulumi.Input<int?>? targetWorkerCount;
  /// Scaling worker size ID.
  final pulumi.Input<int?>? targetWorkerSizeId;
  /// Target worker tier assigned to the App Service plan.
  final pulumi.Input<String?>? workerTierName;
  /// If &lt;code&gt;true&lt;/code&gt;, this App Service Plan will perform availability zone balancing.
  /// If &lt;code&gt;false&lt;/code&gt;, this App Service Plan will not perform availability zone balancing.
  final pulumi.Input<bool?>? zoneRedundant;

  /// Creates a new [AppServicePlanArgs].
  /// [asyncScalingEnabled] If &lt;code&gt;true&lt;/code&gt;, this App Service Plan will attempt to scale asynchronously if there are insufficient workers to scale synchronously.
  /// [elasticScaleEnabled] ServerFarm supports ElasticScale. Apps in this plan will scale as if the ServerFarm was ElasticPremium sku
  /// [extendedLocation] Extended Location.
  /// [freeOfferExpirationTime] The time when the server farm free offer expires.
  /// [hostingEnvironmentProfile] Specification for the App Service Environment to use for the App Service plan.
  /// [hyperV] If Hyper-V container app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  /// [identity] Managed service identity.
  /// [installScripts] Install scripts associated with this App Service plan.
  /// [isCustomMode] Whether this server farm is in custom mode.
  /// [isSpot] If &lt;code&gt;true&lt;/code&gt;, this App Service Plan owns spot instances.
  /// [isXenon] Obsolete: If Hyper-V container app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [kubeEnvironmentProfile] Specification for the Kubernetes Environment to use for the App Service plan.
  /// [location] The geo-location where the resource lives
  /// [maximumElasticWorkerCount] Maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan
  /// [name] Name of the App Service plan.
  /// [network] All network settings for the server farm.
  /// [perSiteScaling] If &lt;code&gt;true&lt;/code&gt;, apps assigned to this App Service plan can be scaled independently.
  /// [planDefaultIdentity] Identity to use by platform for various features and integrations using managed identity.
  /// [rdpEnabled] If &lt;code&gt;true&lt;/code&gt;, RDP access is enabled for this App Service plan. Only applicable for IsCustomMode ASPs.
  /// [registryAdapters] Registry adapters associated with this App Service plan.
  /// [reserved] If Linux app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] Description of a SKU for a scalable resource.
  /// [spotExpirationTime] The time when the server farm expires. Valid only if it is a spot server farm.
  /// [storageMounts] Storage mounts associated with this App Service plan.
  /// [tags] Resource tags.
  /// [targetWorkerCount] Scaling worker count.
  /// [targetWorkerSizeId] Scaling worker size ID.
  /// [workerTierName] Target worker tier assigned to the App Service plan.
  /// [zoneRedundant] If &lt;code&gt;true&lt;/code&gt;, this App Service Plan will perform availability zone balancing.
  const AppServicePlanArgs({
    this.asyncScalingEnabled,
    this.elasticScaleEnabled,
    this.extendedLocation,
    this.freeOfferExpirationTime,
    this.hostingEnvironmentProfile,
    this.hyperV,
    this.identity,
    this.installScripts,
    this.isCustomMode,
    this.isSpot,
    this.isXenon,
    this.kind,
    this.kubeEnvironmentProfile,
    this.location,
    this.maximumElasticWorkerCount,
    this.name,
    this.network,
    this.perSiteScaling,
    this.planDefaultIdentity,
    this.rdpEnabled,
    this.registryAdapters,
    this.reserved,
    required this.resourceGroupName,
    this.sku,
    this.spotExpirationTime,
    this.storageMounts,
    this.tags,
    this.targetWorkerCount,
    this.targetWorkerSizeId,
    this.workerTierName,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asyncScalingEnabled': ?asyncScalingEnabled,
      'elasticScaleEnabled': ?elasticScaleEnabled,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'freeOfferExpirationTime': ?freeOfferExpirationTime,
      'hostingEnvironmentProfile': ?pulumi.Input.mapOptionalInputValue<HostingEnvironmentProfile, Map<String, dynamic>>(hostingEnvironmentProfile, (value) => value.toMap()),
      'hyperV': ?hyperV,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'installScripts': ?pulumi.Input.mapOptionalInputValue<List<InstallScript>, List<Map<String, dynamic>>>(installScripts, (value) => pulumi.Input.encodeList<InstallScript, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isCustomMode': ?isCustomMode,
      'isSpot': ?isSpot,
      'isXenon': ?isXenon,
      'kind': ?kind,
      'kubeEnvironmentProfile': ?pulumi.Input.mapOptionalInputValue<KubeEnvironmentProfile, Map<String, dynamic>>(kubeEnvironmentProfile, (value) => value.toMap()),
      'location': ?location,
      'maximumElasticWorkerCount': ?maximumElasticWorkerCount,
      'name': ?name,
      'network': ?pulumi.Input.mapOptionalInputValue<ServerFarmNetworkSettings, Map<String, dynamic>>(network, (value) => value.toMap()),
      'perSiteScaling': ?perSiteScaling,
      'planDefaultIdentity': ?pulumi.Input.mapOptionalInputValue<DefaultIdentity, Map<String, dynamic>>(planDefaultIdentity, (value) => value.toMap()),
      'rdpEnabled': ?rdpEnabled,
      'registryAdapters': ?pulumi.Input.mapOptionalInputValue<List<RegistryAdapter>, List<Map<String, dynamic>>>(registryAdapters, (value) => pulumi.Input.encodeList<RegistryAdapter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'reserved': ?reserved,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<SkuDescription, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'spotExpirationTime': ?spotExpirationTime,
      'storageMounts': ?pulumi.Input.mapOptionalInputValue<List<StorageMount>, List<Map<String, dynamic>>>(storageMounts, (value) => pulumi.Input.encodeList<StorageMount, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'targetWorkerCount': ?targetWorkerCount,
      'targetWorkerSizeId': ?targetWorkerSizeId,
      'workerTierName': ?workerTierName,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory AppServicePlanArgs.fromMap(Map<String, dynamic> map) {
    return AppServicePlanArgs(
      asyncScalingEnabled: (() { final guardedValue = map['asyncScalingEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      elasticScaleEnabled: (() { final guardedValue = map['elasticScaleEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      freeOfferExpirationTime: (() { final guardedValue = map['freeOfferExpirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostingEnvironmentProfile: (() { final guardedValue = map['hostingEnvironmentProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostingEnvironmentProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hyperV: (() { final guardedValue = map['hyperV']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      installScripts: (() { final guardedValue = map['installScripts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstallScript>(guardedValue, (value) => InstallScript.fromMap((value as Map).cast<String, dynamic>()))); })(),
      isCustomMode: (() { final guardedValue = map['isCustomMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSpot: (() { final guardedValue = map['isSpot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isXenon: (() { final guardedValue = map['isXenon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubeEnvironmentProfile: (() { final guardedValue = map['kubeEnvironmentProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubeEnvironmentProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maximumElasticWorkerCount: (() { final guardedValue = map['maximumElasticWorkerCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerFarmNetworkSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      perSiteScaling: (() { final guardedValue = map['perSiteScaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      planDefaultIdentity: (() { final guardedValue = map['planDefaultIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefaultIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rdpEnabled: (() { final guardedValue = map['rdpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      registryAdapters: (() { final guardedValue = map['registryAdapters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RegistryAdapter>(guardedValue, (value) => RegistryAdapter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      reserved: (() { final guardedValue = map['reserved']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spotExpirationTime: (() { final guardedValue = map['spotExpirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageMounts: (() { final guardedValue = map['storageMounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StorageMount>(guardedValue, (value) => StorageMount.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetWorkerCount: (() { final guardedValue = map['targetWorkerCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      targetWorkerSizeId: (() { final guardedValue = map['targetWorkerSizeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      workerTierName: (() { final guardedValue = map['workerTierName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
