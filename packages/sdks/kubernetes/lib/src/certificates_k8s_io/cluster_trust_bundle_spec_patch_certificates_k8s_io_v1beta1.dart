// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ClusterTrustBundleSpec contains the signer and trust anchors.
class ClusterTrustBundleSpecPatchCertificatesK8sIoV1beta1 {
  /// signerName indicates the associated signer, if any.
  ///
  /// In order to create or update a ClusterTrustBundle that sets signerName, you must have the following cluster-scoped permission: group=certificates.k8s.io resource=signers resourceName=&lt;the signer name&gt; verb=attest.
  ///
  /// If signerName is not empty, then the ClusterTrustBundle object must be named with the signer name as a prefix (translating slashes to colons). For example, for the signer name `example.com/foo`, valid ClusterTrustBundle object names include `example.com:foo:abc` and `example.com:foo:v1`.
  ///
  /// If signerName is empty, then the ClusterTrustBundle object's name must not have such a prefix.
  ///
  /// List/watch requests for ClusterTrustBundles can filter on this field using a `spec.signerName=NAME` field selector.
  final pulumi.Input<String>? signerName;
  /// trustBundle contains the individual X.509 trust anchors for this bundle, as PEM bundle of PEM-wrapped, DER-formatted X.509 certificates.
  ///
  /// The data must consist only of PEM certificate blocks that parse as valid X.509 certificates.  Each certificate must include a basic constraints extension with the CA bit set.  The API server will reject objects that contain duplicate certificates, or that use PEM block headers.
  ///
  /// Users of ClusterTrustBundles, including Kubelet, are free to reorder and deduplicate certificate blocks in this file according to their own logic, as well as to drop PEM block headers and inter-block data.
  final pulumi.Input<String>? trustBundle;

  /// Creates a new [ClusterTrustBundleSpecPatchCertificatesK8sIoV1beta1].
  /// [signerName] signerName indicates the associated signer, if any.
  /// [trustBundle] trustBundle contains the individual X.509 trust anchors for this bundle, as PEM bundle of PEM-wrapped, DER-formatted X.509 certificates.
  const ClusterTrustBundleSpecPatchCertificatesK8sIoV1beta1({
    this.signerName,
    this.trustBundle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signerName': ?signerName,
      'trustBundle': ?trustBundle,
    };
  }

  factory ClusterTrustBundleSpecPatchCertificatesK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return ClusterTrustBundleSpecPatchCertificatesK8sIoV1beta1(
      signerName: (() { final guardedValue = map['signerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustBundle: (() { final guardedValue = map['trustBundle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

