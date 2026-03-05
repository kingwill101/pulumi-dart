// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClientTlsPolicyClientCertificateCertificateProviderInstance {
  /// Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to "google_cloud_private_spiffe" to use Certificate Authority Service certificate provider instance.
  final pulumi.Input<String> pluginInstance;

  /// Creates a new [ClientTlsPolicyClientCertificateCertificateProviderInstance].
  /// [pluginInstance] Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to "google_cloud_private_spiffe" to use Certificate Authority Service certificate provider instance.
  ClientTlsPolicyClientCertificateCertificateProviderInstance({
    required this.pluginInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pluginInstance': pluginInstance,
    };
  }

  factory ClientTlsPolicyClientCertificateCertificateProviderInstance.fromMap(Map<String, dynamic> map) {
    return ClientTlsPolicyClientCertificateCertificateProviderInstance(
      pluginInstance: pulumi.Input.fromValue(map['pluginInstance'] as String),
    );
  }
}

