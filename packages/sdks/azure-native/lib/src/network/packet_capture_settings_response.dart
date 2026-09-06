// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage location for a packet capture session.
class PacketCaptureSettingsResponse {
  /// Number of file count. Default value of count is 10 and maximum number is 10000.
  final pulumi.Input<int?>? fileCount;
  /// Number of bytes captured per packet. Default value in bytes 104857600 (100MB) and maximum in bytes 4294967295 (4GB).
  final pulumi.Input<double?>? fileSizeInBytes;
  /// Maximum duration of the capture session in seconds is 604800s (7 days) for a file. Default value in second 86400s (1 day).
  final pulumi.Input<int?>? sessionTimeLimitInSeconds;

  /// Creates a new [PacketCaptureSettingsResponse].
  /// [fileCount] Number of file count. Default value of count is 10 and maximum number is 10000.
  /// [fileSizeInBytes] Number of bytes captured per packet. Default value in bytes 104857600 (100MB) and maximum in bytes 4294967295 (4GB).
  /// [sessionTimeLimitInSeconds] Maximum duration of the capture session in seconds is 604800s (7 days) for a file. Default value in second 86400s (1 day).
  PacketCaptureSettingsResponse({
    pulumi.Input<int?>? fileCount,
    pulumi.Input<double?>? fileSizeInBytes,
    pulumi.Input<int?>? sessionTimeLimitInSeconds,
  }) : fileCount = fileCount ?? pulumi.Input.fromValue(10), fileSizeInBytes = fileSizeInBytes ?? pulumi.Input.fromValue(1.048576e+08), sessionTimeLimitInSeconds = sessionTimeLimitInSeconds ?? pulumi.Input.fromValue(86400);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileCount': ?fileCount,
      'fileSizeInBytes': ?fileSizeInBytes,
      'sessionTimeLimitInSeconds': ?sessionTimeLimitInSeconds,
    };
  }

  factory PacketCaptureSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PacketCaptureSettingsResponse(
      fileCount: (() { final guardedValue = map['fileCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      fileSizeInBytes: (() { final guardedValue = map['fileSizeInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      sessionTimeLimitInSeconds: (() { final guardedValue = map['sessionTimeLimitInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
