// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_notebook_runtime_template_ref.dart';

/// {@template pulumi_colab_runtime_runtime_args_doc}
/// The set of arguments for Runtime.
/// {@endtemplate}
/// {@macro pulumi_colab_runtime_runtime_args_doc}
class RuntimeArgs {
  /// Triggers an upgrade anytime the runtime is started if it is upgradable.
  final pulumi.Input<bool>? autoUpgrade;
  /// The description of the Runtime.
  final pulumi.Input<String>? description;
  /// Desired state of the Colab Runtime. Set this field to `RUNNING` to start the runtime, and `STOPPED` to stop it.
  final pulumi.Input<String>? desiredState;
  /// Required. The display name of the Runtime.
  final pulumi.Input<String> displayName;
  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  final pulumi.Input<String> location;
  /// The resource name of the Runtime
  final pulumi.Input<String>? name;
  /// 'Runtime specific information used for NotebookRuntime creation.'
  /// Structure is documented below.
  final pulumi.Input<RuntimeNotebookRuntimeTemplateRef>? notebookRuntimeTemplateRef;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The user email of the NotebookRuntime.
  final pulumi.Input<String> runtimeUser;

  /// Creates a new [RuntimeArgs].
  /// [autoUpgrade] Triggers an upgrade anytime the runtime is started if it is upgradable.
  /// [description] The description of the Runtime.
  /// [desiredState] Desired state of the Colab Runtime. Set this field to `RUNNING` to start the runtime, and `STOPPED` to stop it.
  /// [displayName] Required. The display name of the Runtime.
  /// [location] The location for the resource: https://cloud.google.com/colab/docs/locations
  /// [name] The resource name of the Runtime
  /// [notebookRuntimeTemplateRef] 'Runtime specific information used for NotebookRuntime creation.'
  /// [project] The ID of the project in which the resource belongs.
  /// [runtimeUser] The user email of the NotebookRuntime.
  RuntimeArgs({
    pulumi.Output<bool>? autoUpgrade,
    pulumi.Output<String>? description,
    pulumi.Output<String>? desiredState,
    required pulumi.Output<String> displayName,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<RuntimeNotebookRuntimeTemplateRef>? notebookRuntimeTemplateRef,
    pulumi.Output<String>? project,
    required pulumi.Output<String> runtimeUser,
  }) :
      autoUpgrade = pulumi.Input.asOptionalInput<bool>(autoUpgrade),
      description = pulumi.Input.asOptionalInput<String>(description),
      desiredState = pulumi.Input.asOptionalInput<String>(desiredState),
      displayName = pulumi.Input.asInput<String>(displayName),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      notebookRuntimeTemplateRef = pulumi.Input.asOptionalInput<RuntimeNotebookRuntimeTemplateRef>(notebookRuntimeTemplateRef),
      project = pulumi.Input.asOptionalInput<String>(project),
      runtimeUser = pulumi.Input.asInput<String>(runtimeUser);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgrade': ?autoUpgrade,
      'description': ?description,
      'desiredState': ?desiredState,
      'displayName': displayName,
      'location': location,
      'name': ?name,
      'notebookRuntimeTemplateRef': ?pulumi.Input.mapOptionalInputValue<RuntimeNotebookRuntimeTemplateRef, Map<String, dynamic>>(notebookRuntimeTemplateRef, (value) => value.toMap()),
      'project': ?project,
      'runtimeUser': runtimeUser,
    };
  }

  factory RuntimeArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeArgs(
      autoUpgrade: map['autoUpgrade'] == null ? null : pulumi.Output.create<bool>(map['autoUpgrade'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      desiredState: map['desiredState'] == null ? null : pulumi.Output.create<String>(map['desiredState'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notebookRuntimeTemplateRef: map['notebookRuntimeTemplateRef'] == null ? null : pulumi.Output.create<RuntimeNotebookRuntimeTemplateRef>(RuntimeNotebookRuntimeTemplateRef.fromMap((map['notebookRuntimeTemplateRef'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      runtimeUser: pulumi.Output.create<String>(map['runtimeUser'] as String),
    );
  }
}

