// ignore_for_file: unused_element, unnecessary_cast


/// Gets or sets the PrometheusOS provider properties.
class PrometheusOsProviderInstancePropertiesResponse {
  /// URL of the Node Exporter endpoint
  final String? prometheusUrl;
  /// The provider type. For example, the value can be SapHana.
  /// Expected value is 'PrometheusOS'.
  final String providerType;
  /// Gets or sets the SAP System Identifier
  final String? sapSid;
  /// Gets or sets the blob URI to SSL certificate for the prometheus node exporter.
  final String? sslCertificateUri;
  /// Gets or sets certificate preference if secure communication is enabled.
  final String? sslPreference;

  /// Creates a new [PrometheusOsProviderInstancePropertiesResponse].
  /// [prometheusUrl] URL of the Node Exporter endpoint
  /// [providerType] The provider type. For example, the value can be SapHana.
  /// [sapSid] Gets or sets the SAP System Identifier
  /// [sslCertificateUri] Gets or sets the blob URI to SSL certificate for the prometheus node exporter.
  /// [sslPreference] Gets or sets certificate preference if secure communication is enabled.
  PrometheusOsProviderInstancePropertiesResponse({
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
      prometheusUrl: map['prometheusUrl'] == null ? null : map['prometheusUrl'] as String,
      providerType: map['providerType'] as String,
      sapSid: map['sapSid'] == null ? null : map['sapSid'] as String,
      sslCertificateUri: map['sslCertificateUri'] == null ? null : map['sslCertificateUri'] as String,
      sslPreference: map['sslPreference'] == null ? null : map['sslPreference'] as String,
    );
  }
}

