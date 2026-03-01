// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_rule.dart';

/// Defines the HTTP configuration for an API service. It contains a list of HttpRule, each specifying the mapping of an RPC method to one or more HTTP REST API methods.
class Http {
  /// When set to true, URL path parameters will be fully URI-decoded except in cases of single segment matches in reserved expansion, where "%2F" will be left encoded. The default behavior is to not decode RFC 6570 reserved characters in multi segment matches.
  final bool? fullyDecodeReservedExpansion;
  /// A list of HTTP configuration rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  final List<HttpRule>? rules;

  /// Creates a new [Http].
  /// [fullyDecodeReservedExpansion] When set to true, URL path parameters will be fully URI-decoded except in cases of single segment matches in reserved expansion, where "%2F" will be left encoded. The default behavior is to not decode RFC 6570 reserved characters in multi segment matches.
  /// [rules] A list of HTTP configuration rules that apply to individual API methods. **NOTE:** All service configuration rules follow "last one wins" order.
  Http({
    this.fullyDecodeReservedExpansion,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullyDecodeReservedExpansion': ?fullyDecodeReservedExpansion,
      'rules': ?rules == null ? null : pulumi.Input.encodeList<HttpRule, Map<String, dynamic>>(rules!, (value) => value.toMap()),
    };
  }

  factory Http.fromMap(Map<String, dynamic> map) {
    return Http(
      fullyDecodeReservedExpansion: map['fullyDecodeReservedExpansion'] == null ? null : map['fullyDecodeReservedExpansion'] as bool,
      rules: map['rules'] == null ? null : pulumi.Input.decodeList<HttpRule>(map['rules'], (value) => HttpRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

