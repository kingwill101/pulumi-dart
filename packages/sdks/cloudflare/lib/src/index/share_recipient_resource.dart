// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ShareRecipientResource {
  /// Share Recipient error message.
  final pulumi.Input<String?>? error;
  /// Share Resource identifier.
  final pulumi.Input<String?>? resourceId;
  /// Resource Version.
  final pulumi.Input<int?>? resourceVersion;
  /// Whether the error is terminal or will be continually retried.
  final pulumi.Input<bool?>? terminal;

  /// Creates a new [ShareRecipientResource].
  /// [error] Share Recipient error message.
  /// [resourceId] Share Resource identifier.
  /// [resourceVersion] Resource Version.
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
      resourceVersion: (() { final guardedValue = map['resourceVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      terminal: (() { final guardedValue = map['terminal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
