// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetShareRecipientsResultResource {
  /// Share Recipient error message.
  final pulumi.Input<String> error;
  /// Share Resource identifier.
  final pulumi.Input<String> resourceId;
  /// Resource Version.
  final pulumi.Input<int> resourceVersion;
  /// Whether the error is terminal or will be continually retried.
  final pulumi.Input<bool> terminal;

  /// Creates a new [GetShareRecipientsResultResource].
  /// [error] Share Recipient error message.
  /// [resourceId] Share Resource identifier.
  /// [resourceVersion] Resource Version.
  /// [terminal] Whether the error is terminal or will be continually retried.
  const GetShareRecipientsResultResource({
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

  factory GetShareRecipientsResultResource.fromMap(Map<String, dynamic> map) {
    return GetShareRecipientsResultResource(
      error: pulumi.Input.fromValue(map['error'] as String),
      resourceId: pulumi.Input.fromValue(map['resourceId'] as String),
      resourceVersion: pulumi.Input.fromValue((map['resourceVersion'] as num).toInt()),
      terminal: pulumi.Input.fromValue(map['terminal'] as bool),
    );
  }
}
