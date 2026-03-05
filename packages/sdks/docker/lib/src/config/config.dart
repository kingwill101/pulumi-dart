// ignore_for_file: unused_element, unnecessary_cast

import 'dart:convert';
import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_auth.dart';

/// Configuration values for the docker package.
class DockerConfig {
  const DockerConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// PEM-encoded content of Docker host CA certificate
  String? get caMaterial {
    final raw = _raw('caMaterial');
    return raw;
  }

  bool get caMaterialIsSecret => _isSecret('caMaterial');

  /// PEM-encoded content of Docker client certificate
  String? get certMaterial {
    final raw = _raw('certMaterial');
    return raw;
  }

  bool get certMaterialIsSecret => _isSecret('certMaterial');

  /// Path to directory with Docker TLS config
  String? get certPath {
    final raw = _raw('certPath');
    return raw;
  }

  bool get certPathIsSecret => _isSecret('certPath');

  /// The name of the Docker context to use. Can also be set via `DOCKER_CONTEXT` environment variable. Overrides the `host` if set.
  String? get context {
    final raw = _raw('context');
    return raw;
  }

  bool get contextIsSecret => _isSecret('context');

  /// If set to `true`, the provider will not check if the Docker daemon is running. This is useful for resources/data_sourcess that do not require a running Docker daemon, such as the data source `docker.RegistryImage`.
  bool? get disableDockerDaemonCheck {
    final raw = _raw('disableDockerDaemonCheck');
    return (raw).toBool();
  }

  bool get disableDockerDaemonCheckIsSecret => _isSecret('disableDockerDaemonCheck');

  /// The Docker daemon address
  String? get host {
    final raw = _raw('host');
    return raw;
  }

  String requireHost() {
    final value = host;
    if (value == null) {
      throw ArgumentError("Missing required config value 'host'.");
    }
    return value;
  }

  bool get hostIsSecret => _isSecret('host');

  /// PEM-encoded content of Docker client private key
  String? get keyMaterial {
    final raw = _raw('keyMaterial');
    return raw;
  }

  bool get keyMaterialIsSecret => _isSecret('keyMaterial');

  List<RegistryAuth>? get registryAuth {
    final raw = _raw('registryAuth');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegistryAuth>(jsonDecode(guardedValue), (value) => RegistryAuth.fromMap((value as Map).cast<String, dynamic>())); })();
  }

  bool get registryAuthIsSecret => _isSecret('registryAuth');

  /// Additional SSH option flags to be appended when using `ssh://` protocol
  List<String>? get sshOpts {
    final raw = _raw('sshOpts');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return (jsonDecode(guardedValue) as List).cast<String>(); })();
  }

  bool get sshOptsIsSecret => _isSecret('sshOpts');

}

final config = DockerConfig();

