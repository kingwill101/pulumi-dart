// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamingbufferResponse {
  /// A lower-bound estimate of the number of bytes currently in the streaming buffer.
  final pulumi.Input<String> estimatedBytes;
  /// A lower-bound estimate of the number of rows currently in the streaming buffer.
  final pulumi.Input<String> estimatedRows;
  /// Contains the timestamp of the oldest entry in the streaming buffer, in milliseconds since the epoch, if the streaming buffer is available.
  final pulumi.Input<String> oldestEntryTime;

  /// Creates a new [StreamingbufferResponse].
  /// [estimatedBytes] A lower-bound estimate of the number of bytes currently in the streaming buffer.
  /// [estimatedRows] A lower-bound estimate of the number of rows currently in the streaming buffer.
  /// [oldestEntryTime] Contains the timestamp of the oldest entry in the streaming buffer, in milliseconds since the epoch, if the streaming buffer is available.
  const StreamingbufferResponse({
    required this.estimatedBytes,
    required this.estimatedRows,
    required this.oldestEntryTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'estimatedBytes': estimatedBytes,
      'estimatedRows': estimatedRows,
      'oldestEntryTime': oldestEntryTime,
    };
  }

  factory StreamingbufferResponse.fromMap(Map<String, dynamic> map) {
    return StreamingbufferResponse(
      estimatedBytes: pulumi.Input.fromValue(map['estimatedBytes'] as String),
      estimatedRows: pulumi.Input.fromValue(map['estimatedRows'] as String),
      oldestEntryTime: pulumi.Input.fromValue(map['oldestEntryTime'] as String),
    );
  }
}

