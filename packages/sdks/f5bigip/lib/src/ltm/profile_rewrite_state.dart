// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_rewrite_cookie_rule.dart';
import 'profile_rewrite_request.dart';
import 'profile_rewrite_response.dart';

/// Input properties used for looking up and filtering ProfileRewrite resources.
class ProfileRewriteState {
  /// Specifies a list of URIs to bypass inside a web page when the page is accessed using Portal Access.
  final pulumi.Input<List<String>>? bypassLists;
  /// Specifies a CA against which to verify signed Java applets signatures. (name should be in full path which is combination of partition and CA file name )
  final pulumi.Input<String>? caFile;
  /// Specifies the type of Client caching. Valid choices are: `cache-css-js, cache-all, no-cache, cache-img-css-js`. Default value: `cache-img-css-js`
  final pulumi.Input<String>? cacheType;
  /// Specifies the cookie rewrite rules. Block type. Each request is block type with following arguments.
  final pulumi.Input<List<ProfileRewriteCookieRule>>? cookieRules;
  /// Specifies a CRL against which to verify signed Java applets signature certificates. The default option is `none`.
  final pulumi.Input<String>? crlFile;
  /// Specifies the profile from which this profile inherits settings. The default is the system-supplied `rewrite` profile.
  final pulumi.Input<String>? defaultsFrom;
  /// Name of the rewrite profile. ( profile name should be in full path which is combination of partition and profile name )
  final pulumi.Input<String>? name;
  /// Block type. Each request is block type with following arguments.
  final pulumi.Input<List<ProfileRewriteRequest>>? requests;
  /// Block type. Each request is block type with following arguments.
  final pulumi.Input<List<ProfileRewriteResponse>>? responses;
  /// Specifies a list of URIs to rewrite inside a web page when the page is accessed using Portal Access.
  final pulumi.Input<List<String>>? rewriteLists;
  /// Specifies the type of Client caching. Valid choices are: `portal, uri-translation`
  final pulumi.Input<String>? rewriteMode;
  /// Specifies a certificate to use for re-signing of signed Java applets after patching. (name should be in full path which is combination of partition and certificate name )
  final pulumi.Input<String>? signingCert;
  /// Specifies a certificate to use for re-signing of signed Java applets after patching. (name should be in full path which is combination of partition and key name )
  final pulumi.Input<String>? signingKey;
  /// Specifies a pass phrase to use for encrypting the private signing key. Since it's a sensitive entity idempotency will fail in the update call.
  final pulumi.Input<String>? signingKeyPassword;
  /// Specifies the type of Client caching. Valid choices are: `true, false`
  final pulumi.Input<String>? splitTunneling;

  /// Creates a new [ProfileRewriteState].
  /// [bypassLists] Specifies a list of URIs to bypass inside a web page when the page is accessed using Portal Access.
  /// [caFile] Specifies a CA against which to verify signed Java applets signatures. (name should be in full path which is combination of partition and CA file name )
  /// [cacheType] Specifies the type of Client caching. Valid choices are: `cache-css-js, cache-all, no-cache, cache-img-css-js`. Default value: `cache-img-css-js`
  /// [cookieRules] Specifies the cookie rewrite rules. Block type. Each request is block type with following arguments.
  /// [crlFile] Specifies a CRL against which to verify signed Java applets signature certificates. The default option is `none`.
  /// [defaultsFrom] Specifies the profile from which this profile inherits settings. The default is the system-supplied `rewrite` profile.
  /// [name] Name of the rewrite profile. ( profile name should be in full path which is combination of partition and profile name )
  /// [requests] Block type. Each request is block type with following arguments.
  /// [responses] Block type. Each request is block type with following arguments.
  /// [rewriteLists] Specifies a list of URIs to rewrite inside a web page when the page is accessed using Portal Access.
  /// [rewriteMode] Specifies the type of Client caching. Valid choices are: `portal, uri-translation`
  /// [signingCert] Specifies a certificate to use for re-signing of signed Java applets after patching. (name should be in full path which is combination of partition and certificate name )
  /// [signingKey] Specifies a certificate to use for re-signing of signed Java applets after patching. (name should be in full path which is combination of partition and key name )
  /// [signingKeyPassword] Specifies a pass phrase to use for encrypting the private signing key. Since it's a sensitive entity idempotency will fail in the update call.
  /// [splitTunneling] Specifies the type of Client caching. Valid choices are: `true, false`
  ProfileRewriteState({
    pulumi.Output<List<String>>? bypassLists,
    pulumi.Output<String>? caFile,
    pulumi.Output<String>? cacheType,
    pulumi.Output<List<ProfileRewriteCookieRule>>? cookieRules,
    pulumi.Output<String>? crlFile,
    pulumi.Output<String>? defaultsFrom,
    pulumi.Output<String>? name,
    pulumi.Output<List<ProfileRewriteRequest>>? requests,
    pulumi.Output<List<ProfileRewriteResponse>>? responses,
    pulumi.Output<List<String>>? rewriteLists,
    pulumi.Output<String>? rewriteMode,
    pulumi.Output<String>? signingCert,
    pulumi.Output<String>? signingKey,
    pulumi.Output<String>? signingKeyPassword,
    pulumi.Output<String>? splitTunneling,
  }) :
      bypassLists = pulumi.Input.asOptionalInput<List<String>>(bypassLists),
      caFile = pulumi.Input.asOptionalInput<String>(caFile),
      cacheType = pulumi.Input.asOptionalInput<String>(cacheType),
      cookieRules = pulumi.Input.asOptionalInput<List<ProfileRewriteCookieRule>>(cookieRules),
      crlFile = pulumi.Input.asOptionalInput<String>(crlFile),
      defaultsFrom = pulumi.Input.asOptionalInput<String>(defaultsFrom),
      name = pulumi.Input.asOptionalInput<String>(name),
      requests = pulumi.Input.asOptionalInput<List<ProfileRewriteRequest>>(requests),
      responses = pulumi.Input.asOptionalInput<List<ProfileRewriteResponse>>(responses),
      rewriteLists = pulumi.Input.asOptionalInput<List<String>>(rewriteLists),
      rewriteMode = pulumi.Input.asOptionalInput<String>(rewriteMode),
      signingCert = pulumi.Input.asOptionalInput<String>(signingCert),
      signingKey = pulumi.Input.asOptionalInput<String>(signingKey),
      signingKeyPassword = pulumi.Input.asOptionalInput<String>(signingKeyPassword),
      splitTunneling = pulumi.Input.asOptionalInput<String>(splitTunneling);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassLists': ?bypassLists,
      'caFile': ?caFile,
      'cacheType': ?cacheType,
      'cookieRules': ?pulumi.Input.mapOptionalInputValue<List<ProfileRewriteCookieRule>, List<Map<String, dynamic>>>(cookieRules, (value) => pulumi.Input.encodeList<ProfileRewriteCookieRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'crlFile': ?crlFile,
      'defaultsFrom': ?defaultsFrom,
      'name': ?name,
      'requests': ?pulumi.Input.mapOptionalInputValue<List<ProfileRewriteRequest>, List<Map<String, dynamic>>>(requests, (value) => pulumi.Input.encodeList<ProfileRewriteRequest, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responses': ?pulumi.Input.mapOptionalInputValue<List<ProfileRewriteResponse>, List<Map<String, dynamic>>>(responses, (value) => pulumi.Input.encodeList<ProfileRewriteResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rewriteLists': ?rewriteLists,
      'rewriteMode': ?rewriteMode,
      'signingCert': ?signingCert,
      'signingKey': ?signingKey,
      'signingKeyPassword': ?signingKeyPassword,
      'splitTunneling': ?splitTunneling,
    };
  }

  factory ProfileRewriteState.fromMap(Map<String, dynamic> map) {
    return ProfileRewriteState(
      bypassLists: map['bypassLists'] == null ? null : pulumi.Output.create<List<String>>((map['bypassLists'] as List).cast<String>()),
      caFile: map['caFile'] == null ? null : pulumi.Output.create<String>(map['caFile'] as String),
      cacheType: map['cacheType'] == null ? null : pulumi.Output.create<String>(map['cacheType'] as String),
      cookieRules: map['cookieRules'] == null ? null : pulumi.Output.create<List<ProfileRewriteCookieRule>>(pulumi.Input.decodeList<ProfileRewriteCookieRule>(map['cookieRules'], (value) => ProfileRewriteCookieRule.fromMap((value as Map).cast<String, dynamic>()))),
      crlFile: map['crlFile'] == null ? null : pulumi.Output.create<String>(map['crlFile'] as String),
      defaultsFrom: map['defaultsFrom'] == null ? null : pulumi.Output.create<String>(map['defaultsFrom'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      requests: map['requests'] == null ? null : pulumi.Output.create<List<ProfileRewriteRequest>>(pulumi.Input.decodeList<ProfileRewriteRequest>(map['requests'], (value) => ProfileRewriteRequest.fromMap((value as Map).cast<String, dynamic>()))),
      responses: map['responses'] == null ? null : pulumi.Output.create<List<ProfileRewriteResponse>>(pulumi.Input.decodeList<ProfileRewriteResponse>(map['responses'], (value) => ProfileRewriteResponse.fromMap((value as Map).cast<String, dynamic>()))),
      rewriteLists: map['rewriteLists'] == null ? null : pulumi.Output.create<List<String>>((map['rewriteLists'] as List).cast<String>()),
      rewriteMode: map['rewriteMode'] == null ? null : pulumi.Output.create<String>(map['rewriteMode'] as String),
      signingCert: map['signingCert'] == null ? null : pulumi.Output.create<String>(map['signingCert'] as String),
      signingKey: map['signingKey'] == null ? null : pulumi.Output.create<String>(map['signingKey'] as String),
      signingKeyPassword: map['signingKeyPassword'] == null ? null : pulumi.Output.create<String>(map['signingKeyPassword'] as String),
      splitTunneling: map['splitTunneling'] == null ? null : pulumi.Output.create<String>(map['splitTunneling'] as String),
    );
  }
}

