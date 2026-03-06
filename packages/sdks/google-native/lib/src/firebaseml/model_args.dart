// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_state.dart';
import 'tf_lite_model.dart';

/// {@template pulumi_firebaseml_v1beta2_model_args_doc}
/// The set of arguments for Model.
/// {@endtemplate}
/// {@macro pulumi_firebaseml_v1beta2_model_args_doc}
class ModelArgs {
  /// The name of the model to create. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores(_) and ASCII digits 0-9. It must start with a letter.
  final pulumi.Input<String> displayName;
  /// The resource name of the Model. Model names have the form `projects/{project_id}/models/{model_id}` The name is ignored when creating a model.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// State common to all model types. Includes publishing and validation information.
  final pulumi.Input<ModelState>? state;
  /// User defined tags which can be used to group/filter models during listing
  final pulumi.Input<List<String>>? tags;
  /// A TFLite Model
  final pulumi.Input<TfLiteModel>? tfliteModel;

  /// Creates a new [ModelArgs].
  /// [displayName] The name of the model to create. The name can be up to 32 characters long and can consist only of ASCII Latin letters A-Z and a-z, underscores(_) and ASCII digits 0-9. It must start with a letter.
  /// [name] The resource name of the Model. Model names have the form `projects/{project_id}/models/{model_id}` The name is ignored when creating a model.
  /// [project] Optional.
  /// [state] State common to all model types. Includes publishing and validation information.
  /// [tags] User defined tags which can be used to group/filter models during listing
  /// [tfliteModel] A TFLite Model
  const ModelArgs({
    required this.displayName,
    this.name,
    this.project,
    this.state,
    this.tags,
    this.tfliteModel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'name': ?name,
      'project': ?project,
      'state': ?pulumi.Input.mapOptionalInputValue<ModelState, Map<String, dynamic>>(state, (value) => value.toMap()),
      'tags': ?tags,
      'tfliteModel': ?pulumi.Input.mapOptionalInputValue<TfLiteModel, Map<String, dynamic>>(tfliteModel, (value) => value.toMap()),
    };
  }

  factory ModelArgs.fromMap(Map<String, dynamic> map) {
    return ModelArgs(
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModelState.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tfliteModel: (() { final guardedValue = map['tfliteModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TfLiteModel.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

