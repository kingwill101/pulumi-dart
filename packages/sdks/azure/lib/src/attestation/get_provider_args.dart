// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_attestation_get_provider_get_provider_args_doc}
/// Arguments for getProvider.
/// {@endtemplate}
/// {@macro pulumi_attestation_get_provider_get_provider_args_doc}
class GetProviderArgs {
  /// The name of this Attestation Provider.
  final pulumi.Input<String> name;

  /// The name of the Resource Group where the Attestation Provider exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProviderArgs].
  /// [name] The name of this Attestation Provider.
  /// [resourceGroupName] The name of the Resource Group where the Attestation Provider exists.
  GetProviderArgs({required this.name, required this.resourceGroupName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProviderArgs.fromMap(Map<String, dynamic> map) {
    return GetProviderArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
