// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosting_version_config_header.dart';
import 'hosting_version_config_redirect.dart';
import 'hosting_version_config_rewrite.dart';

class HostingVersionConfig {
  /// An array of objects, where each object specifies a URL pattern that, if matched to the request URL path,
  /// triggers Hosting to apply the specified custom response headers.
  /// Structure is documented below.
  final pulumi.Input<List<HostingVersionConfigHeader>>? headers;
  /// An array of objects (called redirect rules), where each rule specifies a URL pattern that, if matched to the request URL path,
  /// triggers Hosting to respond with a redirect to the specified destination path.
  /// Structure is documented below.
  final pulumi.Input<List<HostingVersionConfigRedirect>>? redirects;
  /// An array of objects (called rewrite rules), where each rule specifies a URL pattern that, if matched to the
  /// request URL path, triggers Hosting to respond as if the service were given the specified destination URL.
  /// Structure is documented below.
  final pulumi.Input<List<HostingVersionConfigRewrite>>? rewrites;

  /// Creates a new [HostingVersionConfig].
  /// [headers] An array of objects, where each object specifies a URL pattern that, if matched to the request URL path,
  /// [redirects] An array of objects (called redirect rules), where each rule specifies a URL pattern that, if matched to the request URL path,
  /// [rewrites] An array of objects (called rewrite rules), where each rule specifies a URL pattern that, if matched to the
  HostingVersionConfig({
    this.headers,
    this.redirects,
    this.rewrites,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers': ?pulumi.Input.mapOptionalInputValue<List<HostingVersionConfigHeader>, List<Map<String, dynamic>>>(headers, (value) => pulumi.Input.encodeList<HostingVersionConfigHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'redirects': ?pulumi.Input.mapOptionalInputValue<List<HostingVersionConfigRedirect>, List<Map<String, dynamic>>>(redirects, (value) => pulumi.Input.encodeList<HostingVersionConfigRedirect, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rewrites': ?pulumi.Input.mapOptionalInputValue<List<HostingVersionConfigRewrite>, List<Map<String, dynamic>>>(rewrites, (value) => pulumi.Input.encodeList<HostingVersionConfigRewrite, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory HostingVersionConfig.fromMap(Map<String, dynamic> map) {
    return HostingVersionConfig(
      headers: map['headers'] == null ? null : (pulumi.Input.decodeList<HostingVersionConfigHeader>(map['headers'], (value) => HostingVersionConfigHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      redirects: map['redirects'] == null ? null : (pulumi.Input.decodeList<HostingVersionConfigRedirect>(map['redirects'], (value) => HostingVersionConfigRedirect.fromMap((value as Map).cast<String, dynamic>()))).input(),
      rewrites: map['rewrites'] == null ? null : (pulumi.Input.decodeList<HostingVersionConfigRewrite>(map['rewrites'], (value) => HostingVersionConfigRewrite.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

