// ignore_for_file: unused_element, unnecessary_cast

import 'forward_proxy.dart';
import 'http_settings_routes.dart';

/// The configuration settings of the HTTP requests for authentication and authorization requests made against App Service Authentication/Authorization.
class HttpSettings {
  /// The configuration settings of a forward proxy used to make the requests.
  final ForwardProxy? forwardProxy;
  /// <code>false</code> if the authentication/authorization responses not having the HTTPS scheme are permissible; otherwise, <code>true</code>.
  final bool? requireHttps;
  /// The configuration settings of the paths HTTP requests.
  final HttpSettingsRoutes? routes;

  /// Creates a new [HttpSettings].
  /// [forwardProxy] The configuration settings of a forward proxy used to make the requests.
  /// [requireHttps] <code>false</code> if the authentication/authorization responses not having the HTTPS scheme are permissible; otherwise, <code>true</code>.
  /// [routes] The configuration settings of the paths HTTP requests.
  HttpSettings({
    this.forwardProxy,
    this.requireHttps,
    this.routes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardProxy': ?forwardProxy == null ? null : forwardProxy!.toMap(),
      'requireHttps': ?requireHttps,
      'routes': ?routes == null ? null : routes!.toMap(),
    };
  }

  factory HttpSettings.fromMap(Map<String, dynamic> map) {
    return HttpSettings(
      forwardProxy: map['forwardProxy'] == null ? null : ForwardProxy.fromMap((map['forwardProxy'] as Map).cast<String, dynamic>()),
      requireHttps: map['requireHttps'] == null ? null : map['requireHttps'] as bool,
      routes: map['routes'] == null ? null : HttpSettingsRoutes.fromMap((map['routes'] as Map).cast<String, dynamic>()),
    );
  }
}

