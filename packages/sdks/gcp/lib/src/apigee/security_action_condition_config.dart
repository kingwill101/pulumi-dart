// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityActionConditionConfig {
  /// A list of accessTokens. Limit 1000 per action.
  final pulumi.Input<List<String>?>? accessTokens;
  /// A list of API keys. Limit 1000 per action.
  final pulumi.Input<List<String>?>? apiKeys;
  /// A list of API Products. Limit 1000 per action.
  final pulumi.Input<List<String>?>? apiProducts;
  /// A list of ASN numbers to act on, e.g. 23. https://en.wikipedia.org/wiki/Autonomous_system_(Internet)
  /// This uses int64 instead of uint32 because of https://linter.aip.dev/141/forbidden-types.
  final pulumi.Input<List<String>?>? asns;
  /// A list of Bot Reasons. Current options: Flooder, Brute Guessor, Static Content Scraper,
  /// OAuth Abuser, Robot Abuser, TorListRule, Advanced Anomaly Detection, Advanced API Scraper,
  /// Search Engine Crawlers, Public Clouds, Public Cloud AWS, Public Cloud Azure, and Public Cloud Google.
  final pulumi.Input<List<String>?>? botReasons;
  /// A list of developer apps. Limit 1000 per action.
  final pulumi.Input<List<String>?>? developerApps;
  /// A list of developers. Limit 1000 per action.
  final pulumi.Input<List<String>?>? developers;
  /// Act only on particular HTTP methods. E.g. A read-only API can block POST/PUT/DELETE methods.
  /// Accepted values are: GET, HEAD, POST, PUT, DELETE, CONNECT, OPTIONS, TRACE and PATCH.
  final pulumi.Input<List<String>?>? httpMethods;
  /// A list of IP addresses. This could be either IPv4 or IPv6. Limited to 100 per action.
  final pulumi.Input<List<String>?>? ipAddressRanges;
  /// A list of countries/region codes to act on, e.g. US. This follows https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2.
  final pulumi.Input<List<String>?>? regionCodes;
  /// A list of user agents to deny. We look for exact matches. Limit 50 per action.
  final pulumi.Input<List<String>?>? userAgents;

  /// Creates a new [SecurityActionConditionConfig].
  /// [accessTokens] A list of accessTokens. Limit 1000 per action.
  /// [apiKeys] A list of API keys. Limit 1000 per action.
  /// [apiProducts] A list of API Products. Limit 1000 per action.
  /// [asns] A list of ASN numbers to act on, e.g. 23. https://en.wikipedia.org/wiki/Autonomous_system_(Internet)
  /// [botReasons] A list of Bot Reasons. Current options: Flooder, Brute Guessor, Static Content Scraper,
  /// [developerApps] A list of developer apps. Limit 1000 per action.
  /// [developers] A list of developers. Limit 1000 per action.
  /// [httpMethods] Act only on particular HTTP methods. E.g. A read-only API can block POST/PUT/DELETE methods.
  /// [ipAddressRanges] A list of IP addresses. This could be either IPv4 or IPv6. Limited to 100 per action.
  /// [regionCodes] A list of countries/region codes to act on, e.g. US. This follows https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2.
  /// [userAgents] A list of user agents to deny. We look for exact matches. Limit 50 per action.
  const SecurityActionConditionConfig({
    this.accessTokens,
    this.apiKeys,
    this.apiProducts,
    this.asns,
    this.botReasons,
    this.developerApps,
    this.developers,
    this.httpMethods,
    this.ipAddressRanges,
    this.regionCodes,
    this.userAgents,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokens': ?accessTokens,
      'apiKeys': ?apiKeys,
      'apiProducts': ?apiProducts,
      'asns': ?asns,
      'botReasons': ?botReasons,
      'developerApps': ?developerApps,
      'developers': ?developers,
      'httpMethods': ?httpMethods,
      'ipAddressRanges': ?ipAddressRanges,
      'regionCodes': ?regionCodes,
      'userAgents': ?userAgents,
    };
  }

  factory SecurityActionConditionConfig.fromMap(Map<String, dynamic> map) {
    return SecurityActionConditionConfig(
      accessTokens: (() { final guardedValue = map['accessTokens']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      apiKeys: (() { final guardedValue = map['apiKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      apiProducts: (() { final guardedValue = map['apiProducts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      asns: (() { final guardedValue = map['asns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      botReasons: (() { final guardedValue = map['botReasons']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      developerApps: (() { final guardedValue = map['developerApps']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      developers: (() { final guardedValue = map['developers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      httpMethods: (() { final guardedValue = map['httpMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipAddressRanges: (() { final guardedValue = map['ipAddressRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      regionCodes: (() { final guardedValue = map['regionCodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      userAgents: (() { final guardedValue = map['userAgents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
