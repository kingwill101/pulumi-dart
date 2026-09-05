// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServicePlan.
class GetServicePlanResult {
  /// The ID of the App Service Environment this Service Plan is part of.
  final String? appServiceEnvironmentId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A string representing the Kind of Service Plan.
  final String? kind;
  /// The Azure Region where the Service Plan exists.
  final String? location;
  /// The maximum number of workers in use in an Elastic SKU Plan.
  final int? maximumElasticWorkerCount;
  final String? name;
  /// The O/S type for the App Services hosted in this plan.
  final String? osType;
  /// Is Per Site Scaling be enabled?
  final bool? perSiteScalingEnabled;
  /// Whether this is a reserved Service Plan Type. `true` if `osType` is `Linux`, otherwise `false`.
  final bool? reserved;
  final String? resourceGroupName;
  /// The SKU for the Service Plan.
  final String? skuName;
  /// A mapping of tags assigned to the Service Plan.
  final Map<String, String>? tags;
  /// The number of Workers (instances) allocated.
  final int? workerCount;
  /// Is the Service Plan balance across Availability Zones in the region?
  final bool? zoneBalancingEnabled;

  /// Creates a new [GetServicePlanResult].
  /// [appServiceEnvironmentId] The ID of the App Service Environment this Service Plan is part of.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kind] A string representing the Kind of Service Plan.
  /// [location] The Azure Region where the Service Plan exists.
  /// [maximumElasticWorkerCount] The maximum number of workers in use in an Elastic SKU Plan.
  /// [name] Optional.
  /// [osType] The O/S type for the App Services hosted in this plan.
  /// [perSiteScalingEnabled] Is Per Site Scaling be enabled?
  /// [reserved] Whether this is a reserved Service Plan Type. `true` if `osType` is `Linux`, otherwise `false`.
  /// [resourceGroupName] Optional.
  /// [skuName] The SKU for the Service Plan.
  /// [tags] A mapping of tags assigned to the Service Plan.
  /// [workerCount] The number of Workers (instances) allocated.
  /// [zoneBalancingEnabled] Is the Service Plan balance across Availability Zones in the region?
  const GetServicePlanResult({
    this.appServiceEnvironmentId,
    this.id,
    this.kind,
    this.location,
    this.maximumElasticWorkerCount,
    this.name,
    this.osType,
    this.perSiteScalingEnabled,
    this.reserved,
    this.resourceGroupName,
    this.skuName,
    this.tags,
    this.workerCount,
    this.zoneBalancingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceEnvironmentId': ?appServiceEnvironmentId,
      'id': ?id,
      'kind': ?kind,
      'location': ?location,
      'maximumElasticWorkerCount': ?maximumElasticWorkerCount,
      'name': ?name,
      'osType': ?osType,
      'perSiteScalingEnabled': ?perSiteScalingEnabled,
      'reserved': ?reserved,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
      'workerCount': ?workerCount,
      'zoneBalancingEnabled': ?zoneBalancingEnabled,
    };
  }

  factory GetServicePlanResult.fromMap(Map<String, dynamic> map) {
    return GetServicePlanResult(
      appServiceEnvironmentId: (() { final guardedValue = map['appServiceEnvironmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maximumElasticWorkerCount: (() { final guardedValue = map['maximumElasticWorkerCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      perSiteScalingEnabled: (() { final guardedValue = map['perSiteScalingEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      reserved: (() { final guardedValue = map['reserved']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      workerCount: (() { final guardedValue = map['workerCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      zoneBalancingEnabled: (() { final guardedValue = map['zoneBalancingEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
