// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_identity.dart';
import 'experiment_selector.dart';
import 'experiment_step.dart';

/// Input properties used for looking up and filtering Experiment resources.
class ExperimentState {
  /// A `identity` block as defined below.
  final pulumi.Input<ExperimentIdentity>? identity;
  /// The Azure Region where the Chaos Studio Experiment should exist. Changing this forces a new Chaos Studio Experiment to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Chaos Studio Experiment. Changing this forces a new Chaos Studio Experiment to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Chaos Studio Experiment should exist. Changing this forces a new Chaos Studio Experiment to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// One or more `selectors` blocks as defined below.
  final pulumi.Input<List<ExperimentSelector>>? selectors;
  /// One or more `steps` blocks as defined below.
  final pulumi.Input<List<ExperimentStep>>? steps;

  /// Creates a new [ExperimentState].
  /// [identity] A `identity` block as defined below.
  /// [location] The Azure Region where the Chaos Studio Experiment should exist. Changing this forces a new Chaos Studio Experiment to be created.
  /// [name] The name which should be used for this Chaos Studio Experiment. Changing this forces a new Chaos Studio Experiment to be created.
  /// [resourceGroupName] The name of the Resource Group where the Chaos Studio Experiment should exist. Changing this forces a new Chaos Studio Experiment to be created.
  /// [selectors] One or more `selectors` blocks as defined below.
  /// [steps] One or more `steps` blocks as defined below.
  ExperimentState({
    this.identity,
    this.location,
    this.name,
    this.resourceGroupName,
    this.selectors,
    this.steps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ExperimentIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'selectors': ?pulumi.Input.mapOptionalInputValue<List<ExperimentSelector>, List<Map<String, dynamic>>>(selectors, (value) => pulumi.Input.encodeList<ExperimentSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'steps': ?pulumi.Input.mapOptionalInputValue<List<ExperimentStep>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<ExperimentStep, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ExperimentState.fromMap(Map<String, dynamic> map) {
    return ExperimentState(
      identity: map['identity'] == null ? null : (ExperimentIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      selectors: map['selectors'] == null ? null : (pulumi.Input.decodeList<ExperimentSelector>(map['selectors'], (value) => ExperimentSelector.fromMap((value as Map).cast<String, dynamic>()))).input(),
      steps: map['steps'] == null ? null : (pulumi.Input.decodeList<ExperimentStep>(map['steps'], (value) => ExperimentStep.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

