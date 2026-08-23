// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MoverTargetEndpoint resources.
class MoverTargetEndpointState {
  /// Specifies a description for the Storage Mover Target Endpoint.
  final pulumi.Input<String>? description;
  /// Specifies the name which should be used for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the storage account for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageAccountId;
  /// Specifies the name of the storage blob container for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageContainerName;
  /// Specifies the ID of the storage mover for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageMoverId;

  /// Creates a new [MoverTargetEndpointState].
  /// [description] Specifies a description for the Storage Mover Target Endpoint.
  /// [name] Specifies the name which should be used for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  /// [storageAccountId] Specifies the ID of the storage account for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  /// [storageContainerName] Specifies the name of the storage blob container for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  /// [storageMoverId] Specifies the ID of the storage mover for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  const MoverTargetEndpointState({
    this.description,
    this.name,
    this.storageAccountId,
    this.storageContainerName,
    this.storageMoverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'storageAccountId': ?storageAccountId,
      'storageContainerName': ?storageContainerName,
      'storageMoverId': ?storageMoverId,
    };
  }

  factory MoverTargetEndpointState.fromMap(Map<String, dynamic> map) {
    return MoverTargetEndpointState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageContainerName: (() { final guardedValue = map['storageContainerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageMoverId: (() { final guardedValue = map['storageMoverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
