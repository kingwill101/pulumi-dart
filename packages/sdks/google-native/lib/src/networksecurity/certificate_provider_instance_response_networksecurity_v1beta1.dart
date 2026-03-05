// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification of a TLS certificate provider instance. Workloads may have one or more CertificateProvider instances (plugins) and one of them is enabled and configured by specifying this message. Workloads use the values from this message to locate and load the CertificateProvider instance configuration.
class CertificateProviderInstanceResponseNetworksecurityV1beta1 {
  /// Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to "google_cloud_private_spiffe" to use Certificate Authority Service certificate provider instance.
  final pulumi.Input<String> pluginInstance;

  /// Creates a new [CertificateProviderInstanceResponseNetworksecurityV1beta1].
  /// [pluginInstance] Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to "google_cloud_private_spiffe" to use Certificate Authority Service certificate provider instance.
  CertificateProviderInstanceResponseNetworksecurityV1beta1({
    required this.pluginInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pluginInstance': pluginInstance,
    };
  }

  factory CertificateProviderInstanceResponseNetworksecurityV1beta1.fromMap(Map<String, dynamic> map) {
    return CertificateProviderInstanceResponseNetworksecurityV1beta1(
      pluginInstance: pulumi.Input.fromValue(map['pluginInstance'] as String),
    );
  }
}

