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
    this.appServiceEnvironmentId,
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
      appServiceEnvironmentId: map['appServiceEnvironmentId'] == null ? null : (map['appServiceEnvironmentId'] as String).input(),
      isXenon: map['isXenon'] == null ? null : (map['isXenon'] as bool).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maximumElasticWorkerCount: map['maximumElasticWorkerCount'] == null ? null : (map['maximumElasticWorkerCount'] as int).input(),
      maximumNumberOfWorkers: map['maximumNumberOfWorkers'] == null ? null : (map['maximumNumberOfWorkers'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      perSiteScaling: map['perSiteScaling'] == null ? null : (map['perSiteScaling'] as bool).input(),
      reserved: map['reserved'] == null ? null : (map['reserved'] as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (PlanSku.fromMap((map['sku'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      zoneRedundant: map['zoneRedundant'] == null ? null : (map['zoneRedundant'] as bool).input(),
    );
  }
}

