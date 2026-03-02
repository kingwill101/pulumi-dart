// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'extended_location.dart';
import 'hosting_environment_profile.dart';
import 'kube_environment_profile.dart';
import 'sku_description.dart';

/// {@template pulumi_web_app_service_plan_args_doc}
/// The set of arguments for AppServicePlan.
/// {@endtemplate}
/// {@macro pulumi_web_app_service_plan_args_doc}
class AppServicePlanArgs {
  /// ServerFarm supports ElasticScale. Apps in this plan will scale as if the ServerFarm was ElasticPremium sku
  final pulumi.Input<bool>? elasticScaleEnabled;
  /// Extended Location.
  final pulumi.Input<ExtendedLocation>? extendedLocation;
  /// The time when the server farm free offer expires.
  final pulumi.Input<String>? freeOfferExpirationTime;
  /// Specification for the App Service Environment to use for the App Service plan.
  final pulumi.Input<HostingEnvironmentProfile>? hostingEnvironmentProfile;
  /// If Hyper-V container app service plan <code>true</code>, <code>false</code> otherwise.
  final pulumi.Input<bool>? hyperV;
  /// If <code>true</code>, this App Service Plan owns spot instances.
  final pulumi.Input<bool>? isSpot;
  /// Obsolete: If Hyper-V container app service plan <code>true</code>, <code>false</code> otherwise.
  final pulumi.Input<bool>? isXenon;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final pulumi.Input<String>? kind;
  /// Specification for the Kubernetes Environment to use for the App Service plan.
  final pulumi.Input<KubeEnvironmentProfile>? kubeEnvironmentProfile;
  /// Resource Location.
  final pulumi.Input<String>? location;
  /// Maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan
  final pulumi.Input<int>? maximumElasticWorkerCount;
  /// Name of the App Service plan.
  final pulumi.Input<String>? name;
  /// If <code>true</code>, apps assigned to this App Service plan can be scaled independently.
  /// If <code>false</code>, apps assigned to this App Service plan will scale to all instances of the plan.
  final pulumi.Input<bool>? perSiteScaling;
  /// If Linux app service plan <code>true</code>, <code>false</code> otherwise.
  final pulumi.Input<bool>? reserved;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Description of a SKU for a scalable resource.
  final pulumi.Input<SkuDescription>? sku;
  /// The time when the server farm expires. Valid only if it is a spot server farm.
  final pulumi.Input<String>? spotExpirationTime;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Scaling worker count.
  final pulumi.Input<int>? targetWorkerCount;
  /// Scaling worker size ID.
  final pulumi.Input<int>? targetWorkerSizeId;
  /// Target worker tier assigned to the App Service plan.
  final pulumi.Input<String>? workerTierName;
  /// If <code>true</code>, this App Service Plan will perform availability zone balancing.
  /// If <code>false</code>, this App Service Plan will not perform availability zone balancing.
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [AppServicePlanArgs].
  /// [elasticScaleEnabled] ServerFarm supports ElasticScale. Apps in this plan will scale as if the ServerFarm was ElasticPremium sku
  /// [extendedLocation] Extended Location.
  /// [freeOfferExpirationTime] The time when the server farm free offer expires.
  /// [hostingEnvironmentProfile] Specification for the App Service Environment to use for the App Service plan.
  /// [hyperV] If Hyper-V container app service plan <code>true</code>, <code>false</code> otherwise.
  /// [isSpot] If <code>true</code>, this App Service Plan owns spot instances.
  /// [isXenon] Obsolete: If Hyper-V container app service plan <code>true</code>, <code>false</code> otherwise.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [kubeEnvironmentProfile] Specification for the Kubernetes Environment to use for the App Service plan.
  /// [location] Resource Location.
  /// [maximumElasticWorkerCount] Maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan
  /// [name] Name of the App Service plan.
  /// [perSiteScaling] If <code>true</code>, apps assigned to this App Service plan can be scaled independently.
  /// [reserved] If Linux app service plan <code>true</code>, <code>false</code> otherwise.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [sku] Description of a SKU for a scalable resource.
  /// [spotExpirationTime] The time when the server farm expires. Valid only if it is a spot server farm.
  /// [tags] Resource tags.
  /// [targetWorkerCount] Scaling worker count.
  /// [targetWorkerSizeId] Scaling worker size ID.
  /// [workerTierName] Target worker tier assigned to the App Service plan.
  /// [zoneRedundant] If <code>true</code>, this App Service Plan will perform availability zone balancing.
  AppServicePlanArgs({
    this.elasticScaleEnabled,
    this.extendedLocation,
    this.freeOfferExpirationTime,
    this.hostingEnvironmentProfile,
    this.hyperV,
    this.isSpot,
    this.isXenon,
    this.kind,
    this.kubeEnvironmentProfile,
    this.location,
    this.maximumElasticWorkerCount,
    this.name,
    this.perSiteScaling,
    this.reserved,
    required this.resourceGroupName,
    this.sku,
    this.spotExpirationTime,
    this.tags,
    this.targetWorkerCount,
    this.targetWorkerSizeId,
    this.workerTierName,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elasticScaleEnabled': ?elasticScaleEnabled,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<ExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'freeOfferExpirationTime': ?freeOfferExpirationTime,
      'hostingEnvironmentProfile': ?pulumi.Input.mapOptionalInputValue<HostingEnvironmentProfile, Map<String, dynamic>>(hostingEnvironmentProfile, (value) => value.toMap()),
      'hyperV': ?hyperV,
      'isSpot': ?isSpot,
      'isXenon': ?isXenon,
      'kind': ?kind,
      'kubeEnvironmentProfile': ?pulumi.Input.mapOptionalInputValue<KubeEnvironmentProfile, Map<String, dynamic>>(kubeEnvironmentProfile, (value) => value.toMap()),
      'location': ?location,
      'maximumElasticWorkerCount': ?maximumElasticWorkerCount,
      'name': ?name,
      'perSiteScaling': ?perSiteScaling,
      'reserved': ?reserved,
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<SkuDescription, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'spotExpirationTime': ?spotExpirationTime,
      'tags': ?tags,
      'targetWorkerCount': ?targetWorkerCount,
      'targetWorkerSizeId': ?targetWorkerSizeId,
      'workerTierName': ?workerTierName,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory AppServicePlanArgs.fromMap(Map<String, dynamic> map) {
    return AppServicePlanArgs(
      elasticScaleEnabled: map['elasticScaleEnabled'] == null ? null : (map['elasticScaleEnabled'] as bool).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (ExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      freeOfferExpirationTime: map['freeOfferExpirationTime'] == null ? null : (map['freeOfferExpirationTime'] as String).input(),
      hostingEnvironmentProfile: map['hostingEnvironmentProfile'] == null ? null : (HostingEnvironmentProfile.fromMap((map['hostingEnvironmentProfile'] as Map).cast<String, dynamic>())).input(),
      hyperV: map['hyperV'] == null ? null : (map['hyperV'] as bool).input(),
      isSpot: map['isSpot'] == null ? null : (map['isSpot'] as bool).input(),
      isXenon: map['isXenon'] == null ? null : (map['isXenon'] as bool).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      kubeEnvironmentProfile: map['kubeEnvironmentProfile'] == null ? null : (KubeEnvironmentProfile.fromMap((map['kubeEnvironmentProfile'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maximumElasticWorkerCount: map['maximumElasticWorkerCount'] == null ? null : (map['maximumElasticWorkerCount'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      perSiteScaling: map['perSiteScaling'] == null ? null : (map['perSiteScaling'] as bool).input(),
      reserved: map['reserved'] == null ? null : (map['reserved'] as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (SkuDescription.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      spotExpirationTime: map['spotExpirationTime'] == null ? null : (map['spotExpirationTime'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      targetWorkerCount: map['targetWorkerCount'] == null ? null : (map['targetWorkerCount'] as int).input(),
      targetWorkerSizeId: map['targetWorkerSizeId'] == null ? null : (map['targetWorkerSizeId'] as int).input(),
      workerTierName: map['workerTierName'] == null ? null : (map['workerTierName'] as String).input(),
      zoneRedundant: map['zoneRedundant'] == null ? null : (map['zoneRedundant'] as bool).input(),
    );
  }
}

