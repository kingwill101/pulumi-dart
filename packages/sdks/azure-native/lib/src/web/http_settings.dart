// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forward_proxy.dart';
import 'http_settings_routes.dart';

/// The configuration settings of the HTTP requests for authentication and authorization requests made against App Service Authentication/Authorization.
class HttpSettings {
  /// The configuration settings of a forward proxy used to make the requests.
  final pulumi.Input<ForwardProxy>? forwardProxy;

  /// &lt;code&gt;false&lt;/code&gt; if the authentication/authorization responses not having the HTTPS scheme are permissible; otherwise, &lt;code&gt;true&lt;/code&gt;.
  final pulumi.Input<bool>? requireHttps;

  /// The configuration settings of the paths HTTP requests.
  final pulumi.Input<HttpSettingsRoutes>? routes;

  /// Creates a new [HttpSettings].
  /// [forwardProxy] The configuration settings of a forward proxy used to make the requests.
  /// [requireHttps] &lt;code&gt;false&lt;/code&gt; if the authentication/authorization responses not having the HTTPS scheme are permissible; otherwise, &lt;code&gt;true&lt;/code&gt;.
  /// [routes] The configuration settings of the paths HTTP requests.
  HttpSettings({this.forwardProxy, this.requireHttps, this.routes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardProxy':
          ?pulumi.Input.mapOptionalInputValue<
            ForwardProxy,
            Map<String, dynamic>
          >(forwardProxy, (value) => value.toMap()),
      'requireHttps': ?requireHttps,
      'routes':
          ?pulumi.Input.mapOptionalInputValue<
            HttpSettingsRoutes,
            Map<String, dynamic>
          >(routes, (value) => value.toMap()),
    };
  }

  factory HttpSettings.fromMap(Map<String, dynamic> map) {
    return HttpSettings(
      forwardProxy: (() {
        final guardedValue = map['forwardProxy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ForwardProxy.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      requireHttps: (() {
        final guardedValue = map['requireHttps'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      routes: (() {
        final guardedValue = map['routes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          HttpSettingsRoutes.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
