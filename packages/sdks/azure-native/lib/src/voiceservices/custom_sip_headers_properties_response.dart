// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_sip_header_response.dart';

/// Properties of Custom SIP Headers.
class CustomSipHeadersPropertiesResponse {
  /// The Custom SIP Headers to apply to the calls which traverse the Communications Gateway
  final List<CustomSipHeaderResponse>? headers;

  /// Creates a new [CustomSipHeadersPropertiesResponse].
  /// [headers] The Custom SIP Headers to apply to the calls which traverse the Communications Gateway
  CustomSipHeadersPropertiesResponse({
    this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?headers == null ? null : pulumi.Input.encodeList<CustomSipHeaderResponse, Map<String, dynamic>>(headers!, (value) => value.toMap()),
    };
  }

  factory CustomSipHeadersPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CustomSipHeadersPropertiesResponse(
      headers: map['headers'] == null ? null : pulumi.Input.decodeList<CustomSipHeaderResponse>(map['headers'], (value) => CustomSipHeaderResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

