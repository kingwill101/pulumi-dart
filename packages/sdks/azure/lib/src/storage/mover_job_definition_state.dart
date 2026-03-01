// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MoverJobDefinition resources.
class MoverJobDefinitionState {
  /// Specifies the name of the Storage Mover Agent to assign for new Job Runs of this Storage Mover Job Definition.
  final pulumi.Input<String>? agentName;
  /// Specifies the strategy to use for copy. Possible values are `Additive` and `Mirror`.
  final pulumi.Input<String>? copyMode;
  /// Specifies a description for this Storage Mover Job Definition.
  final pulumi.Input<String>? description;
  /// Specifies the name which should be used for this Storage Mover Job Definition. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceName;
  /// Specifies the sub path to use when reading from the Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceSubPath;
  /// Specifies the ID of the Storage Mover Project. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageMoverProjectId;
  /// Specifies the name of the Storage Mover target Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetName;
  /// Specifies the sub path to use when writing to the Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetSubPath;

  /// Creates a new [MoverJobDefinitionState].
  /// [agentName] Specifies the name of the Storage Mover Agent to assign for new Job Runs of this Storage Mover Job Definition.
  /// [copyMode] Specifies the strategy to use for copy. Possible values are `Additive` and `Mirror`.
  /// [description] Specifies a description for this Storage Mover Job Definition.
  /// [name] Specifies the name which should be used for this Storage Mover Job Definition. Changing this forces a new resource to be created.
  /// [sourceName] Specifies the name of the Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  /// [sourceSubPath] Specifies the sub path to use when reading from the Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  /// [storageMoverProjectId] Specifies the ID of the Storage Mover Project. Changing this forces a new resource to be created.
  /// [targetName] Specifies the name of the Storage Mover target Endpoint. Changing this forces a new resource to be created.
  /// [targetSubPath] Specifies the sub path to use when writing to the Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  MoverJobDefinitionState({
    pulumi.Output<String>? agentName,
    pulumi.Output<String>? copyMode,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? sourceName,
    pulumi.Output<String>? sourceSubPath,
    pulumi.Output<String>? storageMoverProjectId,
    pulumi.Output<String>? targetName,
    pulumi.Output<String>? targetSubPath,
  }) :
      agentName = pulumi.Input.asOptionalInput<String>(agentName),
      copyMode = pulumi.Input.asOptionalInput<String>(copyMode),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      sourceName = pulumi.Input.asOptionalInput<String>(sourceName),
      sourceSubPath = pulumi.Input.asOptionalInput<String>(sourceSubPath),
      storageMoverProjectId = pulumi.Input.asOptionalInput<String>(storageMoverProjectId),
      targetName = pulumi.Input.asOptionalInput<String>(targetName),
      targetSubPath = pulumi.Input.asOptionalInput<String>(targetSubPath);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentName': ?agentName,
      'copyMode': ?copyMode,
      'description': ?description,
      'name': ?name,
      'sourceName': ?sourceName,
      'sourceSubPath': ?sourceSubPath,
      'storageMoverProjectId': ?storageMoverProjectId,
      'targetName': ?targetName,
      'targetSubPath': ?targetSubPath,
    };
  }

  factory MoverJobDefinitionState.fromMap(Map<String, dynamic> map) {
    return MoverJobDefinitionState(
      agentName: map['agentName'] == null ? null : pulumi.Output.create<String>(map['agentName'] as String),
      copyMode: map['copyMode'] == null ? null : pulumi.Output.create<String>(map['copyMode'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sourceName: map['sourceName'] == null ? null : pulumi.Output.create<String>(map['sourceName'] as String),
      sourceSubPath: map['sourceSubPath'] == null ? null : pulumi.Output.create<String>(map['sourceSubPath'] as String),
      storageMoverProjectId: map['storageMoverProjectId'] == null ? null : pulumi.Output.create<String>(map['storageMoverProjectId'] as String),
      targetName: map['targetName'] == null ? null : pulumi.Output.create<String>(map['targetName'] as String),
      targetSubPath: map['targetSubPath'] == null ? null : pulumi.Output.create<String>(map['targetSubPath'] as String),
    );
  }
}

