// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'payload_file_response.dart';

/// A resource that represents the inline import job payload.
class InlinePayloadInfoResponse {
  /// The import job format.
  final pulumi.Input<String> format;

  /// List of payload files.
  final pulumi.Input<List<PayloadFileResponse>> payload;

  /// Creates a new [InlinePayloadInfoResponse].
  /// [format] The import job format.
  /// [payload] List of payload files.
  InlinePayloadInfoResponse({required this.format, required this.payload});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': format,
      'payload':
          pulumi.Input.mapInputValue<
            List<PayloadFileResponse>,
            List<Map<String, dynamic>>
          >(
            payload,
            (value) =>
                pulumi.Input.encodeList<
                  PayloadFileResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory InlinePayloadInfoResponse.fromMap(Map<String, dynamic> map) {
    return InlinePayloadInfoResponse(
      format: pulumi.Input.fromValue(map['format'] as String),
      payload: pulumi.Input.fromValue(
        pulumi.Input.decodeList<PayloadFileResponse>(
          map['payload']!,
          (value) => PayloadFileResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
