// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClientTlsPolicyServerValidationCaCertificateProviderInstance {
  /// Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to "google_cloud_private_spiffe" to use Certificate Authority Service certificate provider instance.
  final pulumi.Input<String> pluginInstance;

  /// Creates a new [ClientTlsPolicyServerValidationCaCertificateProviderInstance].
  /// [pluginInstance] Plugin instance name, used to locate and load CertificateProvider instance configuration. Set to "google_cloud_private_spiffe" to use Certificate Authority Service certificate provider instance.
  const ClientTlsPolicyServerValidationCaCertificateProviderInstance({
    required this.pluginInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pluginInstance': pluginInstance,
    };
  }

  factory ClientTlsPolicyServerValidationCaCertificateProviderInstance.fromMap(Map<String, dynamic> map) {
    return ClientTlsPolicyServerValidationCaCertificateProviderInstance(
      pluginInstance: pulumi.Input.fromValue(map['pluginInstance'] as String),
    );
  }
}

