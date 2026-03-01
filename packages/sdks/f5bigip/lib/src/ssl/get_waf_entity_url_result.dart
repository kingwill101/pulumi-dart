// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_waf_entity_url_cross_origin_requests_enforcement.dart';
import 'get_waf_entity_url_method_override.dart';

/// Result data returned by getWafEntityUrl.
class GetWafEntityUrlResult {
  final List<GetWafEntityUrlCrossOriginRequestsEnforcement>? crossOriginRequestsEnforcements;
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Json string representing created WAF entity URL declaration in JSON format
  final String json;
  final String? method;
  final List<GetWafEntityUrlMethodOverride>? methodOverrides;
  final String name;
  final bool? performStaging;
  final String? protocol;
  final List<int>? signatureOverridesDisables;
  final String? type;

  /// Creates a new [GetWafEntityUrlResult].
  /// [crossOriginRequestsEnforcements] Optional.
  /// [description] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [json] Json string representing created WAF entity URL declaration in JSON format
  /// [method] Optional.
  /// [methodOverrides] Optional.
  /// [name] Required.
  /// [performStaging] Optional.
  /// [protocol] Optional.
  /// [signatureOverridesDisables] Optional.
  /// [type] Optional.
  GetWafEntityUrlResult({
    this.crossOriginRequestsEnforcements,
    this.description,
    required this.id,
    required this.json,
    this.method,
    this.methodOverrides,
    required this.name,
    this.performStaging,
    this.protocol,
    this.signatureOverridesDisables,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'crossOriginRequestsEnforcements': ?crossOriginRequestsEnforcements == null ? null : pulumi.Input.encodeList<GetWafEntityUrlCrossOriginRequestsEnforcement, Map<String, dynamic>>(crossOriginRequestsEnforcements!, (value) => value.toMap()),
      'description': ?description,
      'id': id,
      'json': json,
      'method': ?method,
      'methodOverrides': ?methodOverrides == null ? null : pulumi.Input.encodeList<GetWafEntityUrlMethodOverride, Map<String, dynamic>>(methodOverrides!, (value) => value.toMap()),
      'name': name,
      'performStaging': ?performStaging,
      'protocol': ?protocol,
      'signatureOverridesDisables': ?signatureOverridesDisables,
      'type': ?type,
    };
  }

  factory GetWafEntityUrlResult.fromMap(Map<String, dynamic> map) {
    return GetWafEntityUrlResult(
      crossOriginRequestsEnforcements: map['crossOriginRequestsEnforcements'] == null ? null : pulumi.Input.decodeList<GetWafEntityUrlCrossOriginRequestsEnforcement>(map['crossOriginRequestsEnforcements'], (value) => GetWafEntityUrlCrossOriginRequestsEnforcement.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] as String,
      json: map['json'] as String,
      method: map['method'] == null ? null : map['method'] as String,
      methodOverrides: map['methodOverrides'] == null ? null : pulumi.Input.decodeList<GetWafEntityUrlMethodOverride>(map['methodOverrides'], (value) => GetWafEntityUrlMethodOverride.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      performStaging: map['performStaging'] == null ? null : map['performStaging'] as bool,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      signatureOverridesDisables: map['signatureOverridesDisables'] == null ? null : (map['signatureOverridesDisables'] as List).cast<int>(),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

