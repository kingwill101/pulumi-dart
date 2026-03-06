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
  /// If Hyper-V container app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  final pulumi.Input<bool>? hyperV;
  /// If &lt;code&gt;true&lt;/code&gt;, this App Service Plan owns spot instances.
  final pulumi.Input<bool>? isSpot;
  /// Obsolete: If Hyper-V container app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
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
  /// If &lt;code&gt;true&lt;/code&gt;, apps assigned to this App Service plan can be scaled independently.
  /// If &lt;code&gt;false&lt;/code&gt;, apps assigned to this App Service plan will scale to all instances of the plan.
  final pulumi.Input<bool>? perSiteScaling;
  /// If Linux app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
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
  /// If &lt;code&gt;true&lt;/code&gt;, this App Service Plan will perform availability zone balancing.
  /// If &lt;code&gt;false&lt;/code&gt;, this App Service Plan will not perform availability zone balancing.
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [AppServicePlanArgs].
  /// [elasticScaleEnabled] ServerFarm supports ElasticScale. Apps in this plan will scale as if the ServerFarm was ElasticPremium sku
  /// [extendedLocation] Extended Location.
  /// [freeOfferExpirationTime] The time when the server farm free offer expires.
  /// [hostingEnvironmentProfile] Specification for the App Service Environment to use for the App Service plan.
  /// [hyperV] If Hyper-V container app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  /// [isSpot] If &lt;code&gt;true&lt;/code&gt;, this App Service Plan owns spot instances.
  /// [isXenon] Obsolete: If Hyper-V container app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [kubeEnvironmentProfile] Specification for the Kubernetes Environment to use for the App Service plan.
  /// [location] Resource Location.
  /// [maximumElasticWorkerCount] Maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan
  /// [name] Name of the App Service plan.
  /// [perSiteScaling] If &lt;code&gt;true&lt;/code&gt;, apps assigned to this App Service plan can be scaled independently.
  /// [reserved] If Linux app service plan &lt;code&gt;true&lt;/code&gt;, &lt;code&gt;false&lt;/code&gt; otherwise.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [sku] Description of a SKU for a scalable resource.
  /// [spotExpirationTime] The time when the server farm expires. Valid only if it is a spot server farm.
  /// [tags] Resource tags.
  /// [targetWorkerCount] Scaling worker count.
  /// [targetWorkerSizeId] Scaling worker size ID.
  /// [workerTierName] Target worker tier assigned to the App Service plan.
  /// [zoneRedundant] If &lt;code&gt;true&lt;/code&gt;, this App Service Plan will perform availability zone balancing.
  const AppServicePlanArgs({
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
      elasticScaleEnabled: (() { final guardedValue = map['elasticScaleEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extendedLocation: (() { final guardedValue = map['extendedLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExtendedLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      freeOfferExpirationTime: (() { final guardedValue = map['freeOfferExpirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostingEnvironmentProfile: (() { final guardedValue = map['hostingEnvironmentProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostingEnvironmentProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hyperV: (() { final guardedValue = map['hyperV']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isSpot: (() { final guardedValue = map['isSpot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isXenon: (() { final guardedValue = map['isXenon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kubeEnvironmentProfile: (() { final guardedValue = map['kubeEnvironmentProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KubeEnvironmentProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maximumElasticWorkerCount: (() { final guardedValue = map['maximumElasticWorkerCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      perSiteScaling: (() { final guardedValue = map['perSiteScaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      reserved: (() { final guardedValue = map['reserved']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SkuDescription.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      spotExpirationTime: (() { final guardedValue = map['spotExpirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetWorkerCount: (() { final guardedValue = map['targetWorkerCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetWorkerSizeId: (() { final guardedValue = map['targetWorkerSizeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      workerTierName: (() { final guardedValue = map['workerTierName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

