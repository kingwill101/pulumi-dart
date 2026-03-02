// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'list_meta.dart';
import 'status_details.dart';

/// {@template pulumi_meta_v1_status_args_doc}
/// The set of arguments for Status.
/// {@endtemplate}
/// {@macro pulumi_meta_v1_status_args_doc}
class StatusArgs {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Suggested HTTP return code for this status, 0 if not set.
  final pulumi.Input<int>? code;
  /// Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
  final pulumi.Input<StatusDetails>? details;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// A human-readable description of the status of this operation.
  final pulumi.Input<String>? message;
  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<ListMeta>? metadata;
  /// A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
  final pulumi.Input<String>? reason;

  /// Creates a new [StatusArgs].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [code] Suggested HTTP return code for this status, 0 if not set.
  /// [details] Extended data associated with the reason.  Each reason may define its own extended details. This field is optional and the data returned is not guaranteed to conform to any schema except that defined by the reason type.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [message] A human-readable description of the status of this operation.
  /// [metadata] Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [reason] A machine-readable description of why this operation is in the "Failure" status. If this value is empty there is no information available. A Reason clarifies an HTTP status code but does not override it.
  StatusArgs({
    this.apiVersion,
    this.code,
    this.details,
    this.kind,
    this.message,
    this.metadata,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'code': ?code,
      'details': ?pulumi.Input.mapOptionalInputValue<StatusDetails, Map<String, dynamic>>(details, (value) => value.toMap()),
      'kind': ?kind,
      'message': ?message,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'reason': ?reason,
    };
  }

  factory StatusArgs.fromMap(Map<String, dynamic> map) {
    return StatusArgs(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion']! as String).input(),
      code: map['code'] == null ? null : (map['code']! as int).input(),
      details: map['details'] == null ? null : (StatusDetails.fromMap((map['details']! as Map).cast<String, dynamic>())).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      metadata: map['metadata'] == null ? null : (ListMeta.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      reason: map['reason'] == null ? null : (map['reason']! as String).input(),
    );
  }
}

