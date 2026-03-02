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
  VmwareAdminClusterProxy({
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
      noProxy: map['noProxy'] == null ? null : (map['noProxy']! as String).input(),
      url: (map['url'] as String).input(),
    );
  }
}

