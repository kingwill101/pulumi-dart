// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerapp_get_app_get_app_args_doc}
/// Arguments for getApp.
/// {@endtemplate}
/// {@macro pulumi_containerapp_get_app_get_app_args_doc}
class GetAppArgs {
  /// The name of the Container App.
  final pulumi.Input<String> name;
  /// Should the data source read the secrets from the Container App? Defaults to `true`.
  final pulumi.Input<bool>? readSecrets;
  /// The name of the Resource Group where this Container App exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAppArgs].
  /// [name] The name of the Container App.
  /// [readSecrets] Should the data source read the secrets from the Container App? Defaults to `true`.
  /// [resourceGroupName] The name of the Resource Group where this Container App exists.
  GetAppArgs({
    required this.name,
    this.readSecrets,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'readSecrets': ?readSecrets,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAppArgs.fromMap(Map<String, dynamic> map) {
    return GetAppArgs(
      name: (map['name'] as String).input(),
      readSecrets: map['readSecrets'] == null ? null : (map['readSecrets']! as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

