// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ruleset_rule_action_parameters_algorithm.dart';
import 'get_ruleset_rule_action_parameters_autominify.dart';
import 'get_ruleset_rule_action_parameters_browser_ttl.dart';
import 'get_ruleset_rule_action_parameters_cache_key.dart';
import 'get_ruleset_rule_action_parameters_cache_reserve.dart';
import 'get_ruleset_rule_action_parameters_cookie_field.dart';
import 'get_ruleset_rule_action_parameters_edge_ttl.dart';
import 'get_ruleset_rule_action_parameters_from_list.dart';
import 'get_ruleset_rule_action_parameters_from_value.dart';
import 'get_ruleset_rule_action_parameters_headers.dart';
import 'get_ruleset_rule_action_parameters_immutable.dart';
import 'get_ruleset_rule_action_parameters_matched_data.dart';
import 'get_ruleset_rule_action_parameters_max_age.dart';
import 'get_ruleset_rule_action_parameters_must_revalidate.dart';
import 'get_ruleset_rule_action_parameters_must_understand.dart';
import 'get_ruleset_rule_action_parameters_no_cache.dart';
import 'get_ruleset_rule_action_parameters_no_store.dart';
import 'get_ruleset_rule_action_parameters_no_transform.dart';
import 'get_ruleset_rule_action_parameters_origin.dart';
import 'get_ruleset_rule_action_parameters_overrides.dart';
import 'get_ruleset_rule_action_parameters_private.dart';
import 'get_ruleset_rule_action_parameters_proxy_revalidate.dart';
import 'get_ruleset_rule_action_parameters_public.dart';
import 'get_ruleset_rule_action_parameters_raw_response_field.dart';
import 'get_ruleset_rule_action_parameters_request_field.dart';
import 'get_ruleset_rule_action_parameters_response.dart';
import 'get_ruleset_rule_action_parameters_response_field.dart';
import 'get_ruleset_rule_action_parameters_serve_stale.dart';
import 'get_ruleset_rule_action_parameters_smaxage.dart';
import 'get_ruleset_rule_action_parameters_sni.dart';
import 'get_ruleset_rule_action_parameters_stale_if_error.dart';
import 'get_ruleset_rule_action_parameters_stale_while_revalidate.dart';
import 'get_ruleset_rule_action_parameters_transformed_request_field.dart';
import 'get_ruleset_rule_action_parameters_uri.dart';
import 'get_ruleset_rule_action_parameters_vary.dart';

class GetRulesetRuleActionParameters {
  /// A list of additional ports that caching should be enabled on.
  final pulumi.Input<List<int>> additionalCacheablePorts;
  /// Custom order for compression algorithms.
  final pulumi.Input<List<GetRulesetRuleActionParametersAlgorithm>> algorithms;
  /// The name of a custom asset to serve as the response.
  final pulumi.Input<String> assetName;
  /// Whether to enable Automatic HTTPS Rewrites.
  final pulumi.Input<bool> automaticHttpsRewrites;
  /// Which file extensions to minify automatically.
  final pulumi.Input<GetRulesetRuleActionParametersAutominify> autominify;
  /// Whether to enable Browser Integrity Check (BIC).
  final pulumi.Input<bool> bic;
  /// How long client browsers should cache the response. Cloudflare cache purge will not purge content cached on client browsers, so high browser TTLs may lead to stale content.
  final pulumi.Input<GetRulesetRuleActionParametersBrowserTtl> browserTtl;
  /// Whether the request's response from the origin is eligible for caching. Caching itself will still depend on the cache control header and your other caching configurations.
  final pulumi.Input<bool> cache;
  /// Which components of the request are included in or excluded from the cache key Cloudflare uses to store the response in cache.
  final pulumi.Input<GetRulesetRuleActionParametersCacheKey> cacheKey;
  /// Settings to determine whether the request's response from origin is eligible for Cache Reserve (requires a Cache Reserve add-on plan).
  final pulumi.Input<GetRulesetRuleActionParametersCacheReserve> cacheReserve;
  /// The response content.
  final pulumi.Input<String> content;
  /// Whether to enable content conversion (e.g., HTML to Markdown).
  final pulumi.Input<bool> contentConverter;
  /// The content type header to set with the error response.
  /// Available values: "application/json", "text/html", "text/plain", "text/xml".
  final pulumi.Input<String> contentType;
  /// The cookie fields to log.
  final pulumi.Input<List<GetRulesetRuleActionParametersCookieField>> cookieFields;
  /// Whether to disable Cloudflare Apps.
  final pulumi.Input<bool> disableApps;
  /// Whether to disable Real User Monitoring (RUM).
  final pulumi.Input<bool> disableRum;
  /// Whether to disable Zaraz.
  final pulumi.Input<bool> disableZaraz;
  /// How long the Cloudflare edge network should cache the response.
  final pulumi.Input<GetRulesetRuleActionParametersEdgeTtl> edgeTtl;
  /// Whether to enable Email Obfuscation.
  final pulumi.Input<bool> emailObfuscation;
  /// An expression to generate cache tags for set*cache*tags action.
  final pulumi.Input<String> expression;
  /// Whether to enable Cloudflare Fonts.
  final pulumi.Input<bool> fonts;
  /// A redirect based on a bulk list lookup.
  final pulumi.Input<GetRulesetRuleActionParametersFromList> fromList;
  /// A redirect based on the request properties.
  final pulumi.Input<GetRulesetRuleActionParametersFromValue> fromValue;
  /// A map of headers to rewrite.
  final pulumi.Input<Map<String, GetRulesetRuleActionParametersHeaders>> headers;
  /// A value to rewrite the HTTP host header to.
  final pulumi.Input<String> hostHeader;
  /// Whether to enable Hotlink Protection.
  final pulumi.Input<bool> hotlinkProtection;
  /// The ID of the ruleset to execute.
  final pulumi.Input<String> id;
  /// Set the immutable cache control directive.
  final pulumi.Input<GetRulesetRuleActionParametersImmutable> immutable;
  /// A delta to change the score by, which can be either positive or negative.
  final pulumi.Input<int> increment;
  /// The configuration to use for matched data logging.
  final pulumi.Input<GetRulesetRuleActionParametersMatchedData> matchedData;
  /// Set the max-age cache control directive.
  final pulumi.Input<GetRulesetRuleActionParametersMaxAge> maxAge;
  /// Whether to enable Mirage.
  final pulumi.Input<bool> mirage;
  /// Set the must-revalidate cache control directive.
  final pulumi.Input<GetRulesetRuleActionParametersMustRevalidate> mustRevalidate;
  /// Set the must-understand cache control directive.
  final pulumi.Input<GetRulesetRuleActionParametersMustUnderstand> mustUnderstand;
  /// Set the no-cache cache control directive.
  final pulumi.Input<GetRulesetRuleActionParametersNoCache> noCache;
  /// Set the no-store cache control directive.
  final pulumi.Input<GetRulesetRuleActionParametersNoStore> noStore;
  /// Set the no-transform cache control directive.
  final pulumi.Input<GetRulesetRuleActionParametersNoTransform> noTransform;
  /// The operation to perform for set*cache*tags action.
  /// Available values: "set", "add", "remove".
  final pulumi.Input<String> operation;
  /// Whether to enable Opportunistic Encryption.
  final pulumi.Input<bool> opportunisticEncryption;
  /// An origin to route to.
  final pulumi.Input<GetRulesetRuleActionParametersOrigin> origin;
  /// Whether Cloudflare will aim to strictly adhere to RFC 7234.
  final pulumi.Input<bool> originCacheControl;
  /// Whether to generate Cloudflare error pages for issues from the origin server.
  final pulumi.Input<bool> originErrorPagePassthru;
  /// A set of overrides to apply to the target ruleset.
  final pulumi.Input<GetRulesetRuleActionParametersOverrides> overrides;
  /// A list of phases to skip the execution of. This option is incompatible with the rulesets option.
  /// Available values: "ddos*l4", "ddos*l7", "http*config*settings", "http*custom*errors", "http*log*custom*fields", "http*ratelimit", "http*request*cache*settings", "http*request*dynamic*redirect", "http*request*firewall*custom", "http*request*firewall*managed", "http*request*late*transform", "http*request*origin", "http*request*redirect", "http*request*sanitize", "http*request*sbfm", "http*request*transform", "http*response*cache*settings", "http*response*compression", "http*response*firewall*managed", "http*response*headers*transform", "magic*transit", "magic*transit*ids*managed", "magic*transit*managed", "magic*transit*ratelimit".
  final pulumi.Input<List<String>> phases;
  /// The Polish level to configure.
  /// Available values: "off", "lossless", "lossy", "webp".
  final pulumi.Input<String> polish;
  /// Set the private cache control directive.
  final pulumi.Input<GetRulesetRuleActionParametersPrivate> private;
  /// A list of legacy security products to skip the execution of.
  /// Available values: "bic", "hot", "rateLimit", "securityLevel", "uaBlock", "waf", "zoneLockdown".
  final pulumi.Input<List<String>> products;
  /// Set the proxy-revalidate cache control directive.
  final pulumi.Input<GetRulesetRuleActionParametersProxyRevalidate> proxyRevalidate;
  /// Set the public cache control directive.
  final pulumi.Input<GetRulesetRuleActionParametersPublic> public;
  /// The raw response fields to log.
  final pulumi.Input<List<GetRulesetRuleActionParametersRawResponseField>> rawResponseFields;
  /// A timeout value between two successive read operations to use for your origin server. Historically, the timeout value between two read options from Cloudflare to an origin server is 100 seconds. If you are attempting to reduce HTTP 524 errors because of timeouts from an origin server, try increasing this timeout value.
  final pulumi.Input<int> readTimeout;
  /// Whether to redirect verified AI training crawlers to canonical URLs.
  final pulumi.Input<bool> redirectsForAiTraining;
  /// The request body buffering mode to configure.
  /// Available values: "none", "standard", "full".
  final pulumi.Input<String> requestBodyBuffering;
  /// The raw request fields to log.
  final pulumi.Input<List<GetRulesetRuleActionParametersRequestField>> requestFields;
  /// Whether Cloudflare should respect strong ETag (entity tag) headers. If false, Cloudflare converts strong ETag headers to weak ETag headers.
  final pulumi.Input<bool> respectStrongEtags;
  /// The response to show when the block is applied.
  final pulumi.Input<GetRulesetRuleActionParametersResponse> response;
  /// The response body buffering mode to configure.
  /// Available values: "none", "standard".
  final pulumi.Input<String> responseBodyBuffering;
  /// The transformed response fields to log.
  final pulumi.Input<List<GetRulesetRuleActionParametersResponseField>> responseFields;
  /// Whether to enable Rocket Loader.
  final pulumi.Input<bool> rocketLoader;
  /// A mapping of ruleset IDs to a list of rule IDs in that ruleset to skip the execution of. This option is incompatible with the ruleset option.
  final pulumi.Input<Map<String, List<String>>> rules;
  /// A ruleset to skip the execution of. This option is incompatible with the rulesets option.
  /// Available values: "current".
  final pulumi.Input<String> ruleset;
  /// A list of ruleset IDs to skip the execution of. This option is incompatible with the ruleset and phases options.
  final pulumi.Input<List<String>> rulesets;
  /// Set the s-maxage cache control directive.
  final pulumi.Input<GetRulesetRuleActionParametersSMaxage> sMaxage;
  /// The Security Level to configure.
  /// Available values: "off", "essentially*off", "low", "medium", "high", "under*attack".
  final pulumi.Input<String> securityLevel;
  /// When to serve stale content from cache.
  final pulumi.Input<GetRulesetRuleActionParametersServeStale> serveStale;
  /// Whether to enable Server-Side Excludes.
  final pulumi.Input<bool> serverSideExcludes;
  /// A Server Name Indication (SNI) override.
  final pulumi.Input<GetRulesetRuleActionParametersSni> sni;
  /// The SSL level to configure.
  /// Available values: "off", "flexible", "full", "strict", "originPull".
  final pulumi.Input<String> ssl;
  /// Set the stale-if-error cache control directive.
  final pulumi.Input<GetRulesetRuleActionParametersStaleIfError> staleIfError;
  /// Set the stale-while-revalidate cache control directive.
  final pulumi.Input<GetRulesetRuleActionParametersStaleWhileRevalidate> staleWhileRevalidate;
  /// The status code to use for the error.
  final pulumi.Input<int> statusCode;
  /// Whether to strip the ETag header from the response.
  final pulumi.Input<bool> stripEtags;
  /// Whether to strip the Last-Modified header from the response.
  final pulumi.Input<bool> stripLastModified;
  /// Whether to strip the Set-Cookie header from the response.
  final pulumi.Input<bool> stripSetCookie;
  /// Whether to enable Signed Exchanges (SXG).
  final pulumi.Input<bool> sxg;
  /// The transformed request fields to log.
  final pulumi.Input<List<GetRulesetRuleActionParametersTransformedRequestField>> transformedRequestFields;
  /// A URI rewrite.
  final pulumi.Input<GetRulesetRuleActionParametersUri> uri;
  /// The cache tag values for set*cache*tags action.
  final pulumi.Input<List<String>> values;
  /// Controls how cached responses vary based on request headers. `default` is required and applies to any Vary response header that does not have a per-header override.
  final pulumi.Input<GetRulesetRuleActionParametersVary> vary;

  /// Creates a new [GetRulesetRuleActionParameters].
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
  const GetRulesetRuleActionParameters({
    required this.additionalCacheablePorts,
    required this.algorithms,
    required this.assetName,
    required this.automaticHttpsRewrites,
    required this.autominify,
    required this.bic,
    required this.browserTtl,
    required this.cache,
    required this.cacheKey,
    required this.cacheReserve,
    required this.content,
    required this.contentConverter,
    required this.contentType,
    required this.cookieFields,
    required this.disableApps,
    required this.disableRum,
    required this.disableZaraz,
    required this.edgeTtl,
    required this.emailObfuscation,
    required this.expression,
    required this.fonts,
    required this.fromList,
    required this.fromValue,
    required this.headers,
    required this.hostHeader,
    required this.hotlinkProtection,
    required this.id,
    required this.immutable,
    required this.increment,
    required this.matchedData,
    required this.maxAge,
    required this.mirage,
    required this.mustRevalidate,
    required this.mustUnderstand,
    required this.noCache,
    required this.noStore,
    required this.noTransform,
    required this.operation,
    required this.opportunisticEncryption,
    required this.origin,
    required this.originCacheControl,
    required this.originErrorPagePassthru,
    required this.overrides,
    required this.phases,
    required this.polish,
    required this.private,
    required this.products,
    required this.proxyRevalidate,
    required this.public,
    required this.rawResponseFields,
    required this.readTimeout,
    required this.redirectsForAiTraining,
    required this.requestBodyBuffering,
    required this.requestFields,
    required this.respectStrongEtags,
    required this.response,
    required this.responseBodyBuffering,
    required this.responseFields,
    required this.rocketLoader,
    required this.rules,
    required this.ruleset,
    required this.rulesets,
    required this.sMaxage,
    required this.securityLevel,
    required this.serveStale,
    required this.serverSideExcludes,
    required this.sni,
    required this.ssl,
    required this.staleIfError,
    required this.staleWhileRevalidate,
    required this.statusCode,
    required this.stripEtags,
    required this.stripLastModified,
    required this.stripSetCookie,
    required this.sxg,
    required this.transformedRequestFields,
    required this.uri,
    required this.values,
    required this.vary,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalCacheablePorts': additionalCacheablePorts,
      'algorithms': pulumi.Input.mapInputValue<List<GetRulesetRuleActionParametersAlgorithm>, List<Map<String, dynamic>>>(algorithms, (value) => pulumi.Input.encodeList<GetRulesetRuleActionParametersAlgorithm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'assetName': assetName,
      'automaticHttpsRewrites': automaticHttpsRewrites,
      'autominify': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersAutominify, Map<String, dynamic>>(autominify, (value) => value.toMap()),
      'bic': bic,
      'browserTtl': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersBrowserTtl, Map<String, dynamic>>(browserTtl, (value) => value.toMap()),
      'cache': cache,
      'cacheKey': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersCacheKey, Map<String, dynamic>>(cacheKey, (value) => value.toMap()),
      'cacheReserve': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersCacheReserve, Map<String, dynamic>>(cacheReserve, (value) => value.toMap()),
      'content': content,
      'contentConverter': contentConverter,
      'contentType': contentType,
      'cookieFields': pulumi.Input.mapInputValue<List<GetRulesetRuleActionParametersCookieField>, List<Map<String, dynamic>>>(cookieFields, (value) => pulumi.Input.encodeList<GetRulesetRuleActionParametersCookieField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'disableApps': disableApps,
      'disableRum': disableRum,
      'disableZaraz': disableZaraz,
      'edgeTtl': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersEdgeTtl, Map<String, dynamic>>(edgeTtl, (value) => value.toMap()),
      'emailObfuscation': emailObfuscation,
      'expression': expression,
      'fonts': fonts,
      'fromList': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersFromList, Map<String, dynamic>>(fromList, (value) => value.toMap()),
      'fromValue': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersFromValue, Map<String, dynamic>>(fromValue, (value) => value.toMap()),
      'headers': pulumi.Input.mapInputValue<Map<String, GetRulesetRuleActionParametersHeaders>, Map<String, Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeMapValues<GetRulesetRuleActionParametersHeaders, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostHeader': hostHeader,
      'hotlinkProtection': hotlinkProtection,
      'id': id,
      'immutable': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersImmutable, Map<String, dynamic>>(immutable, (value) => value.toMap()),
      'increment': increment,
      'matchedData': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersMatchedData, Map<String, dynamic>>(matchedData, (value) => value.toMap()),
      'maxAge': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersMaxAge, Map<String, dynamic>>(maxAge, (value) => value.toMap()),
      'mirage': mirage,
      'mustRevalidate': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersMustRevalidate, Map<String, dynamic>>(mustRevalidate, (value) => value.toMap()),
      'mustUnderstand': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersMustUnderstand, Map<String, dynamic>>(mustUnderstand, (value) => value.toMap()),
      'noCache': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersNoCache, Map<String, dynamic>>(noCache, (value) => value.toMap()),
      'noStore': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersNoStore, Map<String, dynamic>>(noStore, (value) => value.toMap()),
      'noTransform': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersNoTransform, Map<String, dynamic>>(noTransform, (value) => value.toMap()),
      'operation': operation,
      'opportunisticEncryption': opportunisticEncryption,
      'origin': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersOrigin, Map<String, dynamic>>(origin, (value) => value.toMap()),
      'originCacheControl': originCacheControl,
      'originErrorPagePassthru': originErrorPagePassthru,
      'overrides': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersOverrides, Map<String, dynamic>>(overrides, (value) => value.toMap()),
      'phases': phases,
      'polish': polish,
      'private': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersPrivate, Map<String, dynamic>>(private, (value) => value.toMap()),
      'products': products,
      'proxyRevalidate': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersProxyRevalidate, Map<String, dynamic>>(proxyRevalidate, (value) => value.toMap()),
      'public': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersPublic, Map<String, dynamic>>(public, (value) => value.toMap()),
      'rawResponseFields': pulumi.Input.mapInputValue<List<GetRulesetRuleActionParametersRawResponseField>, List<Map<String, dynamic>>>(rawResponseFields, (value) => pulumi.Input.encodeList<GetRulesetRuleActionParametersRawResponseField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'readTimeout': readTimeout,
      'redirectsForAiTraining': redirectsForAiTraining,
      'requestBodyBuffering': requestBodyBuffering,
      'requestFields': pulumi.Input.mapInputValue<List<GetRulesetRuleActionParametersRequestField>, List<Map<String, dynamic>>>(requestFields, (value) => pulumi.Input.encodeList<GetRulesetRuleActionParametersRequestField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'respectStrongEtags': respectStrongEtags,
      'response': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersResponse, Map<String, dynamic>>(response, (value) => value.toMap()),
      'responseBodyBuffering': responseBodyBuffering,
      'responseFields': pulumi.Input.mapInputValue<List<GetRulesetRuleActionParametersResponseField>, List<Map<String, dynamic>>>(responseFields, (value) => pulumi.Input.encodeList<GetRulesetRuleActionParametersResponseField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rocketLoader': rocketLoader,
      'rules': rules,
      'ruleset': ruleset,
      'rulesets': rulesets,
      'sMaxage': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersSMaxage, Map<String, dynamic>>(sMaxage, (value) => value.toMap()),
      'securityLevel': securityLevel,
      'serveStale': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersServeStale, Map<String, dynamic>>(serveStale, (value) => value.toMap()),
      'serverSideExcludes': serverSideExcludes,
      'sni': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersSni, Map<String, dynamic>>(sni, (value) => value.toMap()),
      'ssl': ssl,
      'staleIfError': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersStaleIfError, Map<String, dynamic>>(staleIfError, (value) => value.toMap()),
      'staleWhileRevalidate': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersStaleWhileRevalidate, Map<String, dynamic>>(staleWhileRevalidate, (value) => value.toMap()),
      'statusCode': statusCode,
      'stripEtags': stripEtags,
      'stripLastModified': stripLastModified,
      'stripSetCookie': stripSetCookie,
      'sxg': sxg,
      'transformedRequestFields': pulumi.Input.mapInputValue<List<GetRulesetRuleActionParametersTransformedRequestField>, List<Map<String, dynamic>>>(transformedRequestFields, (value) => pulumi.Input.encodeList<GetRulesetRuleActionParametersTransformedRequestField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uri': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersUri, Map<String, dynamic>>(uri, (value) => value.toMap()),
      'values': values,
      'vary': pulumi.Input.mapInputValue<GetRulesetRuleActionParametersVary, Map<String, dynamic>>(vary, (value) => value.toMap()),
    };
  }

  factory GetRulesetRuleActionParameters.fromMap(Map<String, dynamic> map) {
    return GetRulesetRuleActionParameters(
      additionalCacheablePorts: pulumi.Input.fromValue((map['additionalCacheablePorts'] as List).cast<int>()),
      algorithms: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesetRuleActionParametersAlgorithm>(map['algorithms']!, (value) => GetRulesetRuleActionParametersAlgorithm.fromMap((value as Map).cast<String, dynamic>()))),
      assetName: pulumi.Input.fromValue(map['assetName'] as String),
      automaticHttpsRewrites: pulumi.Input.fromValue(map['automaticHttpsRewrites'] as bool),
      autominify: pulumi.Input.fromValue(GetRulesetRuleActionParametersAutominify.fromMap((map['autominify']! as Map).cast<String, dynamic>())),
      bic: pulumi.Input.fromValue(map['bic'] as bool),
      browserTtl: pulumi.Input.fromValue(GetRulesetRuleActionParametersBrowserTtl.fromMap((map['browserTtl']! as Map).cast<String, dynamic>())),
      cache: pulumi.Input.fromValue(map['cache'] as bool),
      cacheKey: pulumi.Input.fromValue(GetRulesetRuleActionParametersCacheKey.fromMap((map['cacheKey']! as Map).cast<String, dynamic>())),
      cacheReserve: pulumi.Input.fromValue(GetRulesetRuleActionParametersCacheReserve.fromMap((map['cacheReserve']! as Map).cast<String, dynamic>())),
      content: pulumi.Input.fromValue(map['content'] as String),
      contentConverter: pulumi.Input.fromValue(map['contentConverter'] as bool),
      contentType: pulumi.Input.fromValue(map['contentType'] as String),
      cookieFields: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesetRuleActionParametersCookieField>(map['cookieFields']!, (value) => GetRulesetRuleActionParametersCookieField.fromMap((value as Map).cast<String, dynamic>()))),
      disableApps: pulumi.Input.fromValue(map['disableApps'] as bool),
      disableRum: pulumi.Input.fromValue(map['disableRum'] as bool),
      disableZaraz: pulumi.Input.fromValue(map['disableZaraz'] as bool),
      edgeTtl: pulumi.Input.fromValue(GetRulesetRuleActionParametersEdgeTtl.fromMap((map['edgeTtl']! as Map).cast<String, dynamic>())),
      emailObfuscation: pulumi.Input.fromValue(map['emailObfuscation'] as bool),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      fonts: pulumi.Input.fromValue(map['fonts'] as bool),
      fromList: pulumi.Input.fromValue(GetRulesetRuleActionParametersFromList.fromMap((map['fromList']! as Map).cast<String, dynamic>())),
      fromValue: pulumi.Input.fromValue(GetRulesetRuleActionParametersFromValue.fromMap((map['fromValue']! as Map).cast<String, dynamic>())),
      headers: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<GetRulesetRuleActionParametersHeaders>(map['headers']!, (value) => GetRulesetRuleActionParametersHeaders.fromMap((value as Map).cast<String, dynamic>()))),
      hostHeader: pulumi.Input.fromValue(map['hostHeader'] as String),
      hotlinkProtection: pulumi.Input.fromValue(map['hotlinkProtection'] as bool),
      id: pulumi.Input.fromValue(map['id'] as String),
      immutable: pulumi.Input.fromValue(GetRulesetRuleActionParametersImmutable.fromMap((map['immutable']! as Map).cast<String, dynamic>())),
      increment: pulumi.Input.fromValue((map['increment'] as num).toInt()),
      matchedData: pulumi.Input.fromValue(GetRulesetRuleActionParametersMatchedData.fromMap((map['matchedData']! as Map).cast<String, dynamic>())),
      maxAge: pulumi.Input.fromValue(GetRulesetRuleActionParametersMaxAge.fromMap((map['maxAge']! as Map).cast<String, dynamic>())),
      mirage: pulumi.Input.fromValue(map['mirage'] as bool),
      mustRevalidate: pulumi.Input.fromValue(GetRulesetRuleActionParametersMustRevalidate.fromMap((map['mustRevalidate']! as Map).cast<String, dynamic>())),
      mustUnderstand: pulumi.Input.fromValue(GetRulesetRuleActionParametersMustUnderstand.fromMap((map['mustUnderstand']! as Map).cast<String, dynamic>())),
      noCache: pulumi.Input.fromValue(GetRulesetRuleActionParametersNoCache.fromMap((map['noCache']! as Map).cast<String, dynamic>())),
      noStore: pulumi.Input.fromValue(GetRulesetRuleActionParametersNoStore.fromMap((map['noStore']! as Map).cast<String, dynamic>())),
      noTransform: pulumi.Input.fromValue(GetRulesetRuleActionParametersNoTransform.fromMap((map['noTransform']! as Map).cast<String, dynamic>())),
      operation: pulumi.Input.fromValue(map['operation'] as String),
      opportunisticEncryption: pulumi.Input.fromValue(map['opportunisticEncryption'] as bool),
      origin: pulumi.Input.fromValue(GetRulesetRuleActionParametersOrigin.fromMap((map['origin']! as Map).cast<String, dynamic>())),
      originCacheControl: pulumi.Input.fromValue(map['originCacheControl'] as bool),
      originErrorPagePassthru: pulumi.Input.fromValue(map['originErrorPagePassthru'] as bool),
      overrides: pulumi.Input.fromValue(GetRulesetRuleActionParametersOverrides.fromMap((map['overrides']! as Map).cast<String, dynamic>())),
      phases: pulumi.Input.fromValue((map['phases'] as List).cast<String>()),
      polish: pulumi.Input.fromValue(map['polish'] as String),
      private: pulumi.Input.fromValue(GetRulesetRuleActionParametersPrivate.fromMap((map['private']! as Map).cast<String, dynamic>())),
      products: pulumi.Input.fromValue((map['products'] as List).cast<String>()),
      proxyRevalidate: pulumi.Input.fromValue(GetRulesetRuleActionParametersProxyRevalidate.fromMap((map['proxyRevalidate']! as Map).cast<String, dynamic>())),
      public: pulumi.Input.fromValue(GetRulesetRuleActionParametersPublic.fromMap((map['public']! as Map).cast<String, dynamic>())),
      rawResponseFields: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesetRuleActionParametersRawResponseField>(map['rawResponseFields']!, (value) => GetRulesetRuleActionParametersRawResponseField.fromMap((value as Map).cast<String, dynamic>()))),
      readTimeout: pulumi.Input.fromValue((map['readTimeout'] as num).toInt()),
      redirectsForAiTraining: pulumi.Input.fromValue(map['redirectsForAiTraining'] as bool),
      requestBodyBuffering: pulumi.Input.fromValue(map['requestBodyBuffering'] as String),
      requestFields: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesetRuleActionParametersRequestField>(map['requestFields']!, (value) => GetRulesetRuleActionParametersRequestField.fromMap((value as Map).cast<String, dynamic>()))),
      respectStrongEtags: pulumi.Input.fromValue(map['respectStrongEtags'] as bool),
      response: pulumi.Input.fromValue(GetRulesetRuleActionParametersResponse.fromMap((map['response']! as Map).cast<String, dynamic>())),
      responseBodyBuffering: pulumi.Input.fromValue(map['responseBodyBuffering'] as String),
      responseFields: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesetRuleActionParametersResponseField>(map['responseFields']!, (value) => GetRulesetRuleActionParametersResponseField.fromMap((value as Map).cast<String, dynamic>()))),
      rocketLoader: pulumi.Input.fromValue(map['rocketLoader'] as bool),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(map['rules']!, (value) => (value as List).cast<String>())),
      ruleset: pulumi.Input.fromValue(map['ruleset'] as String),
      rulesets: pulumi.Input.fromValue((map['rulesets'] as List).cast<String>()),
      sMaxage: pulumi.Input.fromValue(GetRulesetRuleActionParametersSMaxage.fromMap((map['sMaxage']! as Map).cast<String, dynamic>())),
      securityLevel: pulumi.Input.fromValue(map['securityLevel'] as String),
      serveStale: pulumi.Input.fromValue(GetRulesetRuleActionParametersServeStale.fromMap((map['serveStale']! as Map).cast<String, dynamic>())),
      serverSideExcludes: pulumi.Input.fromValue(map['serverSideExcludes'] as bool),
      sni: pulumi.Input.fromValue(GetRulesetRuleActionParametersSni.fromMap((map['sni']! as Map).cast<String, dynamic>())),
      ssl: pulumi.Input.fromValue(map['ssl'] as String),
      staleIfError: pulumi.Input.fromValue(GetRulesetRuleActionParametersStaleIfError.fromMap((map['staleIfError']! as Map).cast<String, dynamic>())),
      staleWhileRevalidate: pulumi.Input.fromValue(GetRulesetRuleActionParametersStaleWhileRevalidate.fromMap((map['staleWhileRevalidate']! as Map).cast<String, dynamic>())),
      statusCode: pulumi.Input.fromValue((map['statusCode'] as num).toInt()),
      stripEtags: pulumi.Input.fromValue(map['stripEtags'] as bool),
      stripLastModified: pulumi.Input.fromValue(map['stripLastModified'] as bool),
      stripSetCookie: pulumi.Input.fromValue(map['stripSetCookie'] as bool),
      sxg: pulumi.Input.fromValue(map['sxg'] as bool),
      transformedRequestFields: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRulesetRuleActionParametersTransformedRequestField>(map['transformedRequestFields']!, (value) => GetRulesetRuleActionParametersTransformedRequestField.fromMap((value as Map).cast<String, dynamic>()))),
      uri: pulumi.Input.fromValue(GetRulesetRuleActionParametersUri.fromMap((map['uri']! as Map).cast<String, dynamic>())),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
      vary: pulumi.Input.fromValue(GetRulesetRuleActionParametersVary.fromMap((map['vary']! as Map).cast<String, dynamic>())),
    );
  }
}
