// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plan_sku.dart';

/// Input properties used for looking up and filtering Plan resources.
class PlanState {
  /// The ID of the App Service Environment where the App Service Plan should be located. Changing forces a new resource to be created.
  ///
  /// > **NOTE:** Attaching to an App Service Environment requires the App Service Plan use a `Premium` SKU (when using an ASEv1) and the `Isolated` SKU (for an ASEv2).
  final pulumi.Input<String>? appServiceEnvironmentId;
  /// Whether to create a xenon App Service Plan.
  final pulumi.Input<bool>? isXenon;
  /// The kind of the App Service Plan to create. Possible values are `Windows` (also available as `App`), `Linux`, `elastic` (for Premium Consumption), `xenon` and `FunctionApp` (for a Consumption Plan). Defaults to `Windows`. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** When creating a `Linux` App Service Plan, the `reserved` field must be set to `true`, and when creating a `Windows`/`app` App Service Plan the `reserved` field must be set to `false`.
  final pulumi.Input<String>? kind;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan.
  final pulumi.Input<int>? maximumElasticWorkerCount;
  /// The maximum number of workers supported with the App Service Plan's sku.
  final pulumi.Input<int>? maximumNumberOfWorkers;
  /// Specifies the name of the App Service Plan component. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Can Apps assigned to this App Service Plan be scaled independently? If set to `false` apps assigned to this plan will scale to all instances of the plan.
  final pulumi.Input<bool>? perSiteScaling;
  /// Is this App Service Plan `Reserved`.
  final pulumi.Input<bool>? reserved;
  /// The name of the resource group in which to create the App Service Plan component. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `sku` block as documented below.
  final pulumi.Input<PlanSku>? sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies if the App Service Plan should be Zone Redundant. Changing this forces a new resource to be created.
  ///
  /// > **NOTE:** Requires either `PremiumV2` or `PremiumV3` SKU and that at least 3 instances. For more information, please see the [App Service Team Blog](https://azure.github.io/AppService/2021/08/25/App-service-support-for-availability-zones.html).
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [PlanState].
  /// [appServiceEnvironmentId] The ID of the App Service Environment where the App Service Plan should be located. Changing forces a new resource to be created.
  /// [isXenon] Whether to create a xenon App Service Plan.
  /// [kind] The kind of the App Service Plan to create. Possible values are `Windows` (also available as `App`), `Linux`, `elastic` (for Premium Consumption), `xenon` and `FunctionApp` (for a Consumption Plan). Defaults to `Windows`. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [maximumElasticWorkerCount] The maximum number of total workers allowed for this ElasticScaleEnabled App Service Plan.
  /// [maximumNumberOfWorkers] The maximum number of workers supported with the App Service Plan's sku.
  /// [name] Specifies the name of the App Service Plan component. Changing this forces a new resource to be created.
  /// [perSiteScaling] Can Apps assigned to this App Service Plan be scaled independently? If set to `false` apps assigned to this plan will scale to all instances of the plan.
  /// [reserved] Is this App Service Plan `Reserved`.
  /// [resourceGroupName] The name of the resource group in which to create the App Service Plan component. Changing this forces a new resource to be created.
  /// [sku] A `sku` block as documented below.
  /// [tags] A mapping of tags to assign to the resource.
  /// [zoneRedundant] Specifies if the App Service Plan should be Zone Redundant. Changing this forces a new resource to be created.
  PlanState({
    pulumi.Output<String>? appServiceEnvironmentId,
    pulumi.Output<bool>? isXenon,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<int>? maximumElasticWorkerCount,
    pulumi.Output<int>? maximumNumberOfWorkers,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? perSiteScaling,
    pulumi.Output<bool>? reserved,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<PlanSku>? sku,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<bool>? zoneRedundant,
  }) :
      appServiceEnvironmentId = pulumi.Input.asOptionalInput<String>(appServiceEnvironmentId),
      isXenon = pulumi.Input.asOptionalInput<bool>(isXenon),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      maximumElasticWorkerCount = pulumi.Input.asOptionalInput<int>(maximumElasticWorkerCount),
      maximumNumberOfWorkers = pulumi.Input.asOptionalInput<int>(maximumNumberOfWorkers),
      name = pulumi.Input.asOptionalInput<String>(name),
      perSiteScaling = pulumi.Input.asOptionalInput<bool>(perSiteScaling),
      reserved = pulumi.Input.asOptionalInput<bool>(reserved),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<PlanSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      zoneRedundant = pulumi.Input.asOptionalInput<bool>(zoneRedundant);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appServiceEnvironmentId': ?appServiceEnvironmentId,
      'isXenon': ?isXenon,
      'kind': ?kind,
      'location': ?location,
      'maximumElasticWorkerCount': ?maximumElasticWorkerCount,
      'maximumNumberOfWorkers': ?maximumNumberOfWorkers,
      'name': ?name,
      'perSiteScaling': ?perSiteScaling,
      'reserved': ?reserved,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<PlanSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory PlanState.fromMap(Map<String, dynamic> map) {
    return PlanState(
      appServiceEnvironmentId: map['appServiceEnvironmentId'] == null ? null : pulumi.Output.create<String>(map['appServiceEnvironmentId'] as String),
      isXenon: map['isXenon'] == null ? null : pulumi.Output.create<bool>(map['isXenon'] as bool),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maximumElasticWorkerCount: map['maximumElasticWorkerCount'] == null ? null : pulumi.Output.create<int>(map['maximumElasticWorkerCount'] as int),
      maximumNumberOfWorkers: map['maximumNumberOfWorkers'] == null ? null : pulumi.Output.create<int>(map['maximumNumberOfWorkers'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      perSiteScaling: map['perSiteScaling'] == null ? null : pulumi.Output.create<bool>(map['perSiteScaling'] as bool),
      reserved: map['reserved'] == null ? null : pulumi.Output.create<bool>(map['reserved'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<PlanSku>(PlanSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      zoneRedundant: map['zoneRedundant'] == null ? null : pulumi.Output.create<bool>(map['zoneRedundant'] as bool),
    );
  }
}

