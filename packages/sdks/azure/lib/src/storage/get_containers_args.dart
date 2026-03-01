// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_containers_get_containers_args_doc}
/// Arguments for getContainers.
/// {@endtemplate}
/// {@macro pulumi_storage_get_containers_get_containers_args_doc}
class GetContainersArgs {
  /// A prefix match used for the Storage Container `name` field.
  final pulumi.Input<String>? namePrefix;
  /// The ID of the Storage Account that the Storage Containers reside in.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [GetContainersArgs].
  /// [namePrefix] A prefix match used for the Storage Container `name` field.
  /// [storageAccountId] The ID of the Storage Account that the Storage Containers reside in.
  GetContainersArgs({
    pulumi.Output<String>? namePrefix,
    required pulumi.Output<String> storageAccountId,
  }) :
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      storageAccountId = pulumi.Input.asInput<String>(storageAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namePrefix': ?namePrefix,
      'storageAccountId': storageAccountId,
    };
  }

  factory GetContainersArgs.fromMap(Map<String, dynamic> map) {
    return GetContainersArgs(
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      storageAccountId: pulumi.Output.create<String>(map['storageAccountId'] as String),
    );
  }
}

