// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_integration_runtime_rule_integration_runtime_rule_args_doc}
/// The set of arguments for IntegrationRuntimeRule.
/// {@endtemplate}
/// {@macro pulumi_datafactory_integration_runtime_rule_integration_runtime_rule_args_doc}
class IntegrationRuntimeRuleArgs {
  /// Cluster will not be recycled and it will be used in next data flow activity run until TTL (time to live) is reached if this is set as `false`. Defaults to `true`.
  final pulumi.Input<bool?>? cleanupEnabled;
  /// Compute type of the cluster which will execute data flow job. Valid values are `General`, `ComputeOptimized` and `MemoryOptimized`. Defaults to `General`.
  final pulumi.Input<String?>? computeType;
  /// Core count of the cluster which will execute data flow job. Valid values are `8`, `16`, `32`, `48`, `80`, `144` and `272`. Defaults to `8`.
  final pulumi.Input<int?>? coreCount;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource to be created.
  final pulumi.Input<String> dataFactoryId;
  /// Integration runtime description.
  final pulumi.Input<String?>? description;
  /// The time to live in minutes for the interactive authoring feature, setting this enables interactive authoring. Possible values are `10`, `30`, `60`, and `120`.
  ///
  /// &gt; **Note:** `interactiveAuthoringTimeToLiveInMinutes` can only be set when `virtualNetworkEnabled` is `true`.
  final pulumi.Input<int?>? interactiveAuthoringTimeToLiveInMinutes;
  /// Specifies the supported Azure location where the resource exists. Use `AutoResolve` to create an auto-resolve integration runtime. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of the Managed Integration Runtime. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String?>? name;
  /// Time to live (in minutes) setting of the cluster which will execute data flow job. Defaults to `0`.
  final pulumi.Input<int?>? timeToLiveMin;
  /// Is Integration Runtime compute provisioned within Managed Virtual Network? Changing this forces a new resource to be created.
  final pulumi.Input<bool?>? virtualNetworkEnabled;

  /// Creates a new [IntegrationRuntimeRuleArgs].
  /// [cleanupEnabled] Cluster will not be recycled and it will be used in next data flow activity run until TTL (time to live) is reached if this is set as `false`. Defaults to `true`.
  /// [computeType] Compute type of the cluster which will execute data flow job. Valid values are `General`, `ComputeOptimized` and `MemoryOptimized`. Defaults to `General`.
  /// [coreCount] Core count of the cluster which will execute data flow job. Valid values are `8`, `16`, `32`, `48`, `80`, `144` and `272`. Defaults to `8`.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource to be created.
  /// [description] Integration runtime description.
  /// [interactiveAuthoringTimeToLiveInMinutes] The time to live in minutes for the interactive authoring feature, setting this enables interactive authoring. Possible values are `10`, `30`, `60`, and `120`.
  /// [location] Specifies the supported Azure location where the resource exists. Use `AutoResolve` to create an auto-resolve integration runtime. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Managed Integration Runtime. Changing this forces a new resource to be created. Must be globally unique. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [timeToLiveMin] Time to live (in minutes) setting of the cluster which will execute data flow job. Defaults to `0`.
  /// [virtualNetworkEnabled] Is Integration Runtime compute provisioned within Managed Virtual Network? Changing this forces a new resource to be created.
  const IntegrationRuntimeRuleArgs({
    this.cleanupEnabled,
    this.computeType,
    this.coreCount,
    required this.dataFactoryId,
    this.description,
    this.interactiveAuthoringTimeToLiveInMinutes,
    this.location,
    this.name,
    this.timeToLiveMin,
    this.virtualNetworkEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cleanupEnabled': ?cleanupEnabled,
      'computeType': ?computeType,
      'coreCount': ?coreCount,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'interactiveAuthoringTimeToLiveInMinutes': ?interactiveAuthoringTimeToLiveInMinutes,
      'location': ?location,
      'name': ?name,
      'timeToLiveMin': ?timeToLiveMin,
      'virtualNetworkEnabled': ?virtualNetworkEnabled,
    };
  }

  factory IntegrationRuntimeRuleArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeRuleArgs(
      cleanupEnabled: (() { final guardedValue = map['cleanupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      computeType: (() { final guardedValue = map['computeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coreCount: (() { final guardedValue = map['coreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      dataFactoryId: pulumi.Input.fromValue(map['dataFactoryId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interactiveAuthoringTimeToLiveInMinutes: (() { final guardedValue = map['interactiveAuthoringTimeToLiveInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeToLiveMin: (() { final guardedValue = map['timeToLiveMin']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      virtualNetworkEnabled: (() { final guardedValue = map['virtualNetworkEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
