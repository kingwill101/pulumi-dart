// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_security_action_http_header_response.dart';

/// The message that should be set in the case of a Flag action.
class GoogleCloudApigeeV1SecurityActionFlagResponse {
  /// Optional. A list of HTTP headers to be sent to the target in case of a FLAG SecurityAction. Limit 5 headers per SecurityAction. At least one is mandatory.
  final pulumi.Input<List<GoogleCloudApigeeV1SecurityActionHttpHeaderResponse>>
  headers;

  /// Creates a new [GoogleCloudApigeeV1SecurityActionFlagResponse].
  /// [headers] Optional. A list of HTTP headers to be sent to the target in case of a FLAG SecurityAction. Limit 5 headers per SecurityAction. At least one is mandatory.
  GoogleCloudApigeeV1SecurityActionFlagResponse({required this.headers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers':
          pulumi.Input.mapInputValue<
            List<GoogleCloudApigeeV1SecurityActionHttpHeaderResponse>,
            List<Map<String, dynamic>>
          >(
            headers,
            (value) =>
                pulumi.Input.encodeList<
                  GoogleCloudApigeeV1SecurityActionHttpHeaderResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GoogleCloudApigeeV1SecurityActionFlagResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1SecurityActionFlagResponse(
      headers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GoogleCloudApigeeV1SecurityActionHttpHeaderResponse
        >(
          map['headers']!,
          (value) =>
              GoogleCloudApigeeV1SecurityActionHttpHeaderResponse.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
    );
  }
}
