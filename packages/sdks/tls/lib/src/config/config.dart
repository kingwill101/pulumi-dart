// ignore_for_file: unused_element, unnecessary_cast

import 'dart:convert';
import 'package:pulumi/pulumi.dart' as pulumi;
import 'proxy.dart';

/// Configuration values for the tls package.
class TlsConfig {
  const TlsConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// Proxy used by resources and data sources that connect to external endpoints.
  Proxy? get proxy {
    final raw = _raw('proxy');
    return raw == null ? null : Proxy.fromMap((jsonDecode(raw) as Map).cast<String, dynamic>());
  }

  bool get proxyIsSecret => _isSecret('proxy');

}

final config = TlsConfig();

