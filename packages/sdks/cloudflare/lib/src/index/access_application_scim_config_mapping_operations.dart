// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccessApplicationScimConfigMappingOperations {
  /// Whether or not this mapping applies to create (POST) operations.
  final pulumi.Input<bool?>? create;
  /// Whether or not this mapping applies to DELETE operations.
  final pulumi.Input<bool?>? delete;
  /// Whether or not this mapping applies to update (PATCH/PUT) operations.
  final pulumi.Input<bool?>? update;

  /// Creates a new [AccessApplicationScimConfigMappingOperations].
  /// [create] Whether or not this mapping applies to create (POST) operations.
  /// [delete] Whether or not this mapping applies to DELETE operations.
  /// [update] Whether or not this mapping applies to update (PATCH/PUT) operations.
  const AccessApplicationScimConfigMappingOperations({
    this.create,
    this.delete,
    this.update,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'create': ?create,
      'delete': ?delete,
      'update': ?update,
    };
  }

  factory AccessApplicationScimConfigMappingOperations.fromMap(Map<String, dynamic> map) {
    return AccessApplicationScimConfigMappingOperations(
      create: (() { final guardedValue = map['create']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      delete: (() { final guardedValue = map['delete']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      update: (() { final guardedValue = map['update']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
