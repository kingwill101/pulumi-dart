// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'inline_payload_info_format.dart';
import 'payload_file.dart';

/// A resource that represents the inline import job payload.
class InlinePayloadInfo {
  /// The import job format.
  final pulumi.Input<InlinePayloadInfoFormat>? format;
  /// List of payload files.
  final pulumi.Input<List<PayloadFile>>? payload;

  /// Creates a new [InlinePayloadInfo].
  /// [format] The import job format.
  /// [payload] List of payload files.
  const InlinePayloadInfo({
    this.format,
    this.payload,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?pulumi.Input.mapOptionalInputValue<InlinePayloadInfoFormat, String>(format, (value) => value.wireValue),
      'payload': ?pulumi.Input.mapOptionalInputValue<List<PayloadFile>, List<Map<String, dynamic>>>(payload, (value) => pulumi.Input.encodeList<PayloadFile, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InlinePayloadInfo.fromMap(Map<String, dynamic> map) {
    return InlinePayloadInfo(
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InlinePayloadInfoFormat.fromValue(guardedValue as String)); })(),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PayloadFile>(guardedValue, (value) => PayloadFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

