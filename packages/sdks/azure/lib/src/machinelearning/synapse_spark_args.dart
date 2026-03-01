// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'synapse_spark_identity.dart';

/// {@template pulumi_machinelearning_synapse_spark_synapse_spark_args_doc}
/// The set of arguments for SynapseSpark.
/// {@endtemplate}
/// {@macro pulumi_machinelearning_synapse_spark_synapse_spark_args_doc}
class SynapseSparkArgs {
  /// The description of the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<String>? description;
  /// An `identity` block as defined below. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<SynapseSparkIdentity>? identity;
  /// Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<bool>? localAuthEnabled;
  /// The Azure Region where the Machine Learning Synapse Spark should exist. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<String>? location;
  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<String> machineLearningWorkspaceId;
  /// The name which should be used for this Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<String>? name;
  /// The ID of the linked Synapse Spark Pool. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<String> synapseSparkPoolId;
  /// A mapping of tags which should be assigned to the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [SynapseSparkArgs].
  /// [description] The description of the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [identity] An `identity` block as defined below. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [localAuthEnabled] Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [location] The Azure Region where the Machine Learning Synapse Spark should exist. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [machineLearningWorkspaceId] The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [name] The name which should be used for this Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [synapseSparkPoolId] The ID of the linked Synapse Spark Pool. Changing this forces a new Machine Learning Synapse Spark to be created.
  /// [tags] A mapping of tags which should be assigned to the Machine Learning Synapse Spark. Changing this forces a new Machine Learning Synapse Spark to be created.
  SynapseSparkArgs({
    pulumi.Output<String>? description,
    pulumi.Output<SynapseSparkIdentity>? identity,
    pulumi.Output<bool>? localAuthEnabled,
    pulumi.Output<String>? location,
    required pulumi.Output<String> machineLearningWorkspaceId,
    pulumi.Output<String>? name,
    required pulumi.Output<String> synapseSparkPoolId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      identity = pulumi.Input.asOptionalInput<SynapseSparkIdentity>(identity),
      localAuthEnabled = pulumi.Input.asOptionalInput<bool>(localAuthEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      machineLearningWorkspaceId = pulumi.Input.asInput<String>(machineLearningWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      synapseSparkPoolId = pulumi.Input.asInput<String>(synapseSparkPoolId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'identity': ?pulumi.Input.mapOptionalInputValue<SynapseSparkIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'machineLearningWorkspaceId': machineLearningWorkspaceId,
      'name': ?name,
      'synapseSparkPoolId': synapseSparkPoolId,
      'tags': ?tags,
    };
  }

  factory SynapseSparkArgs.fromMap(Map<String, dynamic> map) {
    return SynapseSparkArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<SynapseSparkIdentity>(SynapseSparkIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : pulumi.Output.create<bool>(map['localAuthEnabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      machineLearningWorkspaceId: pulumi.Output.create<String>(map['machineLearningWorkspaceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      synapseSparkPoolId: pulumi.Output.create<String>(map['synapseSparkPoolId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

