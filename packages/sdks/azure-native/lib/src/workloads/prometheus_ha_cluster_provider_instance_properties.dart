// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Gets or sets the PrometheusHaCluster provider properties.
class PrometheusHaClusterProviderInstanceProperties {
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

  /// Creates a new [PrometheusHaClusterProviderInstanceProperties].
  /// [clusterName] Gets or sets the clusterName.
  /// [hostname] Gets or sets the target machine name.
  /// [prometheusUrl] URL of the Node Exporter endpoint.
  /// [providerType] The provider type. For example, the value can be SapHana.
  /// [sid] Gets or sets the cluster sid.
  /// [sslCertificateUri] Gets or sets the blob URI to SSL certificate for the HA cluster exporter.
  /// [sslPreference] Gets or sets certificate preference if secure communication is enabled.
  const PrometheusHaClusterProviderInstanceProperties({
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

  factory PrometheusHaClusterProviderInstanceProperties.fromMap(Map<String, dynamic> map) {
    return PrometheusHaClusterProviderInstanceProperties(
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prometheusUrl: (() { final guardedValue = map['prometheusUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      providerType: pulumi.Input.fromValue(map['providerType'] as String),
      sid: (() { final guardedValue = map['sid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCertificateUri: (() { final guardedValue = map['sslCertificateUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslPreference: (() { final guardedValue = map['sslPreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
