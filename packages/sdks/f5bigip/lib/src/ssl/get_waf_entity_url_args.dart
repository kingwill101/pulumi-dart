// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_waf_entity_url_cross_origin_requests_enforcement.dart';
import 'get_waf_entity_url_method_override.dart';

/// {@template pulumi_ssl_get_waf_entity_url_get_waf_entity_url_args_doc}
/// Arguments for getWafEntityUrl.
/// {@endtemplate}
/// {@macro pulumi_ssl_get_waf_entity_url_get_waf_entity_url_args_doc}
class GetWafEntityUrlArgs {
  /// A list of options that enables your web-application to share data with a website hosted on a
  /// different domain.
  final pulumi.Input<List<GetWafEntityUrlCrossOriginRequestsEnforcement>>?
  crossOriginRequestsEnforcements;

  /// A description of the URL.
  final pulumi.Input<String>? description;

  /// Select a Method for the URL to create an API endpoint. Default is : *.
  final pulumi.Input<String>? method;

  /// A list of methods that are allowed or disallowed for a specific URL.
  final pulumi.Input<List<GetWafEntityUrlMethodOverride>>? methodOverrides;

  /// WAF entity URL name.
  final pulumi.Input<String> name;

  /// If true then any violation associated to the respective URL will not be enforced, and the request will not be considered illegal.
  final pulumi.Input<bool>? performStaging;

  /// Specifies whether the protocol for the URL is 'http' or 'https'. Default is: http.
  final pulumi.Input<String>? protocol;

  /// List of Attack Signature Ids which are disabled for this particular URL.
  final pulumi.Input<List<int>>? signatureOverridesDisables;

  /// Specifies whether the parameter is an 'explicit' or a 'wildcard' attribute. Default is: wildcard.
  final pulumi.Input<String>? type;

  /// Creates a new [GetWafEntityUrlArgs].
  /// [crossOriginRequestsEnforcements] A list of options that enables your web-application to share data with a website hosted on a
  /// [description] A description of the URL.
  /// [method] Select a Method for the URL to create an API endpoint. Default is : *.
  /// [methodOverrides] A list of methods that are allowed or disallowed for a specific URL.
  /// [name] WAF entity URL name.
  /// [performStaging] If true then any violation associated to the respective URL will not be enforced, and the request will not be considered illegal.
  /// [protocol] Specifies whether the protocol for the URL is 'http' or 'https'. Default is: http.
  /// [signatureOverridesDisables] List of Attack Signature Ids which are disabled for this particular URL.
  /// [type] Specifies whether the parameter is an 'explicit' or a 'wildcard' attribute. Default is: wildcard.
  GetWafEntityUrlArgs({
    this.crossOriginRequestsEnforcements,
    this.description,
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
      'crossOriginRequestsEnforcements':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetWafEntityUrlCrossOriginRequestsEnforcement>,
            List<Map<String, dynamic>>
          >(
            crossOriginRequestsEnforcements,
            (value) =>
                pulumi.Input.encodeList<
                  GetWafEntityUrlCrossOriginRequestsEnforcement,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'method': ?method,
      'methodOverrides':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetWafEntityUrlMethodOverride>,
            List<Map<String, dynamic>>
          >(
            methodOverrides,
            (value) =>
                pulumi.Input.encodeList<
                  GetWafEntityUrlMethodOverride,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'performStaging': ?performStaging,
      'protocol': ?protocol,
      'signatureOverridesDisables': ?signatureOverridesDisables,
      'type': ?type,
    };
  }

  factory GetWafEntityUrlArgs.fromMap(Map<String, dynamic> map) {
    return GetWafEntityUrlArgs(
      crossOriginRequestsEnforcements: (() {
        final guardedValue = map['crossOriginRequestsEnforcements'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<GetWafEntityUrlCrossOriginRequestsEnforcement>(
            guardedValue,
            (value) => GetWafEntityUrlCrossOriginRequestsEnforcement.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      method: (() {
        final guardedValue = map['method'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      methodOverrides: (() {
        final guardedValue = map['methodOverrides'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetWafEntityUrlMethodOverride>(
            guardedValue,
            (value) => GetWafEntityUrlMethodOverride.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      performStaging: (() {
        final guardedValue = map['performStaging'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      signatureOverridesDisables: (() {
        final guardedValue = map['signatureOverridesDisables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<int>());
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
