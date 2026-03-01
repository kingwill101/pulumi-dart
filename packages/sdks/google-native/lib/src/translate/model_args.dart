// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_translate_v3_model_args_doc}
/// The set of arguments for Model.
/// {@endtemplate}
/// {@macro pulumi_translate_v3_model_args_doc}
class ModelArgs {
  /// The dataset from which the model is trained, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`
  final pulumi.Input<String>? dataset;
  /// The name of the model to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  /// The resource name of the model, in form of `projects/{project-number-or-id}/locations/{location_id}/models/{model_id}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [ModelArgs].
  /// [dataset] The dataset from which the model is trained, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}`
  /// [displayName] The name of the model to show in the interface. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores (_), and ASCII digits 0-9.
  /// [location] Optional.
  /// [name] The resource name of the model, in form of `projects/{project-number-or-id}/locations/{location_id}/models/{model_id}`
  /// [project] Optional.
  ModelArgs({
    pulumi.Output<String>? dataset,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      dataset = pulumi.Input.asOptionalInput<String>(dataset),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': ?dataset,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory ModelArgs.fromMap(Map<String, dynamic> map) {
    return ModelArgs(
      dataset: map['dataset'] == null ? null : pulumi.Output.create<String>(map['dataset'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

