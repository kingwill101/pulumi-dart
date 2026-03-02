// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Deprecation status for a public resource.
class DeprecationStatusResponseComputeV1 {
  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DELETED. This is only informational and the status will not change unless the client explicitly changes it.
  final pulumi.Input<String> deleted;
  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DEPRECATED. This is only informational and the status will not change unless the client explicitly changes it.
  final pulumi.Input<String> deprecated;
  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to OBSOLETE. This is only informational and the status will not change unless the client explicitly changes it.
  final pulumi.Input<String> obsolete;
  /// The URL of the suggested replacement for a deprecated resource. The suggested replacement resource must be the same kind of resource as the deprecated resource.
  final pulumi.Input<String> replacement;
  /// The deprecation state of this resource. This can be ACTIVE, DEPRECATED, OBSOLETE, or DELETED. Operations which communicate the end of life date for an image, can use ACTIVE. Operations which create a new resource using a DEPRECATED resource will return successfully, but with a warning indicating the deprecated resource and recommending its replacement. Operations which use OBSOLETE or DELETED resources will be rejected and result in an error.
  final pulumi.Input<String> state;

  /// Creates a new [DeprecationStatusResponseComputeV1].
  /// [deleted] An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DELETED. This is only informational and the status will not change unless the client explicitly changes it.
  /// [deprecated] An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DEPRECATED. This is only informational and the status will not change unless the client explicitly changes it.
  /// [obsolete] An optional RFC3339 timestamp on or after which the state of this resource is intended to change to OBSOLETE. This is only informational and the status will not change unless the client explicitly changes it.
  /// [replacement] The URL of the suggested replacement for a deprecated resource. The suggested replacement resource must be the same kind of resource as the deprecated resource.
  /// [state] The deprecation state of this resource. This can be ACTIVE, DEPRECATED, OBSOLETE, or DELETED. Operations which communicate the end of life date for an image, can use ACTIVE. Operations which create a new resource using a DEPRECATED resource will return successfully, but with a warning indicating the deprecated resource and recommending its replacement. Operations which use OBSOLETE or DELETED resources will be rejected and result in an error.
  DeprecationStatusResponseComputeV1({
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

  factory DeprecationStatusResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return DeprecationStatusResponseComputeV1(
      deleted: (map['deleted'] as String).input(),
      deprecated: (map['deprecated'] as String).input(),
      obsolete: (map['obsolete'] as String).input(),
      replacement: (map['replacement'] as String).input(),
      state: (map['state'] as String).input(),
    );
  }
}

