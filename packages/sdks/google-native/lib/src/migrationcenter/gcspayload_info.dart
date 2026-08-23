// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcspayload_info_format.dart';

/// A resource that represents a payload hosted on Google Cloud Storage.
class GCSPayloadInfo {
  /// The import job format.
  final pulumi.Input<GCSPayloadInfoFormat>? format;
  /// The payload path in Google Cloud Storage.
  final pulumi.Input<String>? path;

  /// Creates a new [GCSPayloadInfo].
  /// [format] The import job format.
  /// [path] The payload path in Google Cloud Storage.
  const GCSPayloadInfo({
    this.format,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?pulumi.Input.mapOptionalInputValue<GCSPayloadInfoFormat, String>(format, (value) => value.wireValue),
      'path': ?path,
    };
  }

  factory GCSPayloadInfo.fromMap(Map<String, dynamic> map) {
    return GCSPayloadInfo(
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GCSPayloadInfoFormat.fromValue(guardedValue as String)); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
