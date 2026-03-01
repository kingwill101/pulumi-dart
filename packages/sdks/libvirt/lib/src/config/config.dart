// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration values for the libvirt package.
class LibvirtConfig {
  const LibvirtConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// Libvirt connection URI. Defaults to `qemu:///system` if not specified. See [libvirt URI documentation](https://libvirt.org/uri.html) for details.
  String? get uri {
    final raw = _raw('uri');
    return raw;
  }

  bool get uriIsSecret => _isSecret('uri');

}

final config = LibvirtConfig();

