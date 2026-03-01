// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServicePlan resources.
class ServicePlanState {
  /// The ID of the App Service Environment to create this Service Plan in.
  ///
  /// > **Note:** Requires an Isolated SKU for `azure.appservice.EnvironmentV3`, supported values include `I1v2`, `I1mv2`, `I2v2`, `I2mv2`, `I3v2`, `I3mv2`, `I4v2`, `I4mv2`, `I5v2`, `I5mv2`, and `I6v2`.
  final pulumi.Input<String>? appServiceEnvironmentId;
  /// A string representing the Kind of Service Plan.
  final pulumi.Input<String>? kind;
  /// The Azure Region where the Service Plan should exist. Changing this forces a new Service Plan to be created.
  final pulumi.Input<String>? location;
  /// The maximum number of workers to use in an Elastic SKU Plan or Premium Plan that have `premium_plan_auto_scale_enabled` set to `true`. Cannot be set unless using an Elastic or Premium SKU.
  final pulumi.Input<int>? maximumElasticWorkerCount;
  /// The name which should be used for this Service Plan. Changing this forces a new Service Plan to be created.
  final pulumi.Input<String>? name;
  /// The O/S type for the App Services to be hosted in this plan. Possible values include `Windows`, `Linux`, and `WindowsContainer`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? osType;
  /// Should Per Site Scaling be enabled. Defaults to `false`.
  final pulumi.Input<bool>? perSiteScalingEnabled;
  /// Should automatic scaling be enabled for the Premium SKU Plan. Defaults to `false`. Cannot be set unless using a Premium SKU.
  final pulumi.Input<bool>? premiumPlanAutoScaleEnabled;
  /// Whether this is a reserved Service Plan Type. `true` if `os_type` is `Linux`, otherwise `false`.
  final pulumi.Input<bool>? reserved;
  /// The name of the Resource Group where the Service Plan should exist. Changing this forces a new Service Plan to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The SKU for the plan. Possible values include `B1`, `B2`, `B3`, `D1`, `F1`, `I1`, `I2`, `I3`, `I1v2`, `I1mv2`, `I2v2`, `I2mv2`, `I3v2`, `I3mv2`, `I4v2`, `I4mv2`, `I5v2`, `I5mv2`, `I6v2`, `P1v2`, `P2v2`, `P3v2`, `P0v3`, `P1v3`, `P2v3`, `P3v3`, `P1mv3`, `P2mv3`, `P3mv3`, `P4mv3`, `P5mv3`, `P0v4`, `P1v4`, `P2v4`, `P3v4`, `P1mv4`, `P2mv4`, `P3mv4`, `P4mv4`, `P5mv4`, `S1`, `S2`, `S3`, `SHARED`, `EP1`, `EP2`, `EP3`, `FC1`, `WS1`, `WS2`, `WS3`, and `Y1`.
  ///
  /// > **Note:** Isolated SKUs (`I1`, `I2`, `I3`, `I1v2`, `I1mv2`, `I2v2`, `I2mv2`, `I3v2`, `I3mv2`) can only be used with App Service Environments
  ///
  /// > **Note:** Elastic and Consumption SKUs (`Y1`, `FC1`, `EP1`, `EP2`, and `EP3`) are for use with Function Apps.
  final pulumi.Input<String>? skuName;
  /// A mapping of tags which should be assigned to the AppService.
  final pulumi.Input<Map<String, String>>? tags;
  /// The number of Workers (instances) to be allocated.
  final pulumi.Input<int>? workerCount;
  /// Should the Service Plan balance across Availability Zones in the region.
  ///
  /// > **Note:** If this setting is set to `true` and the `worker_count` value is specified, it should be set to a multiple of the number of availability zones in the region. Please see the Azure documentation for the number of Availability Zones in your region.
  ///
  /// > **Note:** `zone_balancing_enabled` can only be set to `true` on Consumption, Premium, Isolated, or Workflow SKUs. It can be disabled. To enable it, the `worker_count` must be greater than `1`, and the Service Plan must support more than one availability zone. In all other cases, changing this forces a new resource to be created. For more information, please see the [Availability Zone Support](https://learn.microsoft.com/en-us/azure/reliability/reliability-app-service?tabs=azurecli&pivots=free-shared-basic#availability-zone-support).
  final pulumi.Input<bool>? zoneBalancingEnabled;

  /// Creates a new [ServicePlanState].
  /// [appServiceEnvironmentId] The ID of the App Service Environment to create this Service Plan in.
  /// [kind] A string representing the Kind of Service Plan.
  /// [location] The Azure Region where the Service Plan should exist. Changing this forces a new Service Plan to be created.
  /// [maximumElasticWorkerCount] The maximum number of workers to use in an Elastic SKU Plan or Premium Plan that have `premium_plan_auto_scale_enabled` set to `true`. Cannot be set unless using an Elastic or Premium SKU.
  /// [name] The name which should be used for this Service Plan. Changing this forces a new Service Plan to be created.
  /// [osType] The O/S type for the App Services to be hosted in this plan. Possible values include `Windows`, `Linux`, and `WindowsContainer`. Changing this forces a new resource to be created.
  /// [perSiteScalingEnabled] Should Per Site Scaling be enabled. Defaults to `false`.
  /// [premiumPlanAutoScaleEnabled] Should automatic scaling be enabled for the Premium SKU Plan. Defaults to `false`. Cannot be set unless using a Premium SKU.
  /// [reserved] Whether this is a reserved Service Plan Type. `true` if `os_type` is `Linux`, otherwise `false`.
  /// [resourceGroupName] The name of the Resource Group where the Service Plan should exist. Changing this forces a new Service Plan to be created.
  /// [skuName] The SKU for the plan. Possible values include `B1`, `B2`, `B3`, `D1`, `F1`, `I1`, `I2`, `I3`, `I1v2`, `I1mv2`, `I2v2`, `I2mv2`, `I3v2`, `I3mv2`, `I4v2`, `I4mv2`, `I5v2`, `I5mv2`, `I6v2`, `P1v2`, `P2v2`, `P3v2`, `P0v3`, `P1v3`, `P2v3`, `P3v3`, `P1mv3`, `P2mv3`, `P3mv3`, `P4mv3`, `P5mv3`, `P0v4`, `P1v4`, `P2v4`, `P3v4`, `P1mv4`, `P2mv4`, `P3mv4`, `P4mv4`, `P5mv4`, `S1`, `S2`, `S3`, `SHARED`, `EP1`, `EP2`, `EP3`, `FC1`, `WS1`, `WS2`, `WS3`, and `Y1`.
  /// [tags] A mapping of tags which should be assigned to the AppService.
  /// [workerCount] The number of Workers (instances) to be allocated.
  /// [zoneBalancingEnabled] Should the Service Plan balance across Availability Zones in the region.
  ServicePlanState({
    pulumi.Output<String>? appServiceEnvironmentId,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<int>? maximumElasticWorkerCount,
    pulumi.Output<String>? name,
    pulumi.Output<String>? osType,
    pulumi.Output<bool>? perSiteScalingEnabled,
    pulumi.Output<bool>? premiumPlanAutoScaleEnabled,
    pulumi.Output<bool>? reserved,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? skuName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? workerCount,
    pulumi.Output<bool>? zoneBalancingEnabled,
  }) :
      appServiceEnvironmentId = pulumi.Input.asOptionalInput<String>(appServiceEnvironmentId),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      maximumElasticWorkerCount = pulumi.Input.asOptionalInput<int>(maximumElasticWorkerCount),
      name = pulumi.Input.asOptionalInput<String>(name),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      perSiteScalingEnabled = pulumi.Input.asOptionalInput<bool>(perSiteScalingEnabled),
      premiumPlanAutoScaleEnabled = pulumi.Input.asOptionalInput<bool>(premiumPlanAutoScaleEnabled),
      reserved = pulumi.Input.asOptionalInput<bool>(reserved),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workerCount = pulumi.Input.asOptionalInput<int>(workerCount),
      zoneBalancingEnabled = pulumi.Input.asOptionalInput<bool>(zoneBalancingEnabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceEnvironmentId': ?appServiceEnvironmentId,
      'kind': ?kind,
      'location': ?location,
      'maximumElasticWorkerCount': ?maximumElasticWorkerCount,
      'name': ?name,
      'osType': ?osType,
      'perSiteScalingEnabled': ?perSiteScalingEnabled,
      'premiumPlanAutoScaleEnabled': ?premiumPlanAutoScaleEnabled,
      'reserved': ?reserved,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
      'workerCount': ?workerCount,
      'zoneBalancingEnabled': ?zoneBalancingEnabled,
    };
  }

  factory ServicePlanState.fromMap(Map<String, dynamic> map) {
    return ServicePlanState(
      appServiceEnvironmentId: map['appServiceEnvironmentId'] == null ? null : pulumi.Output.create<String>(map['appServiceEnvironmentId'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maximumElasticWorkerCount: map['maximumElasticWorkerCount'] == null ? null : pulumi.Output.create<int>(map['maximumElasticWorkerCount'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      osType: map['osType'] == null ? null : pulumi.Output.create<String>(map['osType'] as String),
      perSiteScalingEnabled: map['perSiteScalingEnabled'] == null ? null : pulumi.Output.create<bool>(map['perSiteScalingEnabled'] as bool),
      premiumPlanAutoScaleEnabled: map['premiumPlanAutoScaleEnabled'] == null ? null : pulumi.Output.create<bool>(map['premiumPlanAutoScaleEnabled'] as bool),
      reserved: map['reserved'] == null ? null : pulumi.Output.create<bool>(map['reserved'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workerCount: map['workerCount'] == null ? null : pulumi.Output.create<int>(map['workerCount'] as int),
      zoneBalancingEnabled: map['zoneBalancingEnabled'] == null ? null : pulumi.Output.create<bool>(map['zoneBalancingEnabled'] as bool),
    );
  }
}

