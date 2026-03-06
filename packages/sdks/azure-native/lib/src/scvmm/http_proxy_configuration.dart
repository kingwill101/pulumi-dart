// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HTTP Proxy configuration for the VM.
class HttpProxyConfiguration {
  /// Gets or sets httpsProxy url.
  final pulumi.Input<String>? httpsProxy;

  /// Creates a new [HttpProxyConfiguration].
  /// [httpsProxy] Gets or sets httpsProxy url.
  const HttpProxyConfiguration({
    this.httpsProxy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpsProxy': ?httpsProxy,
    };
  }

  factory HttpProxyConfiguration.fromMap(Map<String, dynamic> map) {
    return HttpProxyConfiguration(
      httpsProxy: (() { final guardedValue = map['httpsProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

