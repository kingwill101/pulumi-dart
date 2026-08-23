// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getServicePlan.
class GetServicePlanResult {
  /// The ID of the App Service Environment this Service Plan is part of.
  final String appServiceEnvironmentId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A string representing the Kind of Service Plan.
  final String kind;
  /// The Azure Region where the Service Plan exists.
  final String location;
  /// The maximum number of workers in use in an Elastic SKU Plan.
  final int maximumElasticWorkerCount;
  final String name;
  /// The O/S type for the App Services hosted in this plan.
  final String osType;
  /// Is Per Site Scaling be enabled?
  final bool perSiteScalingEnabled;
  /// Whether this is a reserved Service Plan Type. `true` if `osType` is `Linux`, otherwise `false`.
  final bool reserved;
  final String resourceGroupName;
  /// The SKU for the Service Plan.
  final String skuName;
  /// A mapping of tags assigned to the Service Plan.
  final Map<String, String> tags;
  /// The number of Workers (instances) allocated.
  final int workerCount;
  /// Is the Service Plan balance across Availability Zones in the region?
  final bool zoneBalancingEnabled;

  /// Creates a new [GetServicePlanResult].
  /// [appServiceEnvironmentId] The ID of the App Service Environment this Service Plan is part of.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kind] A string representing the Kind of Service Plan.
  /// [location] The Azure Region where the Service Plan exists.
  /// [maximumElasticWorkerCount] The maximum number of workers in use in an Elastic SKU Plan.
  /// [name] Required.
  /// [osType] The O/S type for the App Services hosted in this plan.
  /// [perSiteScalingEnabled] Is Per Site Scaling be enabled?
  /// [reserved] Whether this is a reserved Service Plan Type. `true` if `osType` is `Linux`, otherwise `false`.
  /// [resourceGroupName] Required.
  /// [skuName] The SKU for the Service Plan.
  /// [tags] A mapping of tags assigned to the Service Plan.
  /// [workerCount] The number of Workers (instances) allocated.
  /// [zoneBalancingEnabled] Is the Service Plan balance across Availability Zones in the region?
  const GetServicePlanResult({
    required this.appServiceEnvironmentId,
    required this.id,
    required this.kind,
    required this.location,
    required this.maximumElasticWorkerCount,
    required this.name,
    required this.osType,
    required this.perSiteScalingEnabled,
    required this.reserved,
    required this.resourceGroupName,
    required this.skuName,
    required this.tags,
    required this.workerCount,
    required this.zoneBalancingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceEnvironmentId': appServiceEnvironmentId,
      'id': id,
      'kind': kind,
      'location': location,
      'maximumElasticWorkerCount': maximumElasticWorkerCount,
      'name': name,
      'osType': osType,
      'perSiteScalingEnabled': perSiteScalingEnabled,
      'reserved': reserved,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': tags,
      'workerCount': workerCount,
      'zoneBalancingEnabled': zoneBalancingEnabled,
    };
  }

  factory GetServicePlanResult.fromMap(Map<String, dynamic> map) {
    return GetServicePlanResult(
      appServiceEnvironmentId: map['appServiceEnvironmentId'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      location: map['location'] as String,
      maximumElasticWorkerCount: map['maximumElasticWorkerCount'] as int,
      name: map['name'] as String,
      osType: map['osType'] as String,
      perSiteScalingEnabled: map['perSiteScalingEnabled'] as bool,
      reserved: map['reserved'] as bool,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      workerCount: map['workerCount'] as int,
      zoneBalancingEnabled: map['zoneBalancingEnabled'] as bool,
    );
  }
}
