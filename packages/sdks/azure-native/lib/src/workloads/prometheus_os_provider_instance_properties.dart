// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the PrometheusOS provider properties.
class PrometheusOsProviderInstanceProperties {
  /// URL of the Node Exporter endpoint
  final pulumi.Input<String>? prometheusUrl;
  /// The provider type. For example, the value can be SapHana.
  /// Expected value is 'PrometheusOS'.
  final pulumi.Input<String> providerType;
  /// Gets or sets the SAP System Identifier
  final pulumi.Input<String>? sapSid;
  /// Gets or sets the blob URI to SSL certificate for the prometheus node exporter.
  final pulumi.Input<String>? sslCertificateUri;
  /// Gets or sets certificate preference if secure communication is enabled.
  final pulumi.Input<String>? sslPreference;

  /// Creates a new [PrometheusOsProviderInstanceProperties].
  /// [prometheusUrl] URL of the Node Exporter endpoint
  /// [providerType] The provider type. For example, the value can be SapHana.
  /// [sapSid] Gets or sets the SAP System Identifier
  /// [sslCertificateUri] Gets or sets the blob URI to SSL certificate for the prometheus node exporter.
  /// [sslPreference] Gets or sets certificate preference if secure communication is enabled.
  PrometheusOsProviderInstanceProperties({
    this.prometheusUrl,
    required this.providerType,
    this.sapSid,
    this.sslCertificateUri,
    this.sslPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prometheusUrl': ?prometheusUrl,
      'providerType': providerType,
      'sapSid': ?sapSid,
      'sslCertificateUri': ?sslCertificateUri,
      'sslPreference': ?sslPreference,
    };
  }

  factory PrometheusOsProviderInstanceProperties.fromMap(Map<String, dynamic> map) {
    return PrometheusOsProviderInstanceProperties(
      prometheusUrl: map['prometheusUrl'] == null ? null : (map['prometheusUrl']! as String).input(),
      providerType: (map['providerType'] as String).input(),
      sapSid: map['sapSid'] == null ? null : (map['sapSid']! as String).input(),
      sslCertificateUri: map['sslCertificateUri'] == null ? null : (map['sslCertificateUri']! as String).input(),
      sslPreference: map['sslPreference'] == null ? null : (map['sslPreference']! as String).input(),
    );
  }
}

