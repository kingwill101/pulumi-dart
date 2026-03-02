// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_security_action_http_header.dart';

/// The message that should be set in the case of a Flag action.
class GoogleCloudApigeeV1SecurityActionFlag {
  /// Optional. A list of HTTP headers to be sent to the target in case of a FLAG SecurityAction. Limit 5 headers per SecurityAction. At least one is mandatory.
  final pulumi.Input<List<GoogleCloudApigeeV1SecurityActionHttpHeader>>? headers;

  /// Creates a new [GoogleCloudApigeeV1SecurityActionFlag].
  /// [headers] Optional. A list of HTTP headers to be sent to the target in case of a FLAG SecurityAction. Limit 5 headers per SecurityAction. At least one is mandatory.
  GoogleCloudApigeeV1SecurityActionFlag({
    this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudApigeeV1SecurityActionHttpHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1SecurityActionHttpHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudApigeeV1SecurityActionFlag.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1SecurityActionFlag(
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<GoogleCloudApigeeV1SecurityActionHttpHeader>(map['headers']!, (value) => GoogleCloudApigeeV1SecurityActionHttpHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

