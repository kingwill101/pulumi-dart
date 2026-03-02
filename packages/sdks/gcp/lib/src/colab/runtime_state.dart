// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_notebook_runtime_template_ref.dart';

/// Input properties used for looking up and filtering Runtime resources.
class RuntimeState {
  /// Triggers an upgrade anytime the runtime is started if it is upgradable.
  final pulumi.Input<bool>? autoUpgrade;
  /// The description of the Runtime.
  final pulumi.Input<String>? description;
  /// Desired state of the Colab Runtime. Set this field to `RUNNING` to start the runtime, and `STOPPED` to stop it.
  final pulumi.Input<String>? desiredState;
  /// Required. The display name of the Runtime.
  final pulumi.Input<String>? displayName;
  /// Output only. Timestamp when this NotebookRuntime will be expired.
  final pulumi.Input<String>? expirationTime;
  /// Output only. Checks if the NotebookRuntime is upgradable.
  final pulumi.Input<bool>? isUpgradable;
  /// The location for the resource: https://cloud.google.com/colab/docs/locations
  final pulumi.Input<String>? location;
  /// The resource name of the Runtime
  final pulumi.Input<String>? name;
  /// 'Runtime specific information used for NotebookRuntime creation.'
  /// Structure is documented below.
  final pulumi.Input<RuntimeNotebookRuntimeTemplateRef>? notebookRuntimeTemplateRef;
  /// Output only. The type of the notebook runtime.
  final pulumi.Input<String>? notebookRuntimeType;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The user email of the NotebookRuntime.
  final pulumi.Input<String>? runtimeUser;
  /// Output only. The state of the runtime.
  final pulumi.Input<String>? state;

  /// Creates a new [RuntimeState].
  /// [autoUpgrade] Triggers an upgrade anytime the runtime is started if it is upgradable.
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
  RuntimeState({
    this.autoUpgrade,
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
      autoUpgrade: map['autoUpgrade'] == null ? null : (map['autoUpgrade'] as bool).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      desiredState: map['desiredState'] == null ? null : (map['desiredState'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      expirationTime: map['expirationTime'] == null ? null : (map['expirationTime'] as String).input(),
      isUpgradable: map['isUpgradable'] == null ? null : (map['isUpgradable'] as bool).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      notebookRuntimeTemplateRef: map['notebookRuntimeTemplateRef'] == null ? null : (RuntimeNotebookRuntimeTemplateRef.fromMap((map['notebookRuntimeTemplateRef'] as Map).cast<String, dynamic>())).input(),
      notebookRuntimeType: map['notebookRuntimeType'] == null ? null : (map['notebookRuntimeType'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      runtimeUser: map['runtimeUser'] == null ? null : (map['runtimeUser'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

