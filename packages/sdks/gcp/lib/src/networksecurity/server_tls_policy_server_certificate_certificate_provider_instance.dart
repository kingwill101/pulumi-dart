// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServerTlsPolicyServerCertificateCertificateProviderInstance {
  /// Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to "google_cloud_private_spiffe" to use Certificate Authority Service certificate provider instance.
  final pulumi.Input<String> pluginInstance;

  /// Creates a new [ServerTlsPolicyServerCertificateCertificateProviderInstance].
  /// [pluginInstance] Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to "google_cloud_private_spiffe" to use Certificate Authority Service certificate provider instance.
  ServerTlsPolicyServerCertificateCertificateProviderInstance({
    required this.pluginInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pluginInstance': pluginInstance,
    };
  }

  factory ServerTlsPolicyServerCertificateCertificateProviderInstance.fromMap(Map<String, dynamic> map) {
    return ServerTlsPolicyServerCertificateCertificateProviderInstance(
      pluginInstance: (map['pluginInstance'] as String).input(),
    );
  }
}

