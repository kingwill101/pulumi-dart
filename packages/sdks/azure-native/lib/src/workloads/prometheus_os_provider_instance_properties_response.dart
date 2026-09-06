// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the PrometheusOS provider properties.
class PrometheusOsProviderInstancePropertiesResponse {
  /// URL of the Node Exporter endpoint
  final pulumi.Input<String?>? prometheusUrl;
  /// The provider type. For example, the value can be SapHana.
  /// Expected value is 'PrometheusOS'.
  final pulumi.Input<String> providerType;
  /// Gets or sets the SAP System Identifier
  final pulumi.Input<String?>? sapSid;
  /// Gets or sets the blob URI to SSL certificate for the prometheus node exporter.
  final pulumi.Input<String?>? sslCertificateUri;
  /// Gets or sets certificate preference if secure communication is enabled.
  final pulumi.Input<String?>? sslPreference;

  /// Creates a new [PrometheusOsProviderInstancePropertiesResponse].
  /// [prometheusUrl] URL of the Node Exporter endpoint
  /// [providerType] The provider type. For example, the value can be SapHana.
  /// [sapSid] Gets or sets the SAP System Identifier
  /// [sslCertificateUri] Gets or sets the blob URI to SSL certificate for the prometheus node exporter.
  /// [sslPreference] Gets or sets certificate preference if secure communication is enabled.
  const PrometheusOsProviderInstancePropertiesResponse({
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

  factory PrometheusOsProviderInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrometheusOsProviderInstancePropertiesResponse(
      prometheusUrl: (() { final guardedValue = map['prometheusUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerType: pulumi.Input.fromValue(map['providerType'] as String),
      sapSid: (() { final guardedValue = map['sapSid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCertificateUri: (() { final guardedValue = map['sslCertificateUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslPreference: (() { final guardedValue = map['sslPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
