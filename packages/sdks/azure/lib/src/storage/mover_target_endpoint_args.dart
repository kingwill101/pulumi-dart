// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_mover_target_endpoint_mover_target_endpoint_args_doc}
/// The set of arguments for MoverTargetEndpoint.
/// {@endtemplate}
/// {@macro pulumi_storage_mover_target_endpoint_mover_target_endpoint_args_doc}
class MoverTargetEndpointArgs {
  /// Specifies a description for the Storage Mover Target Endpoint.
  final pulumi.Input<String>? description;
  /// Specifies the name which should be used for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the storage account for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountId;
  /// Specifies the name of the storage blob container for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageContainerName;
  /// Specifies the ID of the storage mover for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageMoverId;

  /// Creates a new [MoverTargetEndpointArgs].
  /// [description] Specifies a description for the Storage Mover Target Endpoint.
  /// [name] Specifies the name which should be used for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  /// [storageAccountId] Specifies the ID of the storage account for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  /// [storageContainerName] Specifies the name of the storage blob container for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  /// [storageMoverId] Specifies the ID of the storage mover for this Storage Mover Target Endpoint. Changing this forces a new resource to be created.
  const MoverTargetEndpointArgs({
    this.description,
    this.name,
    required this.storageAccountId,
    required this.storageContainerName,
    required this.storageMoverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'storageAccountId': storageAccountId,
      'storageContainerName': storageContainerName,
      'storageMoverId': storageMoverId,
    };
  }

  factory MoverTargetEndpointArgs.fromMap(Map<String, dynamic> map) {
    return MoverTargetEndpointArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
      storageContainerName: pulumi.Input.fromValue(map['storageContainerName'] as String),
      storageMoverId: pulumi.Input.fromValue(map['storageMoverId'] as String),
    );
  }
}

