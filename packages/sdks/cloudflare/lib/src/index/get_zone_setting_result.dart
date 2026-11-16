// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getZoneSetting.
class GetZoneSettingResult {
  /// For `id: 0rtt` or `id: advancedDdos` or `id: alwaysOnline` or `id: alwaysUseHttps` or `id: automaticHttpsRewrites` or `id: brotli` or `id: browserCacheTtl` or `id: browserCheck` or `id: cacheLevel` or `id: challengeTtl` or `id: chinaNetworkEnabled` or `id: contentConverter` or `id: ciphers` or `id: cnameFlattening` or `id: developmentMode` or `id: earlyHints` or `id: edgeCacheTtl` or `id: emailObfuscation` or `id: h2Prioritization` or `id: hotlinkProtection` or `id: http2` or `id: http3` or `id: imageResizing` or `id: ipGeolocation` or `id: ipv6` or `id: maxUpload` or `id: minTlsVersion` or `id: mirage` or `id: nel` or `id: opportunisticEncryption` or `id: opportunisticOnion` or `id: orangeToOrange` or `id: originErrorPagePassThru` or `id: polish` or `id: prefetchPreload` or `id: preRender` or `id: privacyPass` or `id: proxyReadTimeout` or `id: pseudoIpv4` or `id: redirectsForAiTraining` or `id: replaceInsecureJs` or `id: responseBuffering` or `id: rocketLoader` or `id: automaticPlatformOptimization` or `id: searchForAgents` or `id: securityHeader` or `id: securityLevel` or `id: serverSideExclude` or `id: sha1Support` or `id: sortQueryStringForCache` or `id: ssl` or `id: tls12Only` or `id: tls13` or `id: tlsClientAuth` or `id: transformations` or `id: transformationsAllowedOrigins` or `id: trueClientIpHeader` or `id: waf` or `id: webmcpEnabled` or `id: webmcpMcpUrl` or `id: webmcpPacks` or `id: webp` or `id: avif` or `id: websockets`: Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
  final bool? editable;
  /// For `id: sslRecommender`: ssl-recommender enrollment setting.
  final bool? enabled;
  /// Setting name
  final String? id;
  /// For `id: 0rtt` or `id: advancedDdos` or `id: alwaysOnline` or `id: alwaysUseHttps` or `id: automaticHttpsRewrites` or `id: brotli` or `id: browserCacheTtl` or `id: browserCheck` or `id: cacheLevel` or `id: challengeTtl` or `id: chinaNetworkEnabled` or `id: contentConverter` or `id: ciphers` or `id: cnameFlattening` or `id: developmentMode` or `id: earlyHints` or `id: edgeCacheTtl` or `id: emailObfuscation` or `id: h2Prioritization` or `id: hotlinkProtection` or `id: http2` or `id: http3` or `id: imageResizing` or `id: ipGeolocation` or `id: ipv6` or `id: maxUpload` or `id: minTlsVersion` or `id: mirage` or `id: nel` or `id: opportunisticEncryption` or `id: opportunisticOnion` or `id: orangeToOrange` or `id: originErrorPagePassThru` or `id: polish` or `id: prefetchPreload` or `id: preRender` or `id: privacyPass` or `id: proxyReadTimeout` or `id: pseudoIpv4` or `id: redirectsForAiTraining` or `id: replaceInsecureJs` or `id: responseBuffering` or `id: rocketLoader` or `id: automaticPlatformOptimization` or `id: searchForAgents` or `id: securityHeader` or `id: securityLevel` or `id: serverSideExclude` or `id: sha1Support` or `id: sortQueryStringForCache` or `id: ssl` or `id: tls12Only` or `id: tls13` or `id: tlsClientAuth` or `id: transformations` or `id: transformationsAllowedOrigins` or `id: trueClientIpHeader` or `id: waf` or `id: webmcpEnabled` or `id: webmcpMcpUrl` or `id: webmcpPacks` or `id: webp` or `id: avif` or `id: websockets`: last time this setting was modified.
  final String? modifiedOn;
  /// Setting name
  final String? settingId;
  final double? timeRemaining;
  final String? value;
  /// Identifier
  final String? zoneId;

  /// Creates a new [GetZoneSettingResult].
  /// [editable] For `id: 0rtt` or `id: advancedDdos` or `id: alwaysOnline` or `id: alwaysUseHttps` or `id: automaticHttpsRewrites` or `id: brotli` or `id: browserCacheTtl` or `id: browserCheck` or `id: cacheLevel` or `id: challengeTtl` or `id: chinaNetworkEnabled` or `id: contentConverter` or `id: ciphers` or `id: cnameFlattening` or `id: developmentMode` or `id: earlyHints` or `id: edgeCacheTtl` or `id: emailObfuscation` or `id: h2Prioritization` or `id: hotlinkProtection` or `id: http2` or `id: http3` or `id: imageResizing` or `id: ipGeolocation` or `id: ipv6` or `id: maxUpload` or `id: minTlsVersion` or `id: mirage` or `id: nel` or `id: opportunisticEncryption` or `id: opportunisticOnion` or `id: orangeToOrange` or `id: originErrorPagePassThru` or `id: polish` or `id: prefetchPreload` or `id: preRender` or `id: privacyPass` or `id: proxyReadTimeout` or `id: pseudoIpv4` or `id: redirectsForAiTraining` or `id: replaceInsecureJs` or `id: responseBuffering` or `id: rocketLoader` or `id: automaticPlatformOptimization` or `id: searchForAgents` or `id: securityHeader` or `id: securityLevel` or `id: serverSideExclude` or `id: sha1Support` or `id: sortQueryStringForCache` or `id: ssl` or `id: tls12Only` or `id: tls13` or `id: tlsClientAuth` or `id: transformations` or `id: transformationsAllowedOrigins` or `id: trueClientIpHeader` or `id: waf` or `id: webmcpEnabled` or `id: webmcpMcpUrl` or `id: webmcpPacks` or `id: webp` or `id: avif` or `id: websockets`: Whether or not this setting can be modified for this zone (based on your Cloudflare plan level).
  /// [enabled] For `id: sslRecommender`: ssl-recommender enrollment setting.
  /// [id] Setting name
  /// [modifiedOn] For `id: 0rtt` or `id: advancedDdos` or `id: alwaysOnline` or `id: alwaysUseHttps` or `id: automaticHttpsRewrites` or `id: brotli` or `id: browserCacheTtl` or `id: browserCheck` or `id: cacheLevel` or `id: challengeTtl` or `id: chinaNetworkEnabled` or `id: contentConverter` or `id: ciphers` or `id: cnameFlattening` or `id: developmentMode` or `id: earlyHints` or `id: edgeCacheTtl` or `id: emailObfuscation` or `id: h2Prioritization` or `id: hotlinkProtection` or `id: http2` or `id: http3` or `id: imageResizing` or `id: ipGeolocation` or `id: ipv6` or `id: maxUpload` or `id: minTlsVersion` or `id: mirage` or `id: nel` or `id: opportunisticEncryption` or `id: opportunisticOnion` or `id: orangeToOrange` or `id: originErrorPagePassThru` or `id: polish` or `id: prefetchPreload` or `id: preRender` or `id: privacyPass` or `id: proxyReadTimeout` or `id: pseudoIpv4` or `id: redirectsForAiTraining` or `id: replaceInsecureJs` or `id: responseBuffering` or `id: rocketLoader` or `id: automaticPlatformOptimization` or `id: searchForAgents` or `id: securityHeader` or `id: securityLevel` or `id: serverSideExclude` or `id: sha1Support` or `id: sortQueryStringForCache` or `id: ssl` or `id: tls12Only` or `id: tls13` or `id: tlsClientAuth` or `id: transformations` or `id: transformationsAllowedOrigins` or `id: trueClientIpHeader` or `id: waf` or `id: webmcpEnabled` or `id: webmcpMcpUrl` or `id: webmcpPacks` or `id: webp` or `id: avif` or `id: websockets`: last time this setting was modified.
  /// [settingId] Setting name
  /// [timeRemaining] Optional.
  /// [value] Optional.
  /// [zoneId] Identifier
  const GetZoneSettingResult({
    this.editable,
    this.enabled,
    this.id,
    this.modifiedOn,
    this.settingId,
    this.timeRemaining,
    this.value,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'editable': ?editable,
      'enabled': ?enabled,
      'id': ?id,
      'modifiedOn': ?modifiedOn,
      'settingId': ?settingId,
      'timeRemaining': ?timeRemaining,
      'value': ?value,
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneSettingResult.fromMap(Map<String, dynamic> map) {
    return GetZoneSettingResult(
      editable: (() { final guardedValue = map['editable']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      settingId: (() { final guardedValue = map['settingId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timeRemaining: (() { final guardedValue = map['timeRemaining']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
