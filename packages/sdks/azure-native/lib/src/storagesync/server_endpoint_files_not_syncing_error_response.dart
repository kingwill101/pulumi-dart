// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Files not syncing error object
class ServerEndpointFilesNotSyncingErrorResponse {
  /// Error code (HResult)
  final pulumi.Input<int> errorCode;
  /// Count of persistent files not syncing with the specified error code
  final pulumi.Input<double> persistentCount;
  /// Count of transient files not syncing with the specified error code
  final pulumi.Input<double> transientCount;

  /// Creates a new [ServerEndpointFilesNotSyncingErrorResponse].
  /// [errorCode] Error code (HResult)
  /// [persistentCount] Count of persistent files not syncing with the specified error code
  /// [transientCount] Count of transient files not syncing with the specified error code
  const ServerEndpointFilesNotSyncingErrorResponse({
    required this.errorCode,
    required this.persistentCount,
    required this.transientCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errorCode': errorCode,
      'persistentCount': persistentCount,
      'transientCount': transientCount,
    };
  }

  factory ServerEndpointFilesNotSyncingErrorResponse.fromMap(Map<String, dynamic> map) {
    return ServerEndpointFilesNotSyncingErrorResponse(
      errorCode: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['errorCode'])),
      persistentCount: pulumi.Input.fromValue((map['persistentCount'] as num).toDouble()),
      transientCount: pulumi.Input.fromValue((map['transientCount'] as num).toDouble()),
    );
  }
}
