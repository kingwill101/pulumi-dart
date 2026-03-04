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

  /// If Hyper-V container app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  final bool? hyperV;

  /// Resource Id.
  final String id;

  /// If &lt;code&gt;true&lt;/code&gt;, this App Service Plan owns spot instances.
  final bool? isSpot;

  /// Obsolete: If Hyper-V container app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
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

  /// If &lt;code&gt;true&lt;/code&gt;, apps assigned to this App Service plan can be scaled independently.
  /// If &lt;code&gt;false&lt;/code&gt;, apps assigned to this App Service plan will scale to all instances of the plan.
  final bool? perSiteScaling;

  /// Provisioning state of the App Service Plan.
  final String provisioningState;

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

  /// If &lt;code&gt;true&lt;/code&gt;, this App Service Plan will perform availability zone balancing.
  /// If &lt;code&gt;false&lt;/code&gt;, this App Service Plan will not perform availability zone balancing.
  final bool? zoneRedundant;

  /// Creates a new [GetAppServicePlanResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [elasticScaleEnabled] ServerFarm supports ElasticScale. Apps in this plan will scale as if the ServerFarm was ElasticPremium sku
  /// [extendedLocation] Extended Location.
  /// [freeOfferExpirationTime] The time when the server farm free offer expires.
  /// [geoRegion] Geographical location for the App Service plan.
  /// [hostingEnvironmentProfile] Specification for the App Service Environment to use for the App Service plan.
  /// [hyperV] If Hyper-V container app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  /// [id] Resource Id.
  /// [isSpot] If &lt;code&gt;true&lt;/code&gt;, this App Service Plan owns spot instances.
  /// [isXenon] Obsolete: If Hyper-V container app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [kubeEnvironmentProfile] Specification for the Kubernetes Environment to use for the App Service plan.
  /// [location] Resource Location.
  /// [maximumElasticWorkerCount] Maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan
  /// [maximumNumberOfWorkers] Maximum number of instances that can be assigned to this App Service plan.
  /// [name] Resource Name.
  /// [numberOfSites] Number of apps assigned to this App Service plan.
  /// [numberOfWorkers] The number of instances that are assigned to this App Service plan.
  /// [perSiteScaling] If &lt;code&gt;true&lt;/code&gt;, apps assigned to this App Service plan can be scaled independently.
  /// [provisioningState] Provisioning state of the App Service Plan.
  /// [reserved] If Linux app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
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
  /// [zoneRedundant] If &lt;code&gt;true&lt;/code&gt;, this App Service Plan will perform availability zone balancing.
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
      'extendedLocation': ?extendedLocation?.toMap(),
      'freeOfferExpirationTime': ?freeOfferExpirationTime,
      'geoRegion': geoRegion,
      'hostingEnvironmentProfile': ?hostingEnvironmentProfile?.toMap(),
      'hyperV': ?hyperV,
      'id': id,
      'isSpot': ?isSpot,
      'isXenon': ?isXenon,
      'kind': ?kind,
      'kubeEnvironmentProfile': ?kubeEnvironmentProfile?.toMap(),
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
      'sku': ?sku?.toMap(),
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
      elasticScaleEnabled: (() {
        final guardedValue = map['elasticScaleEnabled'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      extendedLocation: (() {
        final guardedValue = map['extendedLocation'];
        if (guardedValue == null) return null;
        return ExtendedLocationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      freeOfferExpirationTime: (() {
        final guardedValue = map['freeOfferExpirationTime'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      geoRegion: map['geoRegion'] as String,
      hostingEnvironmentProfile: (() {
        final guardedValue = map['hostingEnvironmentProfile'];
        if (guardedValue == null) return null;
        return HostingEnvironmentProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      hyperV: (() {
        final guardedValue = map['hyperV'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      id: map['id'] as String,
      isSpot: (() {
        final guardedValue = map['isSpot'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      isXenon: (() {
        final guardedValue = map['isXenon'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      kubeEnvironmentProfile: (() {
        final guardedValue = map['kubeEnvironmentProfile'];
        if (guardedValue == null) return null;
        return KubeEnvironmentProfileResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      location: map['location'] as String,
      maximumElasticWorkerCount: (() {
        final guardedValue = map['maximumElasticWorkerCount'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      maximumNumberOfWorkers: map['maximumNumberOfWorkers'] as int,
      name: map['name'] as String,
      numberOfSites: map['numberOfSites'] as int,
      numberOfWorkers: map['numberOfWorkers'] as int,
      perSiteScaling: (() {
        final guardedValue = map['perSiteScaling'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      provisioningState: map['provisioningState'] as String,
      reserved: (() {
        final guardedValue = map['reserved'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      resourceGroup: map['resourceGroup'] as String,
      sku: (() {
        final guardedValue = map['sku'];
        if (guardedValue == null) return null;
        return SkuDescriptionResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      spotExpirationTime: (() {
        final guardedValue = map['spotExpirationTime'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: map['status'] as String,
      subscription: map['subscription'] as String,
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      targetWorkerCount: (() {
        final guardedValue = map['targetWorkerCount'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      targetWorkerSizeId: (() {
        final guardedValue = map['targetWorkerSizeId'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      type: map['type'] as String,
      workerTierName: (() {
        final guardedValue = map['workerTierName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      zoneRedundant: (() {
        final guardedValue = map['zoneRedundant'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
    );
  }
}
