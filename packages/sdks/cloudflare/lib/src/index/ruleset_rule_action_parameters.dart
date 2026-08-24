// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ruleset_rule_action_parameters_algorithm.dart';
import 'ruleset_rule_action_parameters_autominify.dart';
import 'ruleset_rule_action_parameters_browser_ttl.dart';
import 'ruleset_rule_action_parameters_cache_key.dart';
import 'ruleset_rule_action_parameters_cache_reserve.dart';
import 'ruleset_rule_action_parameters_cookie_field.dart';
import 'ruleset_rule_action_parameters_edge_ttl.dart';
import 'ruleset_rule_action_parameters_from_list.dart';
import 'ruleset_rule_action_parameters_from_value.dart';
import 'ruleset_rule_action_parameters_headers.dart';
import 'ruleset_rule_action_parameters_immutable.dart';
import 'ruleset_rule_action_parameters_matched_data.dart';
import 'ruleset_rule_action_parameters_max_age.dart';
import 'ruleset_rule_action_parameters_must_revalidate.dart';
import 'ruleset_rule_action_parameters_must_understand.dart';
import 'ruleset_rule_action_parameters_no_cache.dart';
import 'ruleset_rule_action_parameters_no_store.dart';
import 'ruleset_rule_action_parameters_no_transform.dart';
import 'ruleset_rule_action_parameters_origin.dart';
import 'ruleset_rule_action_parameters_overrides.dart';
import 'ruleset_rule_action_parameters_private.dart';
import 'ruleset_rule_action_parameters_proxy_revalidate.dart';
import 'ruleset_rule_action_parameters_public.dart';
import 'ruleset_rule_action_parameters_raw_response_field.dart';
import 'ruleset_rule_action_parameters_request_field.dart';
import 'ruleset_rule_action_parameters_response.dart';
import 'ruleset_rule_action_parameters_response_field.dart';
import 'ruleset_rule_action_parameters_serve_stale.dart';
import 'ruleset_rule_action_parameters_smaxage.dart';
import 'ruleset_rule_action_parameters_sni.dart';
import 'ruleset_rule_action_parameters_stale_if_error.dart';
import 'ruleset_rule_action_parameters_stale_while_revalidate.dart';
import 'ruleset_rule_action_parameters_transformed_request_field.dart';
import 'ruleset_rule_action_parameters_uri.dart';
import 'ruleset_rule_action_parameters_vary.dart';

class RulesetRuleActionParameters {
  /// A list of additional ports that caching should be enabled on.
  final pulumi.Input<List<int>?>? additionalCacheablePorts;
  /// Custom order for compression algorithms.
  final pulumi.Input<List<RulesetRuleActionParametersAlgorithm>?>? algorithms;
  /// The name of a custom asset to serve as the response.
  final pulumi.Input<String?>? assetName;
  /// Whether to enable Automatic HTTPS Rewrites.
  final pulumi.Input<bool?>? automaticHttpsRewrites;
  /// Which file extensions to minify automatically.
  final pulumi.Input<RulesetRuleActionParametersAutominify?>? autominify;
  /// Whether to enable Browser Integrity Check (BIC).
  final pulumi.Input<bool?>? bic;
  /// How long client browsers should cache the response. Cloudflare cache purge will not purge content cached on client browsers, so high browser TTLs may lead to stale content.
  final pulumi.Input<RulesetRuleActionParametersBrowserTtl?>? browserTtl;
  /// Whether the request's response from the origin is eligible for caching. Caching itself will still depend on the cache control header and your other caching configurations.
  final pulumi.Input<bool?>? cache;
  /// Which components of the request are included in or excluded from the cache key Cloudflare uses to store the response in cache.
  final pulumi.Input<RulesetRuleActionParametersCacheKey?>? cacheKey;
  /// Settings to determine whether the request's response from origin is eligible for Cache Reserve (requires a Cache Reserve add-on plan).
  final pulumi.Input<RulesetRuleActionParametersCacheReserve?>? cacheReserve;
  /// The response content.
  final pulumi.Input<String?>? content;
  /// Whether to enable content conversion (e.g., HTML to Markdown).
  final pulumi.Input<bool?>? contentConverter;
  /// The content type header to set with the error response.
  /// Available values: "application/json", "text/html", "text/plain", "text/xml".
  final pulumi.Input<String?>? contentType;
  /// The cookie fields to log.
  final pulumi.Input<List<RulesetRuleActionParametersCookieField>?>? cookieFields;
  /// Whether to disable Cloudflare Apps.
  final pulumi.Input<bool?>? disableApps;
  /// Whether to disable Real User Monitoring (RUM).
  final pulumi.Input<bool?>? disableRum;
  /// Whether to disable Zaraz.
  final pulumi.Input<bool?>? disableZaraz;
  /// How long the Cloudflare edge network should cache the response.
  final pulumi.Input<RulesetRuleActionParametersEdgeTtl?>? edgeTtl;
  /// Whether to enable Email Obfuscation.
  final pulumi.Input<bool?>? emailObfuscation;
  /// An expression to generate cache tags for set*cache*tags action.
  final pulumi.Input<String?>? expression;
  /// Whether to enable Cloudflare Fonts.
  final pulumi.Input<bool?>? fonts;
  /// A redirect based on a bulk list lookup.
  final pulumi.Input<RulesetRuleActionParametersFromList?>? fromList;
  /// A redirect based on the request properties.
  final pulumi.Input<RulesetRuleActionParametersFromValue?>? fromValue;
  /// A map of headers to rewrite.
  final pulumi.Input<Map<String, RulesetRuleActionParametersHeaders>?>? headers;
  /// A value to rewrite the HTTP host header to.
  final pulumi.Input<String?>? hostHeader;
  /// Whether to enable Hotlink Protection.
  final pulumi.Input<bool?>? hotlinkProtection;
  /// The ID of the ruleset to execute.
  final pulumi.Input<String?>? id;
  /// Set the immutable cache control directive.
  final pulumi.Input<RulesetRuleActionParametersImmutable?>? immutable;
  /// A delta to change the score by, which can be either positive or negative.
  final pulumi.Input<int?>? increment;
  /// The configuration to use for matched data logging.
  final pulumi.Input<RulesetRuleActionParametersMatchedData?>? matchedData;
  /// Set the max-age cache control directive.
  final pulumi.Input<RulesetRuleActionParametersMaxAge?>? maxAge;
  /// Whether to enable Mirage.
  final pulumi.Input<bool?>? mirage;
  /// Set the must-revalidate cache control directive.
  final pulumi.Input<RulesetRuleActionParametersMustRevalidate?>? mustRevalidate;
  /// Set the must-understand cache control directive.
  final pulumi.Input<RulesetRuleActionParametersMustUnderstand?>? mustUnderstand;
  /// Set the no-cache cache control directive.
  final pulumi.Input<RulesetRuleActionParametersNoCache?>? noCache;
  /// Set the no-store cache control directive.
  final pulumi.Input<RulesetRuleActionParametersNoStore?>? noStore;
  /// Set the no-transform cache control directive.
  final pulumi.Input<RulesetRuleActionParametersNoTransform?>? noTransform;
  /// The operation to perform for set*cache*tags action.
  /// Available values: "set", "add", "remove".
  final pulumi.Input<String?>? operation;
  /// Whether to enable Opportunistic Encryption.
  final pulumi.Input<bool?>? opportunisticEncryption;
  /// An origin to route to.
  final pulumi.Input<RulesetRuleActionParametersOrigin?>? origin;
  /// Whether Cloudflare will aim to strictly adhere to RFC 7234.
  final pulumi.Input<bool?>? originCacheControl;
  /// Whether to generate Cloudflare error pages for issues from the origin server.
  final pulumi.Input<bool?>? originErrorPagePassthru;
  /// A set of overrides to apply to the target ruleset.
  final pulumi.Input<RulesetRuleActionParametersOverrides?>? overrides;
  /// A list of phases to skip the execution of. This option is incompatible with the rulesets option.
  /// Available values: "ddos*l4", "ddos*l7", "http*config*settings", "http*custom*errors", "http*log*custom*fields", "http*ratelimit", "http*request*cache*settings", "http*request*dynamic*redirect", "http*request*firewall*custom", "http*request*firewall*managed", "http*request*late*transform", "http*request*origin", "http*request*redirect", "http*request*sanitize", "http*request*sbfm", "http*request*transform", "http*response*cache*settings", "http*response*compression", "http*response*firewall*managed", "http*response*headers*transform", "magic*transit", "magic*transit*ids*managed", "magic*transit*managed", "magic*transit*ratelimit".
  final pulumi.Input<List<String>?>? phases;
  /// The Polish level to configure.
  /// Available values: "off", "lossless", "lossy", "webp".
  final pulumi.Input<String?>? polish;
  /// Set the private cache control directive.
  final pulumi.Input<RulesetRuleActionParametersPrivate?>? private;
  /// A list of legacy security products to skip the execution of.
  /// Available values: "bic", "hot", "rateLimit", "securityLevel", "uaBlock", "waf", "zoneLockdown".
  final pulumi.Input<List<String>?>? products;
  /// Set the proxy-revalidate cache control directive.
  final pulumi.Input<RulesetRuleActionParametersProxyRevalidate?>? proxyRevalidate;
  /// Set the public cache control directive.
  final pulumi.Input<RulesetRuleActionParametersPublic?>? public;
  /// The raw response fields to log.
  final pulumi.Input<List<RulesetRuleActionParametersRawResponseField>?>? rawResponseFields;
  /// A timeout value between two successive read operations to use for your origin server. Historically, the timeout value between two read options from Cloudflare to an origin server is 100 seconds. If you are attempting to reduce HTTP 524 errors because of timeouts from an origin server, try increasing this timeout value.
  final pulumi.Input<int?>? readTimeout;
  /// Whether to redirect verified AI training crawlers to canonical URLs.
  final pulumi.Input<bool?>? redirectsForAiTraining;
  /// The request body buffering mode to configure.
  /// Available values: "none", "standard", "full".
  final pulumi.Input<String?>? requestBodyBuffering;
  /// The raw request fields to log.
  final pulumi.Input<List<RulesetRuleActionParametersRequestField>?>? requestFields;
  /// Whether Cloudflare should respect strong ETag (entity tag) headers. If false, Cloudflare converts strong ETag headers to weak ETag headers.
  final pulumi.Input<bool?>? respectStrongEtags;
  /// The response to show when the block is applied.
  final pulumi.Input<RulesetRuleActionParametersResponse?>? response;
  /// The response body buffering mode to configure.
  /// Available values: "none", "standard".
  final pulumi.Input<String?>? responseBodyBuffering;
  /// The transformed response fields to log.
  final pulumi.Input<List<RulesetRuleActionParametersResponseField>?>? responseFields;
  /// Whether to enable Rocket Loader.
  final pulumi.Input<bool?>? rocketLoader;
  /// A mapping of ruleset IDs to a list of rule IDs in that ruleset to skip the execution of. This option is incompatible with the ruleset option.
  final pulumi.Input<Map<String, List<String>>?>? rules;
  /// A ruleset to skip the execution of. This option is incompatible with the rulesets option.
  /// Available values: "current".
  final pulumi.Input<String?>? ruleset;
  /// A list of ruleset IDs to skip the execution of. This option is incompatible with the ruleset and phases options.
  final pulumi.Input<List<String>?>? rulesets;
  /// Set the s-maxage cache control directive.
  final pulumi.Input<RulesetRuleActionParametersSMaxage?>? sMaxage;
  /// The Security Level to configure.
  /// Available values: "off", "essentially*off", "low", "medium", "high", "under*attack".
  final pulumi.Input<String?>? securityLevel;
  /// When to serve stale content from cache.
  final pulumi.Input<RulesetRuleActionParametersServeStale?>? serveStale;
  /// Whether to enable Server-Side Excludes.
  final pulumi.Input<bool?>? serverSideExcludes;
  /// A Server Name Indication (SNI) override.
  final pulumi.Input<RulesetRuleActionParametersSni?>? sni;
  /// The SSL level to configure.
  /// Available values: "off", "flexible", "full", "strict", "originPull".
  final pulumi.Input<String?>? ssl;
  /// Set the stale-if-error cache control directive.
  final pulumi.Input<RulesetRuleActionParametersStaleIfError?>? staleIfError;
  /// Set the stale-while-revalidate cache control directive.
  final pulumi.Input<RulesetRuleActionParametersStaleWhileRevalidate?>? staleWhileRevalidate;
  /// The status code to use for the error.
  final pulumi.Input<int?>? statusCode;
  /// Whether to strip the ETag header from the response.
  final pulumi.Input<bool?>? stripEtags;
  /// Whether to strip the Last-Modified header from the response.
  final pulumi.Input<bool?>? stripLastModified;
  /// Whether to strip the Set-Cookie header from the response.
  final pulumi.Input<bool?>? stripSetCookie;
  /// Whether to enable Signed Exchanges (SXG).
  final pulumi.Input<bool?>? sxg;
  /// The transformed request fields to log.
  final pulumi.Input<List<RulesetRuleActionParametersTransformedRequestField>?>? transformedRequestFields;
  /// A URI rewrite.
  final pulumi.Input<RulesetRuleActionParametersUri?>? uri;
  /// The cache tag values for set*cache*tags action.
  final pulumi.Input<List<String>?>? values;
  /// Controls how cached responses vary based on request headers. `default` is required and applies to any Vary response header that does not have a per-header override.
  final pulumi.Input<RulesetRuleActionParametersVary?>? vary;

  /// Creates a new [RulesetRuleActionParameters].
  /// [additionalCacheablePorts] A list of additional ports that caching should be enabled on.
  /// [algorithms] Custom order for compression algorithms.
  /// [assetName] The name of a custom asset to serve as the response.
  /// [automaticHttpsRewrites] Whether to enable Automatic HTTPS Rewrites.
  /// [autominify] Which file extensions to minify automatically.
  /// [bic] Whether to enable Browser Integrity Check (BIC).
  /// [browserTtl] How long client browsers should cache the response. Cloudflare cache purge will not purge content cached on client browsers, so high browser TTLs may lead to stale content.
  /// [cache] Whether the request's response from the origin is eligible for caching. Caching itself will still depend on the cache control header and your other caching configurations.
  /// [cacheKey] Which components of the request are included in or excluded from the cache key Cloudflare uses to store the response in cache.
  /// [cacheReserve] Settings to determine whether the request's response from origin is eligible for Cache Reserve (requires a Cache Reserve add-on plan).
  /// [content] The response content.
  /// [contentConverter] Whether to enable content conversion (e.g., HTML to Markdown).
  /// [contentType] The content type header to set with the error response.
  /// [cookieFields] The cookie fields to log.
  /// [disableApps] Whether to disable Cloudflare Apps.
  /// [disableRum] Whether to disable Real User Monitoring (RUM).
  /// [disableZaraz] Whether to disable Zaraz.
  /// [edgeTtl] How long the Cloudflare edge network should cache the response.
  /// [emailObfuscation] Whether to enable Email Obfuscation.
  /// [expression] An expression to generate cache tags for set*cache*tags action.
  /// [fonts] Whether to enable Cloudflare Fonts.
  /// [fromList] A redirect based on a bulk list lookup.
  /// [fromValue] A redirect based on the request properties.
  /// [headers] A map of headers to rewrite.
  /// [hostHeader] A value to rewrite the HTTP host header to.
  /// [hotlinkProtection] Whether to enable Hotlink Protection.
  /// [id] The ID of the ruleset to execute.
  /// [immutable] Set the immutable cache control directive.
  /// [increment] A delta to change the score by, which can be either positive or negative.
  /// [matchedData] The configuration to use for matched data logging.
  /// [maxAge] Set the max-age cache control directive.
  /// [mirage] Whether to enable Mirage.
  /// [mustRevalidate] Set the must-revalidate cache control directive.
  /// [mustUnderstand] Set the must-understand cache control directive.
  /// [noCache] Set the no-cache cache control directive.
  /// [noStore] Set the no-store cache control directive.
  /// [noTransform] Set the no-transform cache control directive.
  /// [operation] The operation to perform for set*cache*tags action.
  /// [opportunisticEncryption] Whether to enable Opportunistic Encryption.
  /// [origin] An origin to route to.
  /// [originCacheControl] Whether Cloudflare will aim to strictly adhere to RFC 7234.
  /// [originErrorPagePassthru] Whether to generate Cloudflare error pages for issues from the origin server.
  /// [overrides] A set of overrides to apply to the target ruleset.
  /// [phases] A list of phases to skip the execution of. This option is incompatible with the rulesets option.
  /// [polish] The Polish level to configure.
  /// [private] Set the private cache control directive.
  /// [products] A list of legacy security products to skip the execution of.
  /// [proxyRevalidate] Set the proxy-revalidate cache control directive.
  /// [public] Set the public cache control directive.
  /// [rawResponseFields] The raw response fields to log.
  /// [readTimeout] A timeout value between two successive read operations to use for your origin server. Historically, the timeout value between two read options from Cloudflare to an origin server is 100 seconds. If you are attempting to reduce HTTP 524 errors because of timeouts from an origin server, try increasing this timeout value.
  /// [redirectsForAiTraining] Whether to redirect verified AI training crawlers to canonical URLs.
  /// [requestBodyBuffering] The request body buffering mode to configure.
  /// [requestFields] The raw request fields to log.
  /// [respectStrongEtags] Whether Cloudflare should respect strong ETag (entity tag) headers. If false, Cloudflare converts strong ETag headers to weak ETag headers.
  /// [response] The response to show when the block is applied.
  /// [responseBodyBuffering] The response body buffering mode to configure.
  /// [responseFields] The transformed response fields to log.
  /// [rocketLoader] Whether to enable Rocket Loader.
  /// [rules] A mapping of ruleset IDs to a list of rule IDs in that ruleset to skip the execution of. This option is incompatible with the ruleset option.
  /// [ruleset] A ruleset to skip the execution of. This option is incompatible with the rulesets option.
  /// [rulesets] A list of ruleset IDs to skip the execution of. This option is incompatible with the ruleset and phases options.
  /// [sMaxage] Set the s-maxage cache control directive.
  /// [securityLevel] The Security Level to configure.
  /// [serveStale] When to serve stale content from cache.
  /// [serverSideExcludes] Whether to enable Server-Side Excludes.
  /// [sni] A Server Name Indication (SNI) override.
  /// [ssl] The SSL level to configure.
  /// [staleIfError] Set the stale-if-error cache control directive.
  /// [staleWhileRevalidate] Set the stale-while-revalidate cache control directive.
  /// [statusCode] The status code to use for the error.
  /// [stripEtags] Whether to strip the ETag header from the response.
  /// [stripLastModified] Whether to strip the Last-Modified header from the response.
  /// [stripSetCookie] Whether to strip the Set-Cookie header from the response.
  /// [sxg] Whether to enable Signed Exchanges (SXG).
  /// [transformedRequestFields] The transformed request fields to log.
  /// [uri] A URI rewrite.
  /// [values] The cache tag values for set*cache*tags action.
  /// [vary] Controls how cached responses vary based on request headers. `default` is required and applies to any Vary response header that does not have a per-header override.
  const RulesetRuleActionParameters({
    this.additionalCacheablePorts,
    this.algorithms,
    this.assetName,
    this.automaticHttpsRewrites,
    this.autominify,
    this.bic,
    this.browserTtl,
    this.cache,
    this.cacheKey,
    this.cacheReserve,
    this.content,
    this.contentConverter,
    this.contentType,
    this.cookieFields,
    this.disableApps,
    this.disableRum,
    this.disableZaraz,
    this.edgeTtl,
    this.emailObfuscation,
    this.expression,
    this.fonts,
    this.fromList,
    this.fromValue,
    this.headers,
    this.hostHeader,
    this.hotlinkProtection,
    this.id,
    this.immutable,
    this.increment,
    this.matchedData,
    this.maxAge,
    this.mirage,
    this.mustRevalidate,
    this.mustUnderstand,
    this.noCache,
    this.noStore,
    this.noTransform,
    this.operation,
    this.opportunisticEncryption,
    this.origin,
    this.originCacheControl,
    this.originErrorPagePassthru,
    this.overrides,
    this.phases,
    this.polish,
    this.private,
    this.products,
    this.proxyRevalidate,
    this.public,
    this.rawResponseFields,
    this.readTimeout,
    this.redirectsForAiTraining,
    this.requestBodyBuffering,
    this.requestFields,
    this.respectStrongEtags,
    this.response,
    this.responseBodyBuffering,
    this.responseFields,
    this.rocketLoader,
    this.rules,
    this.ruleset,
    this.rulesets,
    this.sMaxage,
    this.securityLevel,
    this.serveStale,
    this.serverSideExcludes,
    this.sni,
    this.ssl,
    this.staleIfError,
    this.staleWhileRevalidate,
    this.statusCode,
    this.stripEtags,
    this.stripLastModified,
    this.stripSetCookie,
    this.sxg,
    this.transformedRequestFields,
    this.uri,
    this.values,
    this.vary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCacheablePorts': ?additionalCacheablePorts,
      'algorithms': ?pulumi.Input.mapOptionalInputValue<List<RulesetRuleActionParametersAlgorithm>, List<Map<String, dynamic>>>(algorithms, (value) => pulumi.Input.encodeList<RulesetRuleActionParametersAlgorithm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'assetName': ?assetName,
      'automaticHttpsRewrites': ?automaticHttpsRewrites,
      'autominify': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersAutominify, Map<String, dynamic>>(autominify, (value) => value.toMap()),
      'bic': ?bic,
      'browserTtl': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersBrowserTtl, Map<String, dynamic>>(browserTtl, (value) => value.toMap()),
      'cache': ?cache,
      'cacheKey': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersCacheKey, Map<String, dynamic>>(cacheKey, (value) => value.toMap()),
      'cacheReserve': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersCacheReserve, Map<String, dynamic>>(cacheReserve, (value) => value.toMap()),
      'content': ?content,
      'contentConverter': ?contentConverter,
      'contentType': ?contentType,
      'cookieFields': ?pulumi.Input.mapOptionalInputValue<List<RulesetRuleActionParametersCookieField>, List<Map<String, dynamic>>>(cookieFields, (value) => pulumi.Input.encodeList<RulesetRuleActionParametersCookieField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disableApps': ?disableApps,
      'disableRum': ?disableRum,
      'disableZaraz': ?disableZaraz,
      'edgeTtl': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersEdgeTtl, Map<String, dynamic>>(edgeTtl, (value) => value.toMap()),
      'emailObfuscation': ?emailObfuscation,
      'expression': ?expression,
      'fonts': ?fonts,
      'fromList': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersFromList, Map<String, dynamic>>(fromList, (value) => value.toMap()),
      'fromValue': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersFromValue, Map<String, dynamic>>(fromValue, (value) => value.toMap()),
      'headers': ?pulumi.Input.mapOptionalInputValue<Map<String, RulesetRuleActionParametersHeaders>, Map<String, Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeMapValues<RulesetRuleActionParametersHeaders, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostHeader': ?hostHeader,
      'hotlinkProtection': ?hotlinkProtection,
      'id': ?id,
      'immutable': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersImmutable, Map<String, dynamic>>(immutable, (value) => value.toMap()),
      'increment': ?increment,
      'matchedData': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersMatchedData, Map<String, dynamic>>(matchedData, (value) => value.toMap()),
      'maxAge': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersMaxAge, Map<String, dynamic>>(maxAge, (value) => value.toMap()),
      'mirage': ?mirage,
      'mustRevalidate': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersMustRevalidate, Map<String, dynamic>>(mustRevalidate, (value) => value.toMap()),
      'mustUnderstand': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersMustUnderstand, Map<String, dynamic>>(mustUnderstand, (value) => value.toMap()),
      'noCache': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersNoCache, Map<String, dynamic>>(noCache, (value) => value.toMap()),
      'noStore': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersNoStore, Map<String, dynamic>>(noStore, (value) => value.toMap()),
      'noTransform': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersNoTransform, Map<String, dynamic>>(noTransform, (value) => value.toMap()),
      'operation': ?operation,
      'opportunisticEncryption': ?opportunisticEncryption,
      'origin': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersOrigin, Map<String, dynamic>>(origin, (value) => value.toMap()),
      'originCacheControl': ?originCacheControl,
      'originErrorPagePassthru': ?originErrorPagePassthru,
      'overrides': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersOverrides, Map<String, dynamic>>(overrides, (value) => value.toMap()),
      'phases': ?phases,
      'polish': ?polish,
      'private': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersPrivate, Map<String, dynamic>>(private, (value) => value.toMap()),
      'products': ?products,
      'proxyRevalidate': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersProxyRevalidate, Map<String, dynamic>>(proxyRevalidate, (value) => value.toMap()),
      'public': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersPublic, Map<String, dynamic>>(public, (value) => value.toMap()),
      'rawResponseFields': ?pulumi.Input.mapOptionalInputValue<List<RulesetRuleActionParametersRawResponseField>, List<Map<String, dynamic>>>(rawResponseFields, (value) => pulumi.Input.encodeList<RulesetRuleActionParametersRawResponseField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readTimeout': ?readTimeout,
      'redirectsForAiTraining': ?redirectsForAiTraining,
      'requestBodyBuffering': ?requestBodyBuffering,
      'requestFields': ?pulumi.Input.mapOptionalInputValue<List<RulesetRuleActionParametersRequestField>, List<Map<String, dynamic>>>(requestFields, (value) => pulumi.Input.encodeList<RulesetRuleActionParametersRequestField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'respectStrongEtags': ?respectStrongEtags,
      'response': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersResponse, Map<String, dynamic>>(response, (value) => value.toMap()),
      'responseBodyBuffering': ?responseBodyBuffering,
      'responseFields': ?pulumi.Input.mapOptionalInputValue<List<RulesetRuleActionParametersResponseField>, List<Map<String, dynamic>>>(responseFields, (value) => pulumi.Input.encodeList<RulesetRuleActionParametersResponseField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rocketLoader': ?rocketLoader,
      'rules': ?rules,
      'ruleset': ?ruleset,
      'rulesets': ?rulesets,
      'sMaxage': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersSMaxage, Map<String, dynamic>>(sMaxage, (value) => value.toMap()),
      'securityLevel': ?securityLevel,
      'serveStale': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersServeStale, Map<String, dynamic>>(serveStale, (value) => value.toMap()),
      'serverSideExcludes': ?serverSideExcludes,
      'sni': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersSni, Map<String, dynamic>>(sni, (value) => value.toMap()),
      'ssl': ?ssl,
      'staleIfError': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersStaleIfError, Map<String, dynamic>>(staleIfError, (value) => value.toMap()),
      'staleWhileRevalidate': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersStaleWhileRevalidate, Map<String, dynamic>>(staleWhileRevalidate, (value) => value.toMap()),
      'statusCode': ?statusCode,
      'stripEtags': ?stripEtags,
      'stripLastModified': ?stripLastModified,
      'stripSetCookie': ?stripSetCookie,
      'sxg': ?sxg,
      'transformedRequestFields': ?pulumi.Input.mapOptionalInputValue<List<RulesetRuleActionParametersTransformedRequestField>, List<Map<String, dynamic>>>(transformedRequestFields, (value) => pulumi.Input.encodeList<RulesetRuleActionParametersTransformedRequestField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uri': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersUri, Map<String, dynamic>>(uri, (value) => value.toMap()),
      'values': ?values,
      'vary': ?pulumi.Input.mapOptionalInputValue<RulesetRuleActionParametersVary, Map<String, dynamic>>(vary, (value) => value.toMap()),
    };
  }

  factory RulesetRuleActionParameters.fromMap(Map<String, dynamic> map) {
    return RulesetRuleActionParameters(
      additionalCacheablePorts: (() { final guardedValue = map['additionalCacheablePorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      algorithms: (() { final guardedValue = map['algorithms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RulesetRuleActionParametersAlgorithm>(guardedValue, (value) => RulesetRuleActionParametersAlgorithm.fromMap((value as Map).cast<String, dynamic>()))); })(),
      assetName: (() { final guardedValue = map['assetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      automaticHttpsRewrites: (() { final guardedValue = map['automaticHttpsRewrites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autominify: (() { final guardedValue = map['autominify']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersAutominify.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      bic: (() { final guardedValue = map['bic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      browserTtl: (() { final guardedValue = map['browserTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersBrowserTtl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cache: (() { final guardedValue = map['cache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cacheKey: (() { final guardedValue = map['cacheKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersCacheKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      cacheReserve: (() { final guardedValue = map['cacheReserve']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersCacheReserve.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentConverter: (() { final guardedValue = map['contentConverter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      contentType: (() { final guardedValue = map['contentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cookieFields: (() { final guardedValue = map['cookieFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RulesetRuleActionParametersCookieField>(guardedValue, (value) => RulesetRuleActionParametersCookieField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      disableApps: (() { final guardedValue = map['disableApps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableRum: (() { final guardedValue = map['disableRum']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      disableZaraz: (() { final guardedValue = map['disableZaraz']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      edgeTtl: (() { final guardedValue = map['edgeTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersEdgeTtl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      emailObfuscation: (() { final guardedValue = map['emailObfuscation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fonts: (() { final guardedValue = map['fonts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fromList: (() { final guardedValue = map['fromList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersFromList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fromValue: (() { final guardedValue = map['fromValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersFromValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<RulesetRuleActionParametersHeaders>(guardedValue, (value) => RulesetRuleActionParametersHeaders.fromMap((value as Map).cast<String, dynamic>()))); })(),
      hostHeader: (() { final guardedValue = map['hostHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hotlinkProtection: (() { final guardedValue = map['hotlinkProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      immutable: (() { final guardedValue = map['immutable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersImmutable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      increment: (() { final guardedValue = map['increment']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      matchedData: (() { final guardedValue = map['matchedData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersMatchedData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxAge: (() { final guardedValue = map['maxAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersMaxAge.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mirage: (() { final guardedValue = map['mirage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mustRevalidate: (() { final guardedValue = map['mustRevalidate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersMustRevalidate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mustUnderstand: (() { final guardedValue = map['mustUnderstand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersMustUnderstand.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      noCache: (() { final guardedValue = map['noCache']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersNoCache.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      noStore: (() { final guardedValue = map['noStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersNoStore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      noTransform: (() { final guardedValue = map['noTransform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersNoTransform.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operation: (() { final guardedValue = map['operation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      opportunisticEncryption: (() { final guardedValue = map['opportunisticEncryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      origin: (() { final guardedValue = map['origin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersOrigin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      originCacheControl: (() { final guardedValue = map['originCacheControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      originErrorPagePassthru: (() { final guardedValue = map['originErrorPagePassthru']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      overrides: (() { final guardedValue = map['overrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersOverrides.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      phases: (() { final guardedValue = map['phases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      polish: (() { final guardedValue = map['polish']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      private: (() { final guardedValue = map['private']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersPrivate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      products: (() { final guardedValue = map['products']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      proxyRevalidate: (() { final guardedValue = map['proxyRevalidate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersProxyRevalidate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      public: (() { final guardedValue = map['public']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersPublic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rawResponseFields: (() { final guardedValue = map['rawResponseFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RulesetRuleActionParametersRawResponseField>(guardedValue, (value) => RulesetRuleActionParametersRawResponseField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      readTimeout: (() { final guardedValue = map['readTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      redirectsForAiTraining: (() { final guardedValue = map['redirectsForAiTraining']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requestBodyBuffering: (() { final guardedValue = map['requestBodyBuffering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestFields: (() { final guardedValue = map['requestFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RulesetRuleActionParametersRequestField>(guardedValue, (value) => RulesetRuleActionParametersRequestField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      respectStrongEtags: (() { final guardedValue = map['respectStrongEtags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      response: (() { final guardedValue = map['response']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      responseBodyBuffering: (() { final guardedValue = map['responseBodyBuffering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      responseFields: (() { final guardedValue = map['responseFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RulesetRuleActionParametersResponseField>(guardedValue, (value) => RulesetRuleActionParametersResponseField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rocketLoader: (() { final guardedValue = map['rocketLoader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      ruleset: (() { final guardedValue = map['ruleset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rulesets: (() { final guardedValue = map['rulesets']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sMaxage: (() { final guardedValue = map['sMaxage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersSMaxage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      securityLevel: (() { final guardedValue = map['securityLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serveStale: (() { final guardedValue = map['serveStale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersServeStale.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serverSideExcludes: (() { final guardedValue = map['serverSideExcludes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sni: (() { final guardedValue = map['sni']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersSni.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssl: (() { final guardedValue = map['ssl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      staleIfError: (() { final guardedValue = map['staleIfError']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersStaleIfError.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      staleWhileRevalidate: (() { final guardedValue = map['staleWhileRevalidate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersStaleWhileRevalidate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statusCode: (() { final guardedValue = map['statusCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      stripEtags: (() { final guardedValue = map['stripEtags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stripLastModified: (() { final guardedValue = map['stripLastModified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stripSetCookie: (() { final guardedValue = map['stripSetCookie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sxg: (() { final guardedValue = map['sxg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      transformedRequestFields: (() { final guardedValue = map['transformedRequestFields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<RulesetRuleActionParametersTransformedRequestField>(guardedValue, (value) => RulesetRuleActionParametersTransformedRequestField.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersUri.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      vary: (() { final guardedValue = map['vary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesetRuleActionParametersVary.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
