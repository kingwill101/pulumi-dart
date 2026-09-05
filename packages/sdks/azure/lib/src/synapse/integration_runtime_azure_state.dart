// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IntegrationRuntimeAzure resources.
class IntegrationRuntimeAzureState {
  /// Compute type of the cluster which will execute data flow job. Valid values are `General`, `ComputeOptimized` and `MemoryOptimized`. Defaults to `General`.
  final pulumi.Input<String?>? computeType;
  /// Core count of the cluster which will execute data flow job. Valid values are `8`, `16`, `32`, `48`, `80`, `144` and `272`. Defaults to `8`.
  final pulumi.Input<int?>? coreCount;
  /// Integration runtime description.
  final pulumi.Input<String?>? description;
  /// The Azure Region where the Synapse Azure Integration Runtime should exist. Use `AutoResolve` to create an auto-resolve integration runtime. Changing this forces a new Synapse Azure Integration Runtime to be created.
  final pulumi.Input<String?>? location;
  /// The name which should be used for this Synapse Azure Integration Runtime. Changing this forces a new Synapse Azure Integration Runtime to be created.
  final pulumi.Input<String?>? name;
  /// The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Azure Integration Runtime to be created.
  final pulumi.Input<String?>? synapseWorkspaceId;
  /// Time to live (in minutes) setting of the cluster which will execute data flow job. Defaults to `0`.
  final pulumi.Input<int?>? timeToLiveMin;

  /// Creates a new [IntegrationRuntimeAzureState].
  /// [computeType] Compute type of the cluster which will execute data flow job. Valid values are `General`, `ComputeOptimized` and `MemoryOptimized`. Defaults to `General`.
  /// [coreCount] Core count of the cluster which will execute data flow job. Valid values are `8`, `16`, `32`, `48`, `80`, `144` and `272`. Defaults to `8`.
  /// [description] Integration runtime description.
  /// [location] The Azure Region where the Synapse Azure Integration Runtime should exist. Use `AutoResolve` to create an auto-resolve integration runtime. Changing this forces a new Synapse Azure Integration Runtime to be created.
  /// [name] The name which should be used for this Synapse Azure Integration Runtime. Changing this forces a new Synapse Azure Integration Runtime to be created.
  /// [synapseWorkspaceId] The Synapse Workspace ID in which to associate the Integration Runtime with. Changing this forces a new Synapse Azure Integration Runtime to be created.
  /// [timeToLiveMin] Time to live (in minutes) setting of the cluster which will execute data flow job. Defaults to `0`.
  const IntegrationRuntimeAzureState({
    this.computeType,
    this.coreCount,
    this.description,
    this.location,
    this.name,
    this.synapseWorkspaceId,
    this.timeToLiveMin,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeType': ?computeType,
      'coreCount': ?coreCount,
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'synapseWorkspaceId': ?synapseWorkspaceId,
      'timeToLiveMin': ?timeToLiveMin,
    };
  }

  factory IntegrationRuntimeAzureState.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeAzureState(
      computeType: (() { final guardedValue = map['computeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      coreCount: (() { final guardedValue = map['coreCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synapseWorkspaceId: (() { final guardedValue = map['synapseWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeToLiveMin: (() { final guardedValue = map['timeToLiveMin']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
