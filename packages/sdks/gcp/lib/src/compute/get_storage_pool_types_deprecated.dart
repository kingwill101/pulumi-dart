// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStoragePoolTypesDeprecated {
  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DELETED.
  /// This is only informational and the status will not change unless the client explicitly changes it.
  final pulumi.Input<String> deleted;

  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DEPRECATED.
  /// This is only informational and the status will not change unless the client explicitly changes it.
  final pulumi.Input<String> deprecated;

  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to OBSOLETE.
  /// This is only informational and the status will not change unless the client explicitly changes it.
  final pulumi.Input<String> obsolete;

  /// The URL of the suggested replacement for a deprecated resource.
  /// The suggested replacement resource must be the same kind of resource as the deprecated resource.
  final pulumi.Input<String> replacement;

  /// The deprecation state of this resource. This can be ACTIVE, DEPRECATED, OBSOLETE, or DELETED.
  /// Operations which communicate the end of life date for an image, can use ACTIVE.
  /// Operations which create a new resource using a DEPRECATED resource will return successfully,
  /// but with a warning indicating the deprecated resource and recommending its replacement.
  /// Operations which use OBSOLETE or DELETED resources will be rejected and result in an error.
  final pulumi.Input<String> state;

  /// Creates a new [GetStoragePoolTypesDeprecated].
  /// [deleted] An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DELETED.
  /// [deprecated] An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DEPRECATED.
  /// [obsolete] An optional RFC3339 timestamp on or after which the state of this resource is intended to change to OBSOLETE.
  /// [replacement] The URL of the suggested replacement for a deprecated resource.
  /// [state] The deprecation state of this resource. This can be ACTIVE, DEPRECATED, OBSOLETE, or DELETED.
  GetStoragePoolTypesDeprecated({
    required this.deleted,
    required this.deprecated,
    required this.obsolete,
    required this.replacement,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleted': deleted,
      'deprecated': deprecated,
      'obsolete': obsolete,
      'replacement': replacement,
      'state': state,
    };
  }

  factory GetStoragePoolTypesDeprecated.fromMap(Map<String, dynamic> map) {
    return GetStoragePoolTypesDeprecated(
      deleted: pulumi.Input.fromValue(map['deleted'] as String),
      deprecated: pulumi.Input.fromValue(map['deprecated'] as String),
      obsolete: pulumi.Input.fromValue(map['obsolete'] as String),
      replacement: pulumi.Input.fromValue(map['replacement'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
