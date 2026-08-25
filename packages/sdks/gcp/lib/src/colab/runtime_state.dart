// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_notebook_runtime_template_ref.dart';

/// Input properties used for looking up and filtering Runtime resources.
class RuntimeState {
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
  final pulumi.Input<String?>? displayName;
  /// Output only. Timestamp when this NotebookRuntime will be expired.
  final pulumi.Input<String?>? expirationTime;
  /// Output only. Checks if the NotebookRuntime is upgradable.
  final pulumi.Input<bool?>? isUpgradable;
  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  final pulumi.Input<String?>? location;
  /// The resource name of the Runtime
  final pulumi.Input<String?>? name;
  /// 'Runtime specific information used for NotebookRuntime creation.'
  /// Structure is documented below.
  final pulumi.Input<RuntimeNotebookRuntimeTemplateRef?>? notebookRuntimeTemplateRef;
  /// Output only. The type of the notebook runtime.
  final pulumi.Input<String?>? notebookRuntimeType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The user email of the NotebookRuntime.
  final pulumi.Input<String?>? runtimeUser;
  /// Output only. The state of the runtime.
  final pulumi.Input<String?>? state;

  /// Creates a new [RuntimeState].
  /// [autoUpgrade] Triggers an upgrade anytime the runtime is started if it is upgradable.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] The description of the Runtime.
  /// [desiredState] Desired state of the Colab Runtime. Set this field to `RUNNING` to start the runtime, and `STOPPED` to stop it.
  /// [displayName] Required. The display name of the Runtime.
  /// [expirationTime] Output only. Timestamp when this NotebookRuntime will be expired.
  /// [isUpgradable] Output only. Checks if the NotebookRuntime is upgradable.
  /// [location] The location for the resource: https://cloud.google.com/colab/docs/locations
  /// [name] The resource name of the Runtime
  /// [notebookRuntimeTemplateRef] 'Runtime specific information used for NotebookRuntime creation.'
  /// [notebookRuntimeType] Output only. The type of the notebook runtime.
  /// [project] The ID of the project in which the resource belongs.
  /// [runtimeUser] The user email of the NotebookRuntime.
  /// [state] Output only. The state of the runtime.
  const RuntimeState({
    this.autoUpgrade,
    this.deletionPolicy,
    this.description,
    this.desiredState,
    this.displayName,
    this.expirationTime,
    this.isUpgradable,
    this.location,
    this.name,
    this.notebookRuntimeTemplateRef,
    this.notebookRuntimeType,
    this.project,
    this.runtimeUser,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgrade': ?autoUpgrade,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'desiredState': ?desiredState,
      'displayName': ?displayName,
      'expirationTime': ?expirationTime,
      'isUpgradable': ?isUpgradable,
      'location': ?location,
      'name': ?name,
      'notebookRuntimeTemplateRef': ?pulumi.Input.mapOptionalInputValue<RuntimeNotebookRuntimeTemplateRef, Map<String, dynamic>>(notebookRuntimeTemplateRef, (value) => value.toMap()),
      'notebookRuntimeType': ?notebookRuntimeType,
      'project': ?project,
      'runtimeUser': ?runtimeUser,
      'state': ?state,
    };
  }

  factory RuntimeState.fromMap(Map<String, dynamic> map) {
    return RuntimeState(
      autoUpgrade: (() { final guardedValue = map['autoUpgrade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      desiredState: (() { final guardedValue = map['desiredState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationTime: (() { final guardedValue = map['expirationTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isUpgradable: (() { final guardedValue = map['isUpgradable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      notebookRuntimeTemplateRef: (() { final guardedValue = map['notebookRuntimeTemplateRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeNotebookRuntimeTemplateRef.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      notebookRuntimeType: (() { final guardedValue = map['notebookRuntimeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeUser: (() { final guardedValue = map['runtimeUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
