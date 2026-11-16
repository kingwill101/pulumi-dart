// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetShareRecipientResource {
  /// Error from the most recent attempt to apply the resource to the recipient. Empty string when no error has been recorded.
  final pulumi.Input<String> error;
  /// Identifier assigned by the service that owns the shared resource.
  final pulumi.Input<String> resourceId;
  /// Resource version applied to the recipient, if reconciliation has occurred.
  final pulumi.Input<int> resourceVersion;
  /// Whether the error is terminal or will be continually retried.
  final pulumi.Input<bool> terminal;

  /// Creates a new [GetShareRecipientResource].
  /// [error] Error from the most recent attempt to apply the resource to the recipient. Empty string when no error has been recorded.
  /// [resourceId] Identifier assigned by the service that owns the shared resource.
  /// [resourceVersion] Resource version applied to the recipient, if reconciliation has occurred.
  /// [terminal] Whether the error is terminal or will be continually retried.
  const GetShareRecipientResource({
    required this.error,
    required this.resourceId,
    required this.resourceVersion,
    required this.terminal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error,
      'resourceId': resourceId,
      'resourceVersion': resourceVersion,
      'terminal': terminal,
    };
  }

  factory GetShareRecipientResource.fromMap(Map<String, dynamic> map) {
    return GetShareRecipientResource(
      error: pulumi.Input.fromValue(map['error'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceVersion: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['resourceVersion'])),
      terminal: pulumi.Input.fromValue(map['terminal'] as bool),
    );
  }
}
