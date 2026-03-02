// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_keymanager_get_container_get_container_args_doc}
/// Arguments for getContainer.
/// {@endtemplate}
/// {@macro pulumi_keymanager_get_container_get_container_args_doc}
class GetContainerArgs {
  /// The Container name.
  final pulumi.Input<String>? name;
  /// The region in which to obtain the V1 KeyManager client.
  /// A KeyManager client is needed to fetch a container. If omitted, the `region`
  /// argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetContainerArgs].
  /// [name] The Container name.
  /// [region] The region in which to obtain the V1 KeyManager client.
  GetContainerArgs({
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
    };
  }

  factory GetContainerArgs.fromMap(Map<String, dynamic> map) {
    return GetContainerArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

