// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_notebook_runtime_template_ref.dart';

/// {@template pulumi_colab_runtime_runtime_args_doc}
/// The set of arguments for Runtime.
/// {@endtemplate}
/// {@macro pulumi_colab_runtime_runtime_args_doc}
class RuntimeArgs {
  /// Triggers an upgrade anytime the runtime is started if it is upgradable.
  final pulumi.Input<bool?>? autoUpgrade;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The description of the Runtime.
  final pulumi.Input<String?>? description;
  /// Desired state of the Colab Runtime. Set this field to `RUNNING` to start the runtime, and `STOPPED` to stop it.
  final pulumi.Input<String?>? desiredState;
  /// Required. The display name of the Runtime.
  final pulumi.Input<String> displayName;
  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  final pulumi.Input<String> location;
  /// The resource name of the Runtime
  final pulumi.Input<String?>? name;
  /// 'Runtime specific information used for NotebookRuntime creation.'
  /// Structure is documented below.
  final pulumi.Input<RuntimeNotebookRuntimeTemplateRef?>? notebookRuntimeTemplateRef;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The user email of the NotebookRuntime.
  final pulumi.Input<String> runtimeUser;

  /// Creates a new [RuntimeArgs].
  /// [autoUpgrade] Triggers an upgrade anytime the runtime is started if it is upgradable.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the Runtime.
  /// [desiredState] Desired state of the Colab Runtime. Set this field to `RUNNING` to start the runtime, and `STOPPED` to stop it.
  /// [displayName] Required. The display name of the Runtime.
  /// [location] The location for the resource: https://cloud.google.com/colab/docs/locations
  /// [name] The resource name of the Runtime
  /// [notebookRuntimeTemplateRef] 'Runtime specific information used for NotebookRuntime creation.'
  /// [project] The ID of the project in which the resource belongs.
  /// [runtimeUser] The user email of the NotebookRuntime.
  const RuntimeArgs({
    this.autoUpgrade,
    this.deletionPolicy,
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
      'deletionPolicy': ?deletionPolicy,
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
      autoUpgrade: (() { final guardedValue = map['autoUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredState: (() { final guardedValue = map['desiredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notebookRuntimeTemplateRef: (() { final guardedValue = map['notebookRuntimeTemplateRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeNotebookRuntimeTemplateRef.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeUser: pulumi.Input.fromValue(map['runtimeUser'] as String),
    );
  }
}
