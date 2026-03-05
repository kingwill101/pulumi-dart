// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_certificate_common_names_common_name.dart';

class ClusterCertificateCommonNames {
  /// A `common_names` block as defined below.
  final pulumi.Input<List<ClusterCertificateCommonNamesCommonName>> commonNames;
  /// The X509 Store where the Certificate Exists, such as `My`.
  final pulumi.Input<String> x509StoreName;

  /// Creates a new [ClusterCertificateCommonNames].
  /// [commonNames] A `common_names` block as defined below.
  /// [x509StoreName] The X509 Store where the Certificate Exists, such as `My`.
  ClusterCertificateCommonNames({
    required this.commonNames,
    required this.x509StoreName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commonNames': pulumi.Input.mapInputValue<List<ClusterCertificateCommonNamesCommonName>, List<Map<String, dynamic>>>(commonNames, (value) => pulumi.Input.encodeList<ClusterCertificateCommonNamesCommonName, Map<String, dynamic>>(value, (value) => value.toMap())),
      'x509StoreName': x509StoreName,
    };
  }

  factory ClusterCertificateCommonNames.fromMap(Map<String, dynamic> map) {
    return ClusterCertificateCommonNames(
      commonNames: pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterCertificateCommonNamesCommonName>(map['commonNames']!, (value) => ClusterCertificateCommonNamesCommonName.fromMap((value as Map).cast<String, dynamic>()))),
      x509StoreName: pulumi.Input.fromValue(map['x509StoreName'] as String),
    );
  }
}

