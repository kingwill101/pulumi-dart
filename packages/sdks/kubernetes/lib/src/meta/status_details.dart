// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_cause.dart';

/// StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
class StatusDetails {
  /// The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
  final pulumi.Input<List<StatusCause>>? causes;
  /// The group attribute of the resource associated with the status StatusReason.
  final pulumi.Input<String>? group;
  /// The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
  final pulumi.Input<String>? name;
  /// If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
  final pulumi.Input<int>? retryAfterSeconds;
  /// UID of the resource. (when there is a single resource which can be described). More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
  final pulumi.Input<String>? uid;

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
      'causes': ?pulumi.Input.mapOptionalInputValue<List<StatusCause>, List<Map<String, dynamic>>>(causes, (value) => pulumi.Input.encodeList<StatusCause, Map<String, dynamic>>(value, (value) => value.toMap())),
      'group': ?group,
      'kind': ?kind,
      'name': ?name,
      'retryAfterSeconds': ?retryAfterSeconds,
      'uid': ?uid,
    };
  }

  factory StatusDetails.fromMap(Map<String, dynamic> map) {
    return StatusDetails(
      causes: (() { final guardedValue = map['causes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StatusCause>(guardedValue, (value) => StatusCause.fromMap((value as Map).cast<String, dynamic>()))); })(),
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryAfterSeconds: (() { final guardedValue = map['retryAfterSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

