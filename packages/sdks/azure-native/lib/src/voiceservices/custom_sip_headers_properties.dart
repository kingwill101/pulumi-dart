// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_sip_header.dart';

/// Properties of Custom SIP Headers.
class CustomSipHeadersProperties {
  /// The Custom SIP Headers to apply to the calls which traverse the Communications Gateway
  final pulumi.Input<List<CustomSipHeader>>? headers;

  /// Creates a new [CustomSipHeadersProperties].
  /// [headers] The Custom SIP Headers to apply to the calls which traverse the Communications Gateway
  CustomSipHeadersProperties({
    this.headers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<CustomSipHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<CustomSipHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory CustomSipHeadersProperties.fromMap(Map<String, dynamic> map) {
    return CustomSipHeadersProperties(
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<CustomSipHeader>(map['headers']!, (value) => CustomSipHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

