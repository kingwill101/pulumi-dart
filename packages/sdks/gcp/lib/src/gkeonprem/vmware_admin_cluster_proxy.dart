// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VmwareAdminClusterProxy {
  /// A comma-separated list of IP addresses, IP address ranges,
  /// host names, and domain names that should not go through the proxy server.
  final pulumi.Input<String>? noProxy;
  /// The proxy url.
  final pulumi.Input<String> url;

  /// Creates a new [VmwareAdminClusterProxy].
  /// [noProxy] A comma-separated list of IP addresses, IP address ranges,
  /// [url] The proxy url.
  const VmwareAdminClusterProxy({
    this.noProxy,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'noProxy': ?noProxy,
      'url': url,
    };
  }

  factory VmwareAdminClusterProxy.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterProxy(
      noProxy: (() { final guardedValue = map['noProxy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

