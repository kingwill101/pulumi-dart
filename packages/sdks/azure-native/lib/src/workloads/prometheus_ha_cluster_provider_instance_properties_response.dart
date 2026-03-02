// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the PrometheusHaCluster provider properties.
class PrometheusHaClusterProviderInstancePropertiesResponse {
  /// Gets or sets the clusterName.
  final pulumi.Input<String>? clusterName;
  /// Gets or sets the target machine name.
  final pulumi.Input<String>? hostname;
  /// URL of the Node Exporter endpoint.
  final pulumi.Input<String>? prometheusUrl;
  /// The provider type. For example, the value can be SapHana.
  /// Expected value is 'PrometheusHaCluster'.
  final pulumi.Input<String> providerType;
  /// Gets or sets the cluster sid.
  final pulumi.Input<String>? sid;
  /// Gets or sets the blob URI to SSL certificate for the HA cluster exporter.
  final pulumi.Input<String>? sslCertificateUri;
  /// Gets or sets certificate preference if secure communication is enabled.
  final pulumi.Input<String>? sslPreference;

  /// Creates a new [PrometheusHaClusterProviderInstancePropertiesResponse].
  /// [clusterName] Gets or sets the clusterName.
  /// [hostname] Gets or sets the target machine name.
  /// [prometheusUrl] URL of the Node Exporter endpoint.
  /// [providerType] The provider type. For example, the value can be SapHana.
  /// [sid] Gets or sets the cluster sid.
  /// [sslCertificateUri] Gets or sets the blob URI to SSL certificate for the HA cluster exporter.
  /// [sslPreference] Gets or sets certificate preference if secure communication is enabled.
  PrometheusHaClusterProviderInstancePropertiesResponse({
    this.clusterName,
    this.hostname,
    this.prometheusUrl,
    required this.providerType,
    this.sid,
    this.sslCertificateUri,
    this.sslPreference,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'hostname': ?hostname,
      'prometheusUrl': ?prometheusUrl,
      'providerType': providerType,
      'sid': ?sid,
      'sslCertificateUri': ?sslCertificateUri,
      'sslPreference': ?sslPreference,
    };
  }

  factory PrometheusHaClusterProviderInstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return PrometheusHaClusterProviderInstancePropertiesResponse(
      clusterName: map['clusterName'] == null ? null : (map['clusterName']! as String).input(),
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      prometheusUrl: map['prometheusUrl'] == null ? null : (map['prometheusUrl']! as String).input(),
      providerType: (map['providerType'] as String).input(),
      sid: map['sid'] == null ? null : (map['sid']! as String).input(),
      sslCertificateUri: map['sslCertificateUri'] == null ? null : (map['sslCertificateUri']! as String).input(),
      sslPreference: map['sslPreference'] == null ? null : (map['sslPreference']! as String).input(),
    );
  }
}

