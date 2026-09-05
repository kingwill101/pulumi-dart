// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MoverJobDefinition resources.
class MoverJobDefinitionState {
  /// Specifies the name of the Storage Mover Agent to assign for new Job Runs of this Storage Mover Job Definition.
  final pulumi.Input<String?>? agentName;
  /// Specifies the strategy to use for copy. Possible values are `Additive` and `Mirror`.
  final pulumi.Input<String?>? copyMode;
  /// Specifies a description for this Storage Mover Job Definition.
  final pulumi.Input<String?>? description;
  /// Specifies the name which should be used for this Storage Mover Job Definition. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the name of the Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? sourceName;
  /// Specifies the sub path to use when reading from the Storage Mover Source Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? sourceSubPath;
  /// Specifies the ID of the Storage Mover Project. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? storageMoverProjectId;
  /// Specifies the name of the Storage Mover target Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? targetName;
  /// Specifies the sub path to use when writing to the Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? targetSubPath;

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
  const MoverJobDefinitionState({
    this.agentName,
    this.copyMode,
    this.description,
    this.name,
    this.sourceName,
    this.sourceSubPath,
    this.storageMoverProjectId,
    this.targetName,
    this.targetSubPath,
  });

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
      agentName: (() { final guardedValue = map['agentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      copyMode: (() { final guardedValue = map['copyMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceName: (() { final guardedValue = map['sourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceSubPath: (() { final guardedValue = map['sourceSubPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageMoverProjectId: (() { final guardedValue = map['storageMoverProjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetName: (() { final guardedValue = map['targetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetSubPath: (() { final guardedValue = map['targetSubPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
