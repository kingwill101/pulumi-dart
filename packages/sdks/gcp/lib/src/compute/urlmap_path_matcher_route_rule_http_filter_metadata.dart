// ignore_for_file: unused_element, unnecessary_cast


class URLMapPathMatcherRouteRuleHttpFilterMetadata {
  /// The configuration needed to enable the networkservices.HttpFilter resource.
  /// The configuration must be YAML formatted and only contain fields defined in the protobuf identified in configTypeUrl
  final String? config;
  /// The fully qualified versioned proto3 type url of the protobuf that the filter expects for its contextual settings,
  /// for example: type.googleapis.com/google.protobuf.Struct
  final String? configTypeUrl;
  /// Name of the networkservices.HttpFilter resource this configuration belongs to.
  /// This name must be known to the xDS client. Example: envoy.wasm
  final String? filterName;

  /// Creates a new [URLMapPathMatcherRouteRuleHttpFilterMetadata].
  /// [config] The configuration needed to enable the networkservices.HttpFilter resource.
  /// [configTypeUrl] The fully qualified versioned proto3 type url of the protobuf that the filter expects for its contextual settings,
  /// [filterName] Name of the networkservices.HttpFilter resource this configuration belongs to.
  URLMapPathMatcherRouteRuleHttpFilterMetadata({
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

  factory URLMapPathMatcherRouteRuleHttpFilterMetadata.fromMap(Map<String, dynamic> map) {
    return URLMapPathMatcherRouteRuleHttpFilterMetadata(
      config: map['config'] == null ? null : map['config'] as String,
      configTypeUrl: map['configTypeUrl'] == null ? null : map['configTypeUrl'] as String,
      filterName: map['filterName'] == null ? null : map['filterName'] as String,
    );
  }
}

