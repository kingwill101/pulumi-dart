// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synapse_spark_identity.dart';

/// Input properties used for looking up and filtering SynapseSpark resources.
class SynapseSparkState {
  /// The description of the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<String>? description;
  /// An `identity` block as defined below. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<SynapseSparkIdentity>? identity;
  /// Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<bool>? localAuthEnabled;
  /// The Azure Region where the Machine Learning Synapse Spark should exist. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<String>? location;
  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<String>? machineLearningWorkspaceId;
  /// The name which should be used for this Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<String>? name;
  /// The ID of the linked Synapse Spark Pool. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<String>? synapseSparkPoolId;
  /// A mapping of tags which should be assigned to the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SynapseSparkState].
  /// [description] The description of the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [identity] An `identity` block as defined below. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [localAuthEnabled] Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [location] The Azure Region where the Machine Learning Synapse Spark should exist. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [machineLearningWorkspaceId] The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [name] The name which should be used for this Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [synapseSparkPoolId] The ID of the linked Synapse Spark Pool. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [tags] A mapping of tags which should be assigned to the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  SynapseSparkState({
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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      identity: map['identity'] == null ? null : (SynapseSparkIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : (map['localAuthEnabled']! as bool).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      machineLearningWorkspaceId: map['machineLearningWorkspaceId'] == null ? null : (map['machineLearningWorkspaceId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      synapseSparkPoolId: map['synapseSparkPoolId'] == null ? null : (map['synapseSparkPoolId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

