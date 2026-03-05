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
    this.bypassLists,
    this.caFile,
    this.cacheType,
    this.cookieRules,
    this.crlFile,
    this.defaultsFrom,
    this.name,
    this.requests,
    this.responses,
    this.rewriteLists,
    this.rewriteMode,
    this.signingCert,
    this.signingKey,
    this.signingKeyPassword,
    this.splitTunneling,
  });

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
      bypassLists: (() { final guardedValue = map['bypassLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      caFile: (() { final guardedValue = map['caFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cacheType: (() { final guardedValue = map['cacheType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cookieRules: (() { final guardedValue = map['cookieRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProfileRewriteCookieRule>(guardedValue, (value) => ProfileRewriteCookieRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      crlFile: (() { final guardedValue = map['crlFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultsFrom: (() { final guardedValue = map['defaultsFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requests: (() { final guardedValue = map['requests']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProfileRewriteRequest>(guardedValue, (value) => ProfileRewriteRequest.fromMap((value as Map).cast<String, dynamic>()))); })(),
      responses: (() { final guardedValue = map['responses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ProfileRewriteResponse>(guardedValue, (value) => ProfileRewriteResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      rewriteLists: (() { final guardedValue = map['rewriteLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      rewriteMode: (() { final guardedValue = map['rewriteMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signingCert: (() { final guardedValue = map['signingCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signingKey: (() { final guardedValue = map['signingKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      signingKeyPassword: (() { final guardedValue = map['signingKeyPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      splitTunneling: (() { final guardedValue = map['splitTunneling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

