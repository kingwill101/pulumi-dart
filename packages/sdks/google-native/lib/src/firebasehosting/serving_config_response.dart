// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_response.dart';
import 'i18n_config_response.dart';
import 'redirect_response.dart';
import 'rewrite_response.dart';

/// The configuration for how incoming requests to a site should be routed and processed before serving content. The URL request paths are matched against the specified URL patterns in the configuration, then Hosting applies the applicable configuration according to a specific [priority order](https://firebase.google.com/docs/hosting/full-config#hosting_priority_order).
class ServingConfigResponse {
  /// How to handle well known App Association files.
  final pulumi.Input<String> appAssociation;

  /// Defines whether to drop the file extension from uploaded files.
  final pulumi.Input<bool> cleanUrls;

  /// An array of objects, where each object specifies a URL pattern that, if matched to the request URL path, triggers Hosting to apply the specified custom response headers.
  final pulumi.Input<List<HeaderResponse>> headers;

  /// Optional. Defines i18n rewrite behavior.
  final pulumi.Input<I18nConfigResponse> i18n;

  /// An array of objects (called redirect rules), where each rule specifies a URL pattern that, if matched to the request URL path, triggers Hosting to respond with a redirect to the specified destination path.
  final pulumi.Input<List<RedirectResponse>> redirects;

  /// An array of objects (called rewrite rules), where each rule specifies a URL pattern that, if matched to the request URL path, triggers Hosting to respond as if the service were given the specified destination URL.
  final pulumi.Input<List<RewriteResponse>> rewrites;

  /// Defines how to handle a trailing slash in the URL path.
  final pulumi.Input<String> trailingSlashBehavior;

  /// Creates a new [ServingConfigResponse].
  /// [appAssociation] How to handle well known App Association files.
  /// [cleanUrls] Defines whether to drop the file extension from uploaded files.
  /// [headers] An array of objects, where each object specifies a URL pattern that, if matched to the request URL path, triggers Hosting to apply the specified custom response headers.
  /// [i18n] Optional. Defines i18n rewrite behavior.
  /// [redirects] An array of objects (called redirect rules), where each rule specifies a URL pattern that, if matched to the request URL path, triggers Hosting to respond with a redirect to the specified destination path.
  /// [rewrites] An array of objects (called rewrite rules), where each rule specifies a URL pattern that, if matched to the request URL path, triggers Hosting to respond as if the service were given the specified destination URL.
  /// [trailingSlashBehavior] Defines how to handle a trailing slash in the URL path.
  ServingConfigResponse({
    required this.appAssociation,
    required this.cleanUrls,
    required this.headers,
    required this.i18n,
    required this.redirects,
    required this.rewrites,
    required this.trailingSlashBehavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appAssociation': appAssociation,
      'cleanUrls': cleanUrls,
      'headers':
          pulumi.Input.mapInputValue<
            List<HeaderResponse>,
            List<Map<String, dynamic>>
          >(
            headers,
            (value) =>
                pulumi.Input.encodeList<HeaderResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'i18n':
          pulumi.Input.mapInputValue<I18nConfigResponse, Map<String, dynamic>>(
            i18n,
            (value) => value.toMap(),
          ),
      'redirects':
          pulumi.Input.mapInputValue<
            List<RedirectResponse>,
            List<Map<String, dynamic>>
          >(
            redirects,
            (value) =>
                pulumi.Input.encodeList<RedirectResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'rewrites':
          pulumi.Input.mapInputValue<
            List<RewriteResponse>,
            List<Map<String, dynamic>>
          >(
            rewrites,
            (value) =>
                pulumi.Input.encodeList<RewriteResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'trailingSlashBehavior': trailingSlashBehavior,
    };
  }

  factory ServingConfigResponse.fromMap(Map<String, dynamic> map) {
    return ServingConfigResponse(
      appAssociation: pulumi.Input.fromValue(map['appAssociation'] as String),
      cleanUrls: pulumi.Input.fromValue(map['cleanUrls'] as bool),
      headers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<HeaderResponse>(
          map['headers']!,
          (value) =>
              HeaderResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      i18n: pulumi.Input.fromValue(
        I18nConfigResponse.fromMap(
          (map['i18n']! as Map).cast<String, dynamic>(),
        ),
      ),
      redirects: pulumi.Input.fromValue(
        pulumi.Input.decodeList<RedirectResponse>(
          map['redirects']!,
          (value) =>
              RedirectResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      rewrites: pulumi.Input.fromValue(
        pulumi.Input.decodeList<RewriteResponse>(
          map['rewrites']!,
          (value) =>
              RewriteResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      trailingSlashBehavior: pulumi.Input.fromValue(
        map['trailingSlashBehavior'] as String,
      ),
    );
  }
}
