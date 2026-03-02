// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterUserManagedKeysConfig {
  /// The Certificate Authority Service caPool to use for the aggreation CA in this cluster.
  final pulumi.Input<String> aggregationCa;
  /// The Certificate Authority Service caPool to use for the cluster CA in this cluster.
  final pulumi.Input<String> clusterCa;
  /// The Cloud KMS cryptoKey to use for Confidential Hyperdisk on the control plane nodes.
  final pulumi.Input<String> controlPlaneDiskEncryptionKey;
  /// The Certificate Authority Service caPool to use for the etcd API CA in this cluster.
  final pulumi.Input<String> etcdApiCa;
  /// The Certificate Authority Service caPool to use for the etcd peer CA in this cluster.
  final pulumi.Input<String> etcdPeerCa;
  /// Resource path of the Cloud KMS cryptoKey to use for encryption of internal etcd backups.
  final pulumi.Input<String> gkeopsEtcdBackupEncryptionKey;
  /// The Cloud KMS cryptoKeyVersions to use for signing service account JWTs issued by this cluster.
  final pulumi.Input<List<String>> serviceAccountSigningKeys;
  /// The Cloud KMS cryptoKeyVersions to use for verifying service account JWTs issued by this cluster.
  final pulumi.Input<List<String>> serviceAccountVerificationKeys;

  /// Creates a new [GetClusterUserManagedKeysConfig].
  /// [aggregationCa] The Certificate Authority Service caPool to use for the aggreation CA in this cluster.
  /// [clusterCa] The Certificate Authority Service caPool to use for the cluster CA in this cluster.
  /// [controlPlaneDiskEncryptionKey] The Cloud KMS cryptoKey to use for Confidential Hyperdisk on the control plane nodes.
  /// [etcdApiCa] The Certificate Authority Service caPool to use for the etcd API CA in this cluster.
  /// [etcdPeerCa] The Certificate Authority Service caPool to use for the etcd peer CA in this cluster.
  /// [gkeopsEtcdBackupEncryptionKey] Resource path of the Cloud KMS cryptoKey to use for encryption of internal etcd backups.
  /// [serviceAccountSigningKeys] The Cloud KMS cryptoKeyVersions to use for signing service account JWTs issued by this cluster.
  /// [serviceAccountVerificationKeys] The Cloud KMS cryptoKeyVersions to use for verifying service account JWTs issued by this cluster.
  GetClusterUserManagedKeysConfig({
    required this.aggregationCa,
    required this.clusterCa,
    required this.controlPlaneDiskEncryptionKey,
    required this.etcdApiCa,
    required this.etcdPeerCa,
    required this.gkeopsEtcdBackupEncryptionKey,
    required this.serviceAccountSigningKeys,
    required this.serviceAccountVerificationKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationCa': aggregationCa,
      'clusterCa': clusterCa,
      'controlPlaneDiskEncryptionKey': controlPlaneDiskEncryptionKey,
      'etcdApiCa': etcdApiCa,
      'etcdPeerCa': etcdPeerCa,
      'gkeopsEtcdBackupEncryptionKey': gkeopsEtcdBackupEncryptionKey,
      'serviceAccountSigningKeys': serviceAccountSigningKeys,
      'serviceAccountVerificationKeys': serviceAccountVerificationKeys,
    };
  }

  factory GetClusterUserManagedKeysConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterUserManagedKeysConfig(
      aggregationCa: (map['aggregationCa'] as String).input(),
      clusterCa: (map['clusterCa'] as String).input(),
      controlPlaneDiskEncryptionKey: (map['controlPlaneDiskEncryptionKey'] as String).input(),
      etcdApiCa: (map['etcdApiCa'] as String).input(),
      etcdPeerCa: (map['etcdPeerCa'] as String).input(),
      gkeopsEtcdBackupEncryptionKey: (map['gkeopsEtcdBackupEncryptionKey'] as String).input(),
      serviceAccountSigningKeys: ((map['serviceAccountSigningKeys'] as List).cast<String>()).input(),
      serviceAccountVerificationKeys: ((map['serviceAccountVerificationKeys'] as List).cast<String>()).input(),
    );
  }
}

