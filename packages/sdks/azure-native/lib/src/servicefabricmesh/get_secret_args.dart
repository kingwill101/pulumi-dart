// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicefabricmesh_get_secret_args_doc}
/// Arguments for getSecret.
/// {@endtemplate}
/// {@macro pulumi_servicefabricmesh_get_secret_args_doc}
class GetSecretArgs {
  /// Azure resource group name
  final pulumi.Input<String> resourceGroupName;
  /// The name of the secret resource.
  final pulumi.Input<String> secretResourceName;

  /// Creates a new [GetSecretArgs].
  /// [resourceGroupName] Azure resource group name
  /// [secretResourceName] The name of the secret resource.
  GetSecretArgs({
    required this.resourceGroupName,
    required this.secretResourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'secretResourceName': secretResourceName,
    };
  }

  factory GetSecretArgs.fromMap(Map<String, dynamic> map) {
    return GetSecretArgs(
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      secretResourceName: (map['secretResourceName'] as String).input(),
    );
  }
}

