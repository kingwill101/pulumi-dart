// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_reverse_proxy_certificate_common_names_common_name.dart';

class ClusterReverseProxyCertificateCommonNames {
  /// A `commonNames` block as defined below.
  final pulumi.Input<List<ClusterReverseProxyCertificateCommonNamesCommonName>> commonNames;
  /// The X509 Store where the Certificate Exists, such as `My`.
  final pulumi.Input<String> x509StoreName;

  /// Creates a new [ClusterReverseProxyCertificateCommonNames].
  /// [commonNames] A `commonNames` block as defined below.
  /// [x509StoreName] The X509 Store where the Certificate Exists, such as `My`.
  const ClusterReverseProxyCertificateCommonNames({
    required this.commonNames,
    required this.x509StoreName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonNames': pulumi.Input.mapInputValue<List<ClusterReverseProxyCertificateCommonNamesCommonName>, List<Map<String, dynamic>>>(commonNames, (value) => pulumi.Input.encodeList<ClusterReverseProxyCertificateCommonNamesCommonName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'x509StoreName': x509StoreName,
    };
  }

  factory ClusterReverseProxyCertificateCommonNames.fromMap(Map<String, dynamic> map) {
    return ClusterReverseProxyCertificateCommonNames(
      commonNames: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterReverseProxyCertificateCommonNamesCommonName>(map['commonNames']!, (value) => ClusterReverseProxyCertificateCommonNamesCommonName.fromMap((value as Map).cast<String, dynamic>()))),
      x509StoreName: pulumi.Input.fromValue(map['x509StoreName'] as String),
    );
  }
}
