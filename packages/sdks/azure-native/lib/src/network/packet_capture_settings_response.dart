// ignore_for_file: unused_element, unnecessary_cast


/// The storage location for a packet capture session.
class PacketCaptureSettingsResponse {
  /// Number of file count. Default value of count is 10 and maximum number is 10000.
  final int? fileCount;
  /// Number of bytes captured per packet. Default value in bytes 104857600 (100MB) and maximum in bytes 4294967295 (4GB).
  final double? fileSizeInBytes;
  /// Maximum duration of the capture session in seconds is 604800s (7 days) for a file. Default value in second 86400s (1 day).
  final int? sessionTimeLimitInSeconds;

  /// Creates a new [PacketCaptureSettingsResponse].
  /// [fileCount] Number of file count. Default value of count is 10 and maximum number is 10000.
  /// [fileSizeInBytes] Number of bytes captured per packet. Default value in bytes 104857600 (100MB) and maximum in bytes 4294967295 (4GB).
  /// [sessionTimeLimitInSeconds] Maximum duration of the capture session in seconds is 604800s (7 days) for a file. Default value in second 86400s (1 day).
  PacketCaptureSettingsResponse({
    this.fileCount,
    this.fileSizeInBytes,
    this.sessionTimeLimitInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileCount': ?fileCount,
      'fileSizeInBytes': ?fileSizeInBytes,
      'sessionTimeLimitInSeconds': ?sessionTimeLimitInSeconds,
    };
  }

  factory PacketCaptureSettingsResponse.fromMap(Map<String, dynamic> map) {
    return PacketCaptureSettingsResponse(
      fileCount: map['fileCount'] == null ? null : map['fileCount'] as int,
      fileSizeInBytes: map['fileSizeInBytes'] == null ? null : map['fileSizeInBytes'] as double,
      sessionTimeLimitInSeconds: map['sessionTimeLimitInSeconds'] == null ? null : map['sessionTimeLimitInSeconds'] as int,
    );
  }
}

