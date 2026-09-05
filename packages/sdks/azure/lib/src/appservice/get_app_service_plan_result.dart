// ignore_for_file: unused_element, unnecessary_cast

import 'get_app_service_plan_sku.dart';

/// Result data returned by getAppServicePlan.
class GetAppServicePlanResult {
  /// The ID of the App Service Environment where the App Service Plan is located.
  final String? appServiceEnvironmentId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A flag that indicates if it's a xenon plan (support for Windows Container)
  final bool? isXenon;
  /// The Operating System type of the App Service Plan
  final String? kind;
  /// The Azure location where the App Service Plan exists
  final String? location;
  /// The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan.
  final int? maximumElasticWorkerCount;
  /// The maximum number of workers supported with the App Service Plan's sku.
  final int? maximumNumberOfWorkers;
  final String? name;
  /// Can Apps assigned to this App Service Plan be scaled independently?
  final bool? perSiteScaling;
  /// Is this App Service Plan `Reserved`?
  final bool? reserved;
  final String? resourceGroupName;
  /// A `sku` block as documented below.
  final GetAppServicePlanSku? sku;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// App Service Plan perform availability zone balancing.
  final bool? zoneRedundant;

  /// Creates a new [GetAppServicePlanResult].
  /// [appServiceEnvironmentId] The ID of the App Service Environment where the App Service Plan is located.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isXenon] A flag that indicates if it's a xenon plan (support for Windows Container)
  /// [kind] The Operating System type of the App Service Plan
  /// [location] The Azure location where the App Service Plan exists
  /// [maximumElasticWorkerCount] The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan.
  /// [maximumNumberOfWorkers] The maximum number of workers supported with the App Service Plan's sku.
  /// [name] Optional.
  /// [perSiteScaling] Can Apps assigned to this App Service Plan be scaled independently?
  /// [reserved] Is this App Service Plan `Reserved`?
  /// [resourceGroupName] Optional.
  /// [sku] A `sku` block as documented below.
  /// [tags] A mapping of tags assigned to the resource.
  /// [zoneRedundant] App Service Plan perform availability zone balancing.
  const GetAppServicePlanResult({
    this.appServiceEnvironmentId,
    this.id,
    this.isXenon,
    this.kind,
    this.location,
    this.maximumElasticWorkerCount,
    this.maximumNumberOfWorkers,
    this.name,
    this.perSiteScaling,
    this.reserved,
    this.resourceGroupName,
    this.sku,
    this.tags,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceEnvironmentId': ?appServiceEnvironmentId,
      'id': ?id,
      'isXenon': ?isXenon,
      'kind': ?kind,
      'location': ?location,
      'maximumElasticWorkerCount': ?maximumElasticWorkerCount,
      'maximumNumberOfWorkers': ?maximumNumberOfWorkers,
      'name': ?name,
      'perSiteScaling': ?perSiteScaling,
      'reserved': ?reserved,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory GetAppServicePlanResult.fromMap(Map<String, dynamic> map) {
    return GetAppServicePlanResult(
      appServiceEnvironmentId: (() { final guardedValue = map['appServiceEnvironmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isXenon: (() { final guardedValue = map['isXenon']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maximumElasticWorkerCount: (() { final guardedValue = map['maximumElasticWorkerCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      maximumNumberOfWorkers: (() { final guardedValue = map['maximumNumberOfWorkers']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      perSiteScaling: (() { final guardedValue = map['perSiteScaling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      reserved: (() { final guardedValue = map['reserved']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return GetAppServicePlanSku.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
