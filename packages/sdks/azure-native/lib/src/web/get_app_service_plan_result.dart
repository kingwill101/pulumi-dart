// ignore_for_file: unused_element, unnecessary_cast

import 'extended_location_response.dart';
import 'hosting_environment_profile_response.dart';
import 'kube_environment_profile_response.dart';
import 'sku_description_response.dart';

/// Result data returned by getAppServicePlan.
class GetAppServicePlanResult {
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
  /// If Hyper-V container app service plan <code>true</code>, <code>false</code> otherwise.
  final bool? hyperV;
  /// Resource Id.
  final String id;
  /// If <code>true</code>, this App Service Plan owns spot instances.
  final bool? isSpot;
  /// Obsolete: If Hyper-V container app service plan <code>true</code>, <code>false</code> otherwise.
  final bool? isXenon;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final String? kind;
  /// Specification for the Kubernetes Environment to use for the App Service plan.
  final KubeEnvironmentProfileResponse? kubeEnvironmentProfile;
  /// Resource Location.
  final String location;
  /// Maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan
  final int? maximumElasticWorkerCount;
  /// Maximum number of instances that can be assigned to this App Service plan.
  final int maximumNumberOfWorkers;
  /// Resource Name.
  final String name;
  /// Number of apps assigned to this App Service plan.
  final int numberOfSites;
  /// The number of instances that are assigned to this App Service plan.
  final int numberOfWorkers;
  /// If <code>true</code>, apps assigned to this App Service plan can be scaled independently.
  /// If <code>false</code>, apps assigned to this App Service plan will scale to all instances of the plan.
  final bool? perSiteScaling;
  /// Provisioning state of the App Service Plan.
  final String provisioningState;
  /// If Linux app service plan <code>true</code>, <code>false</code> otherwise.
  final bool? reserved;
  /// Resource group of the App Service plan.
  final String resourceGroup;
  /// Description of a SKU for a scalable resource.
  final SkuDescriptionResponse? sku;
  /// The time when the server farm expires. Valid only if it is a spot server farm.
  final String? spotExpirationTime;
  /// App Service plan status.
  final String status;
  /// App Service plan subscription.
  final String subscription;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Scaling worker count.
  final int? targetWorkerCount;
  /// Scaling worker size ID.
  final int? targetWorkerSizeId;
  /// Resource type.
  final String type;
  /// Target worker tier assigned to the App Service plan.
  final String? workerTierName;
  /// If <code>true</code>, this App Service Plan will perform availability zone balancing.
  /// If <code>false</code>, this App Service Plan will not perform availability zone balancing.
  final bool? zoneRedundant;

  /// Creates a new [GetAppServicePlanResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [elasticScaleEnabled] ServerFarm supports ElasticScale. Apps in this plan will scale as if the ServerFarm was ElasticPremium sku
  /// [extendedLocation] Extended Location.
  /// [freeOfferExpirationTime] The time when the server farm free offer expires.
  /// [geoRegion] Geographical location for the App Service plan.
  /// [hostingEnvironmentProfile] Specification for the App Service Environment to use for the App Service plan.
  /// [hyperV] If Hyper-V container app service plan <code>true</code>, <code>false</code> otherwise.
  /// [id] Resource Id.
  /// [isSpot] If <code>true</code>, this App Service Plan owns spot instances.
  /// [isXenon] Obsolete: If Hyper-V container app service plan <code>true</code>, <code>false</code> otherwise.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [kubeEnvironmentProfile] Specification for the Kubernetes Environment to use for the App Service plan.
  /// [location] Resource Location.
  /// [maximumElasticWorkerCount] Maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan
  /// [maximumNumberOfWorkers] Maximum number of instances that can be assigned to this App Service plan.
  /// [name] Resource Name.
  /// [numberOfSites] Number of apps assigned to this App Service plan.
  /// [numberOfWorkers] The number of instances that are assigned to this App Service plan.
  /// [perSiteScaling] If <code>true</code>, apps assigned to this App Service plan can be scaled independently.
  /// [provisioningState] Provisioning state of the App Service Plan.
  /// [reserved] If Linux app service plan <code>true</code>, <code>false</code> otherwise.
  /// [resourceGroup] Resource group of the App Service plan.
  /// [sku] Description of a SKU for a scalable resource.
  /// [spotExpirationTime] The time when the server farm expires. Valid only if it is a spot server farm.
  /// [status] App Service plan status.
  /// [subscription] App Service plan subscription.
  /// [tags] Resource tags.
  /// [targetWorkerCount] Scaling worker count.
  /// [targetWorkerSizeId] Scaling worker size ID.
  /// [type] Resource type.
  /// [workerTierName] Target worker tier assigned to the App Service plan.
  /// [zoneRedundant] If <code>true</code>, this App Service Plan will perform availability zone balancing.
  GetAppServicePlanResult({
    required this.azureApiVersion,
    this.elasticScaleEnabled,
    this.extendedLocation,
    this.freeOfferExpirationTime,
    required this.geoRegion,
    this.hostingEnvironmentProfile,
    this.hyperV,
    required this.id,
    this.isSpot,
    this.isXenon,
    this.kind,
    this.kubeEnvironmentProfile,
    required this.location,
    this.maximumElasticWorkerCount,
    required this.maximumNumberOfWorkers,
    required this.name,
    required this.numberOfSites,
    required this.numberOfWorkers,
    this.perSiteScaling,
    required this.provisioningState,
    this.reserved,
    required this.resourceGroup,
    this.sku,
    this.spotExpirationTime,
    required this.status,
    required this.subscription,
    this.tags,
    this.targetWorkerCount,
    this.targetWorkerSizeId,
    required this.type,
    this.workerTierName,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'elasticScaleEnabled': ?elasticScaleEnabled,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'freeOfferExpirationTime': ?freeOfferExpirationTime,
      'geoRegion': geoRegion,
      'hostingEnvironmentProfile': ?hostingEnvironmentProfile == null ? null : hostingEnvironmentProfile!.toMap(),
      'hyperV': ?hyperV,
      'id': id,
      'isSpot': ?isSpot,
      'isXenon': ?isXenon,
      'kind': ?kind,
      'kubeEnvironmentProfile': ?kubeEnvironmentProfile == null ? null : kubeEnvironmentProfile!.toMap(),
      'location': location,
      'maximumElasticWorkerCount': ?maximumElasticWorkerCount,
      'maximumNumberOfWorkers': maximumNumberOfWorkers,
      'name': name,
      'numberOfSites': numberOfSites,
      'numberOfWorkers': numberOfWorkers,
      'perSiteScaling': ?perSiteScaling,
      'provisioningState': provisioningState,
      'reserved': ?reserved,
      'resourceGroup': resourceGroup,
      'sku': ?sku == null ? null : sku!.toMap(),
      'spotExpirationTime': ?spotExpirationTime,
      'status': status,
      'subscription': subscription,
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
      azureApiVersion: map['azureApiVersion'] as String,
      elasticScaleEnabled: map['elasticScaleEnabled'] == null ? null : map['elasticScaleEnabled'] as bool,
      extendedLocation: map['extendedLocation'] == null ? null : ExtendedLocationResponse.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      freeOfferExpirationTime: map['freeOfferExpirationTime'] == null ? null : map['freeOfferExpirationTime'] as String,
      geoRegion: map['geoRegion'] as String,
      hostingEnvironmentProfile: map['hostingEnvironmentProfile'] == null ? null : HostingEnvironmentProfileResponse.fromMap((map['hostingEnvironmentProfile'] as Map).cast<String, dynamic>()),
      hyperV: map['hyperV'] == null ? null : map['hyperV'] as bool,
      id: map['id'] as String,
      isSpot: map['isSpot'] == null ? null : map['isSpot'] as bool,
      isXenon: map['isXenon'] == null ? null : map['isXenon'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      kubeEnvironmentProfile: map['kubeEnvironmentProfile'] == null ? null : KubeEnvironmentProfileResponse.fromMap((map['kubeEnvironmentProfile'] as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      maximumElasticWorkerCount: map['maximumElasticWorkerCount'] == null ? null : map['maximumElasticWorkerCount'] as int,
      maximumNumberOfWorkers: map['maximumNumberOfWorkers'] as int,
      name: map['name'] as String,
      numberOfSites: map['numberOfSites'] as int,
      numberOfWorkers: map['numberOfWorkers'] as int,
      perSiteScaling: map['perSiteScaling'] == null ? null : map['perSiteScaling'] as bool,
      provisioningState: map['provisioningState'] as String,
      reserved: map['reserved'] == null ? null : map['reserved'] as bool,
      resourceGroup: map['resourceGroup'] as String,
      sku: map['sku'] == null ? null : SkuDescriptionResponse.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      spotExpirationTime: map['spotExpirationTime'] == null ? null : map['spotExpirationTime'] as String,
      status: map['status'] as String,
      subscription: map['subscription'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      targetWorkerCount: map['targetWorkerCount'] == null ? null : map['targetWorkerCount'] as int,
      targetWorkerSizeId: map['targetWorkerSizeId'] == null ? null : map['targetWorkerSizeId'] as int,
      type: map['type'] as String,
      workerTierName: map['workerTierName'] == null ? null : map['workerTierName'] as String,
      zoneRedundant: map['zoneRedundant'] == null ? null : map['zoneRedundant'] as bool,
    );
  }
}

