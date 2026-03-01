// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_cause.dart';

/// StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
class StatusDetails {
  /// The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
  final List<StatusCause>? causes;
  /// The group attribute of the resource associated with the status StatusReason.
  final String? group;
  /// The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
  final String? name;
  /// If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
  final int? retryAfterSeconds;
  /// UID of the resource. (when there is a single resource which can be described). More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
  final String? uid;

  /// Creates a new [StatusDetails].
  /// [causes] The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
  /// [group] The group attribute of the resource associated with the status StatusReason.
  /// [kind] The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [name] The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
  /// [retryAfterSeconds] If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
  /// [uid] UID of the resource. (when there is a single resource which can be described). More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
  StatusDetails({
    this.causes,
    this.group,
    this.kind,
    this.name,
    this.retryAfterSeconds,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'causes': ?causes == null ? null : pulumi.Input.encodeList<StatusCause, Map<String, dynamic>>(causes!, (value) => value.toMap()),
      'group': ?group,
      'kind': ?kind,
      'name': ?name,
      'retryAfterSeconds': ?retryAfterSeconds,
      'uid': ?uid,
    };
  }

  factory StatusDetails.fromMap(Map<String, dynamic> map) {
    return StatusDetails(
      causes: map['causes'] == null ? null : pulumi.Input.decodeList<StatusCause>(map['causes'], (value) => StatusCause.fromMap((value as Map).cast<String, dynamic>())),
      group: map['group'] == null ? null : map['group'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      retryAfterSeconds: map['retryAfterSeconds'] == null ? null : map['retryAfterSeconds'] as int,
      uid: map['uid'] == null ? null : map['uid'] as String,
    );
  }
}

