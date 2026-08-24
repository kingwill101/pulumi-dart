// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultScimConfigMappingOperations {
  /// Whether or not this mapping applies to create (POST) operations.
  final pulumi.Input<bool> create;
  /// Whether or not this mapping applies to DELETE operations.
  final pulumi.Input<bool> delete;
  /// Whether or not this mapping applies to update (PATCH/PUT) operations.
  final pulumi.Input<bool> update;

  /// Creates a new [GetZeroTrustAccessApplicationsResultScimConfigMappingOperations].
  /// [create] Whether or not this mapping applies to create (POST) operations.
  /// [delete] Whether or not this mapping applies to DELETE operations.
  /// [update] Whether or not this mapping applies to update (PATCH/PUT) operations.
  const GetZeroTrustAccessApplicationsResultScimConfigMappingOperations({
    required this.create,
    required this.delete,
    required this.update,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': create,
      'delete': delete,
      'update': update,
    };
  }

  factory GetZeroTrustAccessApplicationsResultScimConfigMappingOperations.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultScimConfigMappingOperations(
      create: pulumi.Input.fromValue(map['create'] as bool),
      delete: pulumi.Input.fromValue(map['delete'] as bool),
      update: pulumi.Input.fromValue(map['update'] as bool),
    );
  }
}
