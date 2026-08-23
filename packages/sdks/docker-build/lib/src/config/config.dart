// ignore_for_file: unused_element, unnecessary_cast

import 'dart:convert';
import 'package:pulumi/pulumi.dart' as pulumi;
import '../index/registry.dart';

/// Configuration values for the docker-build package.
class DockerBuildConfig {
  const DockerBuildConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// The build daemon's address.
  String? get host {
    final raw = _raw('host');
    return raw;
  }

  bool get hostIsSecret => _isSecret('host');

  List<Registry>? get registries {
    final raw = _raw('registries');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<Registry>(jsonDecode(guardedValue), (value) => Registry.fromMap((value as Map).cast<String, dynamic>())); })();
  }

  bool get registriesIsSecret => _isSecret('registries');

}

const config = DockerBuildConfig();
