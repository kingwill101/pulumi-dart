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
  MoverTargetEndpointState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? storageAccountId,
    pulumi.Output<String>? storageContainerName,
    pulumi.Output<String>? storageMoverId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId),
      storageContainerName = pulumi.Input.asOptionalInput<String>(storageContainerName),
      storageMoverId = pulumi.Input.asOptionalInput<String>(storageMoverId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      storageAccountId: map['storageAccountId'] == null ? null : pulumi.Output.create<String>(map['storageAccountId'] as String),
      storageContainerName: map['storageContainerName'] == null ? null : pulumi.Output.create<String>(map['storageContainerName'] as String),
      storageMoverId: map['storageMoverId'] == null ? null : pulumi.Output.create<String>(map['storageMoverId'] as String),
    );
  }
}

