// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_waf_entity_url_cross_origin_requests_enforcement.dart';
import 'get_waf_entity_url_method_override.dart';

/// Result data returned by getWafEntityUrl.
class GetWafEntityUrlResult {
  final List<GetWafEntityUrlCrossOriginRequestsEnforcement>?
  crossOriginRequestsEnforcements;
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
      'crossOriginRequestsEnforcements': ?(() {
        final guardedValue = crossOriginRequestsEnforcements;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetWafEntityUrlCrossOriginRequestsEnforcement,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'description': ?description,
      'id': id,
      'json': json,
      'method': ?method,
      'methodOverrides': ?(() {
        final guardedValue = methodOverrides;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          GetWafEntityUrlMethodOverride,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'name': name,
      'performStaging': ?performStaging,
      'protocol': ?protocol,
      'signatureOverridesDisables': ?signatureOverridesDisables,
      'type': ?type,
    };
  }

  factory GetWafEntityUrlResult.fromMap(Map<String, dynamic> map) {
    return GetWafEntityUrlResult(
      crossOriginRequestsEnforcements: (() {
        final guardedValue = map['crossOriginRequestsEnforcements'];
        if (guardedValue == null) return null;
        return pulumi
            .Input.decodeList<GetWafEntityUrlCrossOriginRequestsEnforcement>(
          guardedValue,
          (value) => GetWafEntityUrlCrossOriginRequestsEnforcement.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      json: map['json'] as String,
      method: (() {
        final guardedValue = map['method'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      methodOverrides: (() {
        final guardedValue = map['methodOverrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetWafEntityUrlMethodOverride>(
          guardedValue,
          (value) => GetWafEntityUrlMethodOverride.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      name: map['name'] as String,
      performStaging: (() {
        final guardedValue = map['performStaging'];
        if (guardedValue == null) return null;
        return guardedValue as bool;
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      signatureOverridesDisables: (() {
        final guardedValue = map['signatureOverridesDisables'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<int>();
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
