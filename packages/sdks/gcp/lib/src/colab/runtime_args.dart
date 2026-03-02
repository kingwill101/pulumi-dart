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
    this.autoUpgrade,
    this.description,
    this.desiredState,
    required this.displayName,
    required this.location,
    this.name,
    this.notebookRuntimeTemplateRef,
    this.project,
    required this.runtimeUser,
  });

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
      autoUpgrade: map['autoUpgrade'] == null ? null : (map['autoUpgrade']! as bool).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      desiredState: map['desiredState'] == null ? null : (map['desiredState']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      notebookRuntimeTemplateRef: map['notebookRuntimeTemplateRef'] == null ? null : (RuntimeNotebookRuntimeTemplateRef.fromMap((map['notebookRuntimeTemplateRef']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      runtimeUser: (map['runtimeUser'] as String).input(),
    );
  }
}

