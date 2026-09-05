// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synapse_spark_identity.dart';

/// Input properties used for looking up and filtering SynapseSpark resources.
class SynapseSparkState {
  /// The description of the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<String?>? description;
  /// An `identity` block as defined below. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<SynapseSparkIdentity?>? identity;
  /// Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<bool?>? localAuthEnabled;
  /// The Azure Region where the Machine Learning Synapse Spark should exist. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<String?>? location;
  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<String?>? machineLearningWorkspaceId;
  /// The name which should be used for this Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the linked Synapse Spark Pool. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<String?>? synapseSparkPoolId;
  /// A mapping of tags which should be assigned to the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [SynapseSparkState].
  /// [description] The description of the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [identity] An `identity` block as defined below. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [localAuthEnabled] Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [location] The Azure Region where the Machine Learning Synapse Spark should exist. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [machineLearningWorkspaceId] The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [name] The name which should be used for this Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [synapseSparkPoolId] The ID of the linked Synapse Spark Pool. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [tags] A mapping of tags which should be assigned to the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  const SynapseSparkState({
    this.description,
    this.identity,
    this.localAuthEnabled,
    this.location,
    this.machineLearningWorkspaceId,
    this.name,
    this.synapseSparkPoolId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'identity': ?pulumi.Input.mapOptionalInputValue<SynapseSparkIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'machineLearningWorkspaceId': ?machineLearningWorkspaceId,
      'name': ?name,
      'synapseSparkPoolId': ?synapseSparkPoolId,
      'tags': ?tags,
    };
  }

  factory SynapseSparkState.fromMap(Map<String, dynamic> map) {
    return SynapseSparkState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SynapseSparkIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      localAuthEnabled: (() { final guardedValue = map['localAuthEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      machineLearningWorkspaceId: (() { final guardedValue = map['machineLearningWorkspaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      synapseSparkPoolId: (() { final guardedValue = map['synapseSparkPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
