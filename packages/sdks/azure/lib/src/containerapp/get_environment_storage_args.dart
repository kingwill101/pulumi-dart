// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerapp_get_environment_storage_get_environment_storage_args_doc}
/// Arguments for getEnvironmentStorage.
/// {@endtemplate}
/// {@macro pulumi_containerapp_get_environment_storage_get_environment_storage_args_doc}
class GetEnvironmentStorageArgs {
  /// The ID of the Container App Environment to which this storage belongs.
  final pulumi.Input<String> containerAppEnvironmentId;
  /// The name of the Container App Environment Storage.
  final pulumi.Input<String> name;

  /// Creates a new [GetEnvironmentStorageArgs].
  /// [containerAppEnvironmentId] The ID of the Container App Environment to which this storage belongs.
  /// [name] The name of the Container App Environment Storage.
  const GetEnvironmentStorageArgs({
    required this.containerAppEnvironmentId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppEnvironmentId': containerAppEnvironmentId,
      'name': name,
    };
  }

  factory GetEnvironmentStorageArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentStorageArgs(
      containerAppEnvironmentId: pulumi.Input.fromValue(map['containerAppEnvironmentId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
