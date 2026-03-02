// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'status_cause_patch.dart';

/// StatusDetails is a set of additional properties that MAY be set by the server to provide additional information about a response. The Reason field of a Status object defines what attributes will be set. Clients must ignore fields that do not match the defined type of each attribute, and should assume that any attribute may be empty, invalid, or under defined.
class StatusDetailsPatch {
  /// The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
  final pulumi.Input<List<StatusCausePatch>>? causes;
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

  /// Creates a new [StatusDetailsPatch].
  /// [causes] The Causes array includes more details associated with the StatusReason failure. Not all StatusReasons may provide detailed causes.
  /// [group] The group attribute of the resource associated with the status StatusReason.
  /// [kind] The kind attribute of the resource associated with the status StatusReason. On some operations may differ from the requested resource Kind. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [name] The name attribute of the resource associated with the status StatusReason (when there is a single name which can be described).
  /// [retryAfterSeconds] If specified, the time in seconds before the operation should be retried. Some errors may indicate the client must take an alternate action - for those errors this field may indicate how long to wait before taking the alternate action.
  /// [uid] UID of the resource. (when there is a single resource which can be described). More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
  StatusDetailsPatch({
    this.causes,
    this.group,
    this.kind,
    this.name,
    this.retryAfterSeconds,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'causes': ?pulumi.Input.mapOptionalInputValue<List<StatusCausePatch>, List<Map<String, dynamic>>>(causes, (value) => pulumi.Input.encodeList<StatusCausePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'group': ?group,
      'kind': ?kind,
      'name': ?name,
      'retryAfterSeconds': ?retryAfterSeconds,
      'uid': ?uid,
    };
  }

  factory StatusDetailsPatch.fromMap(Map<String, dynamic> map) {
    return StatusDetailsPatch(
      causes: map['causes'] == null ? null : (pulumi.Input.decodeList<StatusCausePatch>(map['causes']!, (value) => StatusCausePatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      group: map['group'] == null ? null : (map['group']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      retryAfterSeconds: map['retryAfterSeconds'] == null ? null : (map['retryAfterSeconds']! as int).input(),
      uid: map['uid'] == null ? null : (map['uid']! as String).input(),
    );
  }
}

