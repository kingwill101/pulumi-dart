// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_sip_header_response.dart';

/// Properties of Custom SIP Headers.
class CustomSipHeadersPropertiesResponse {
  /// The Custom SIP Headers to apply to the calls which traverse the Communications Gateway
  final pulumi.Input<List<CustomSipHeaderResponse>>? headers;

  /// Creates a new [CustomSipHeadersPropertiesResponse].
  /// [headers] The Custom SIP Headers to apply to the calls which traverse the Communications Gateway
  CustomSipHeadersPropertiesResponse({
    this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<CustomSipHeaderResponse>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<CustomSipHeaderResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomSipHeadersPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return CustomSipHeadersPropertiesResponse(
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<CustomSipHeaderResponse>(map['headers']!, (value) => CustomSipHeaderResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

