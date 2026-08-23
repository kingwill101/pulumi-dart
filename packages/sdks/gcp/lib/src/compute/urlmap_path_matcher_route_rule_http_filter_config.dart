// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class URLMapPathMatcherRouteRuleHttpFilterConfig {
  /// The configuration needed to enable the networkservices.HttpFilter resource.
  /// The configuration must be YAML formatted and only contain fields defined in the protobuf identified in configTypeUrl
  final pulumi.Input<String>? config;
  /// The fully qualified versioned proto3 type url of the protobuf that the filter expects for its contextual settings,
  /// for example: type.googleapis.com/google.protobuf.Struct
  final pulumi.Input<String>? configTypeUrl;
  /// Name of the networkservices.HttpFilter resource this configuration belongs to.
  /// This name must be known to the xDS client. Example: envoy.wasm
  final pulumi.Input<String>? filterName;

  /// Creates a new [URLMapPathMatcherRouteRuleHttpFilterConfig].
  /// [config] The configuration needed to enable the networkservices.HttpFilter resource.
  /// [configTypeUrl] The fully qualified versioned proto3 type url of the protobuf that the filter expects for its contextual settings,
  /// [filterName] Name of the networkservices.HttpFilter resource this configuration belongs to.
  const URLMapPathMatcherRouteRuleHttpFilterConfig({
    this.config,
    this.configTypeUrl,
    this.filterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?config,
      'configTypeUrl': ?configTypeUrl,
      'filterName': ?filterName,
    };
  }

  factory URLMapPathMatcherRouteRuleHttpFilterConfig.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleHttpFilterConfig(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      configTypeUrl: (() { final guardedValue = map['configTypeUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filterName: (() { final guardedValue = map['filterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
