// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'page_rule_actions_cache_key_fields.dart';
import 'page_rule_actions_forwarding_url.dart';

class PageRuleActions {
  final pulumi.Input<bool?>? alwaysUseHttps;
  final pulumi.Input<String?>? automaticHttpsRewrites;
  final pulumi.Input<int?>? browserCacheTtl;
  final pulumi.Input<String?>? browserCheck;
  final pulumi.Input<String?>? bypassCacheOnCookie;
  final pulumi.Input<String?>? cacheByDeviceType;
  final pulumi.Input<String?>? cacheDeceptionArmor;
  final pulumi.Input<PageRuleActionsCacheKeyFields?>? cacheKeyFields;
  final pulumi.Input<String?>? cacheLevel;
  final pulumi.Input<String?>? cacheOnCookie;
  final pulumi.Input<Map<String, String>?>? cacheTtlByStatus;
  final pulumi.Input<bool?>? disableApps;
  final pulumi.Input<bool?>? disablePerformance;
  final pulumi.Input<bool?>? disableSecurity;
  final pulumi.Input<bool?>? disableZaraz;
  final pulumi.Input<int?>? edgeCacheTtl;
  final pulumi.Input<String?>? emailObfuscation;
  final pulumi.Input<String?>? explicitCacheControl;
  final pulumi.Input<PageRuleActionsForwardingUrl?>? forwardingUrl;
  final pulumi.Input<String?>? hostHeaderOverride;
  final pulumi.Input<String?>? ipGeolocation;
  final pulumi.Input<String?>? mirage;
  final pulumi.Input<String?>? opportunisticEncryption;
  final pulumi.Input<String?>? originErrorPagePassThru;
  final pulumi.Input<String?>? polish;
  final pulumi.Input<String?>? resolveOverride;
  final pulumi.Input<String?>? respectStrongEtag;
  final pulumi.Input<String?>? responseBuffering;
  final pulumi.Input<String?>? rocketLoader;
  final pulumi.Input<String?>? securityLevel;
  final pulumi.Input<String?>? sortQueryStringForCache;
  final pulumi.Input<String?>? ssl;
  final pulumi.Input<String?>? trueClientIpHeader;
  final pulumi.Input<String?>? waf;

  /// Creates a new [PageRuleActions].
  /// [alwaysUseHttps] Optional.
  /// [automaticHttpsRewrites] Optional.
  /// [browserCacheTtl] Optional.
  /// [browserCheck] Optional.
  /// [bypassCacheOnCookie] Optional.
  /// [cacheByDeviceType] Optional.
  /// [cacheDeceptionArmor] Optional.
  /// [cacheKeyFields] Optional.
  /// [cacheLevel] Optional.
  /// [cacheOnCookie] Optional.
  /// [cacheTtlByStatus] Optional.
  /// [disableApps] Optional.
  /// [disablePerformance] Optional.
  /// [disableSecurity] Optional.
  /// [disableZaraz] Optional.
  /// [edgeCacheTtl] Optional.
  /// [emailObfuscation] Optional.
  /// [explicitCacheControl] Optional.
  /// [forwardingUrl] Optional.
  /// [hostHeaderOverride] Optional.
  /// [ipGeolocation] Optional.
  /// [mirage] Optional.
  /// [opportunisticEncryption] Optional.
  /// [originErrorPagePassThru] Optional.
  /// [polish] Optional.
  /// [resolveOverride] Optional.
  /// [respectStrongEtag] Optional.
  /// [responseBuffering] Optional.
  /// [rocketLoader] Optional.
  /// [securityLevel] Optional.
  /// [sortQueryStringForCache] Optional.
  /// [ssl] Optional.
  /// [trueClientIpHeader] Optional.
  /// [waf] Optional.
  const PageRuleActions({
    this.alwaysUseHttps,
    this.automaticHttpsRewrites,
    this.browserCacheTtl,
    this.browserCheck,
    this.bypassCacheOnCookie,
    this.cacheByDeviceType,
    this.cacheDeceptionArmor,
    this.cacheKeyFields,
    this.cacheLevel,
    this.cacheOnCookie,
    this.cacheTtlByStatus,
    this.disableApps,
    this.disablePerformance,
    this.disableSecurity,
    this.disableZaraz,
    this.edgeCacheTtl,
    this.emailObfuscation,
    this.explicitCacheControl,
    this.forwardingUrl,
    this.hostHeaderOverride,
    this.ipGeolocation,
    this.mirage,
    this.opportunisticEncryption,
    this.originErrorPagePassThru,
    this.polish,
    this.resolveOverride,
    this.respectStrongEtag,
    this.responseBuffering,
    this.rocketLoader,
    this.securityLevel,
    this.sortQueryStringForCache,
    this.ssl,
    this.trueClientIpHeader,
    this.waf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysUseHttps': ?alwaysUseHttps,
      'automaticHttpsRewrites': ?automaticHttpsRewrites,
      'browserCacheTtl': ?browserCacheTtl,
      'browserCheck': ?browserCheck,
      'bypassCacheOnCookie': ?bypassCacheOnCookie,
      'cacheByDeviceType': ?cacheByDeviceType,
      'cacheDeceptionArmor': ?cacheDeceptionArmor,
      'cacheKeyFields': ?pulumi.Input.mapOptionalInputValue<PageRuleActionsCacheKeyFields, Map<String, dynamic>>(cacheKeyFields, (value) => value.toMap()),
      'cacheLevel': ?cacheLevel,
      'cacheOnCookie': ?cacheOnCookie,
      'cacheTtlByStatus': ?cacheTtlByStatus,
      'disableApps': ?disableApps,
      'disablePerformance': ?disablePerformance,
      'disableSecurity': ?disableSecurity,
      'disableZaraz': ?disableZaraz,
      'edgeCacheTtl': ?edgeCacheTtl,
      'emailObfuscation': ?emailObfuscation,
      'explicitCacheControl': ?explicitCacheControl,
      'forwardingUrl': ?pulumi.Input.mapOptionalInputValue<PageRuleActionsForwardingUrl, Map<String, dynamic>>(forwardingUrl, (value) => value.toMap()),
      'hostHeaderOverride': ?hostHeaderOverride,
      'ipGeolocation': ?ipGeolocation,
      'mirage': ?mirage,
      'opportunisticEncryption': ?opportunisticEncryption,
      'originErrorPagePassThru': ?originErrorPagePassThru,
      'polish': ?polish,
      'resolveOverride': ?resolveOverride,
      'respectStrongEtag': ?respectStrongEtag,
      'responseBuffering': ?responseBuffering,
      'rocketLoader': ?rocketLoader,
      'securityLevel': ?securityLevel,
      'sortQueryStringForCache': ?sortQueryStringForCache,
      'ssl': ?ssl,
      'trueClientIpHeader': ?trueClientIpHeader,
      'waf': ?waf,
    };
  }

  factory PageRuleActions.fromMap(Map<String, dynamic> map) {
    return PageRuleActions(
      alwaysUseHttps: (() { final guardedValue = map['alwaysUseHttps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      automaticHttpsRewrites: (() { final guardedValue = map['automaticHttpsRewrites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      browserCacheTtl: (() { final guardedValue = map['browserCacheTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      browserCheck: (() { final guardedValue = map['browserCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bypassCacheOnCookie: (() { final guardedValue = map['bypassCacheOnCookie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheByDeviceType: (() { final guardedValue = map['cacheByDeviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheDeceptionArmor: (() { final guardedValue = map['cacheDeceptionArmor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheKeyFields: (() { final guardedValue = map['cacheKeyFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PageRuleActionsCacheKeyFields.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheLevel: (() { final guardedValue = map['cacheLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheOnCookie: (() { final guardedValue = map['cacheOnCookie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheTtlByStatus: (() { final guardedValue = map['cacheTtlByStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      disableApps: (() { final guardedValue = map['disableApps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disablePerformance: (() { final guardedValue = map['disablePerformance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableSecurity: (() { final guardedValue = map['disableSecurity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableZaraz: (() { final guardedValue = map['disableZaraz']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      edgeCacheTtl: (() { final guardedValue = map['edgeCacheTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      emailObfuscation: (() { final guardedValue = map['emailObfuscation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      explicitCacheControl: (() { final guardedValue = map['explicitCacheControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardingUrl: (() { final guardedValue = map['forwardingUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PageRuleActionsForwardingUrl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hostHeaderOverride: (() { final guardedValue = map['hostHeaderOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipGeolocation: (() { final guardedValue = map['ipGeolocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mirage: (() { final guardedValue = map['mirage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      opportunisticEncryption: (() { final guardedValue = map['opportunisticEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originErrorPagePassThru: (() { final guardedValue = map['originErrorPagePassThru']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      polish: (() { final guardedValue = map['polish']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resolveOverride: (() { final guardedValue = map['resolveOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      respectStrongEtag: (() { final guardedValue = map['respectStrongEtag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseBuffering: (() { final guardedValue = map['responseBuffering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rocketLoader: (() { final guardedValue = map['rocketLoader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityLevel: (() { final guardedValue = map['securityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sortQueryStringForCache: (() { final guardedValue = map['sortQueryStringForCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ssl: (() { final guardedValue = map['ssl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trueClientIpHeader: (() { final guardedValue = map['trueClientIpHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      waf: (() { final guardedValue = map['waf']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
