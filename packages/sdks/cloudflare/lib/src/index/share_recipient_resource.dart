// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ShareRecipientResource {
  /// Error from the most recent attempt to apply the resource to the recipient. Empty string when no error has been recorded.
  final pulumi.Input<String?>? error;
  /// Identifier assigned by the service that owns the shared resource.
  final pulumi.Input<String?>? resourceId;
  /// Resource version applied to the recipient, if reconciliation has occurred.
  final pulumi.Input<int?>? resourceVersion;
  /// Whether the error is terminal or will be continually retried.
  final pulumi.Input<bool?>? terminal;

  /// Creates a new [ShareRecipientResource].
  /// [error] Error from the most recent attempt to apply the resource to the recipient. Empty string when no error has been recorded.
  /// [resourceId] Identifier assigned by the service that owns the shared resource.
  /// [resourceVersion] Resource version applied to the recipient, if reconciliation has occurred.
  /// [terminal] Whether the error is terminal or will be continually retried.
  const ShareRecipientResource({
    this.error,
    this.resourceId,
    this.resourceVersion,
    this.terminal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?error,
      'resourceId': ?resourceId,
      'resourceVersion': ?resourceVersion,
      'terminal': ?terminal,
    };
  }

  factory ShareRecipientResource.fromMap(Map<String, dynamic> map) {
    return ShareRecipientResource(
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceVersion: (() { final guardedValue = map['resourceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      terminal: (() { final guardedValue = map['terminal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
