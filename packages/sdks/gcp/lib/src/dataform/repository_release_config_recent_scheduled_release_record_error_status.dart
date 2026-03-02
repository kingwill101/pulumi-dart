// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus {
  /// (Output)
  /// The status code, which should be an enum value of google.rpc.Code.
  final pulumi.Input<int>? code;
  /// (Output)
  /// A developer-facing error message, which should be in English. Any user-facing error message should be localized and sent in the google.rpc.Status.details field, or localized by the client.
  final pulumi.Input<String>? message;

  /// Creates a new [RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus].
  /// [code] (Output)
  /// [message] (Output)
  RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus({
    this.code,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'message': ?message,
    };
  }

  factory RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus.fromMap(Map<String, dynamic> map) {
    return RepositoryReleaseConfigRecentScheduledReleaseRecordErrorStatus(
      code: map['code'] == null ? null : (map['code']! as int).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
    );
  }
}

