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
    pulumi.Output<bool>? autoUpgrade,
    pulumi.Output<String>? description,
    pulumi.Output<String>? desiredState,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? expirationTime,
    pulumi.Output<bool>? isUpgradable,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<RuntimeNotebookRuntimeTemplateRef>? notebookRuntimeTemplateRef,
    pulumi.Output<String>? notebookRuntimeType,
    pulumi.Output<String>? project,
    pulumi.Output<String>? runtimeUser,
    pulumi.Output<String>? state,
  }) :
      autoUpgrade = pulumi.Input.asOptionalInput<bool>(autoUpgrade),
      description = pulumi.Input.asOptionalInput<String>(description),
      desiredState = pulumi.Input.asOptionalInput<String>(desiredState),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      expirationTime = pulumi.Input.asOptionalInput<String>(expirationTime),
      isUpgradable = pulumi.Input.asOptionalInput<bool>(isUpgradable),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      notebookRuntimeTemplateRef = pulumi.Input.asOptionalInput<RuntimeNotebookRuntimeTemplateRef>(notebookRuntimeTemplateRef),
      notebookRuntimeType = pulumi.Input.asOptionalInput<String>(notebookRuntimeType),
      project = pulumi.Input.asOptionalInput<String>(project),
      runtimeUser = pulumi.Input.asOptionalInput<String>(runtimeUser),
      state = pulumi.Input.asOptionalInput<String>(state);

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
      autoUpgrade: map['autoUpgrade'] == null ? null : pulumi.Output.create<bool>(map['autoUpgrade'] as bool),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      desiredState: map['desiredState'] == null ? null : pulumi.Output.create<String>(map['desiredState'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      expirationTime: map['expirationTime'] == null ? null : pulumi.Output.create<String>(map['expirationTime'] as String),
      isUpgradable: map['isUpgradable'] == null ? null : pulumi.Output.create<bool>(map['isUpgradable'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      notebookRuntimeTemplateRef: map['notebookRuntimeTemplateRef'] == null ? null : pulumi.Output.create<RuntimeNotebookRuntimeTemplateRef>(RuntimeNotebookRuntimeTemplateRef.fromMap((map['notebookRuntimeTemplateRef'] as Map).cast<String, dynamic>())),
      notebookRuntimeType: map['notebookRuntimeType'] == null ? null : pulumi.Output.create<String>(map['notebookRuntimeType'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      runtimeUser: map['runtimeUser'] == null ? null : pulumi.Output.create<String>(map['runtimeUser'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

