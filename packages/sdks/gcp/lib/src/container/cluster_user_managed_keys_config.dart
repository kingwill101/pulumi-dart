// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterUserManagedKeysConfig {
  /// The Certificate Authority Service caPool to use for the aggreation CA in this cluster.
  final pulumi.Input<String>? aggregationCa;

  /// The Certificate Authority Service caPool to use for the cluster CA in this cluster.
  final pulumi.Input<String>? clusterCa;

  /// The Cloud KMS cryptoKey to use for Confidential Hyperdisk on the control plane nodes.
  final pulumi.Input<String>? controlPlaneDiskEncryptionKey;

  /// The Certificate Authority Service caPool to use for the etcd API CA in this cluster.
  final pulumi.Input<String>? etcdApiCa;

  /// The Certificate Authority Service caPool to use for the etcd peer CA in this cluster.
  final pulumi.Input<String>? etcdPeerCa;

  /// Resource path of the Cloud KMS cryptoKey to use for encryption of internal etcd backups.
  final pulumi.Input<String>? gkeopsEtcdBackupEncryptionKey;

  /// The Cloud KMS cryptoKeyVersions to use for signing service account JWTs issued by this cluster.
  final pulumi.Input<List<String>>? serviceAccountSigningKeys;

  /// The Cloud KMS cryptoKeyVersions to use for verifying service account JWTs issued by this cluster.
  final pulumi.Input<List<String>>? serviceAccountVerificationKeys;

  /// Creates a new [ClusterUserManagedKeysConfig].
  /// [aggregationCa] The Certificate Authority Service caPool to use for the aggreation CA in this cluster.
  /// [clusterCa] The Certificate Authority Service caPool to use for the cluster CA in this cluster.
  /// [controlPlaneDiskEncryptionKey] The Cloud KMS cryptoKey to use for Confidential Hyperdisk on the control plane nodes.
  /// [etcdApiCa] The Certificate Authority Service caPool to use for the etcd API CA in this cluster.
  /// [etcdPeerCa] The Certificate Authority Service caPool to use for the etcd peer CA in this cluster.
  /// [gkeopsEtcdBackupEncryptionKey] Resource path of the Cloud KMS cryptoKey to use for encryption of internal etcd backups.
  /// [serviceAccountSigningKeys] The Cloud KMS cryptoKeyVersions to use for signing service account JWTs issued by this cluster.
  /// [serviceAccountVerificationKeys] The Cloud KMS cryptoKeyVersions to use for verifying service account JWTs issued by this cluster.
  ClusterUserManagedKeysConfig({
    this.aggregationCa,
    this.clusterCa,
    this.controlPlaneDiskEncryptionKey,
    this.etcdApiCa,
    this.etcdPeerCa,
    this.gkeopsEtcdBackupEncryptionKey,
    this.serviceAccountSigningKeys,
    this.serviceAccountVerificationKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationCa': ?aggregationCa,
      'clusterCa': ?clusterCa,
      'controlPlaneDiskEncryptionKey': ?controlPlaneDiskEncryptionKey,
      'etcdApiCa': ?etcdApiCa,
      'etcdPeerCa': ?etcdPeerCa,
      'gkeopsEtcdBackupEncryptionKey': ?gkeopsEtcdBackupEncryptionKey,
      'serviceAccountSigningKeys': ?serviceAccountSigningKeys,
      'serviceAccountVerificationKeys': ?serviceAccountVerificationKeys,
    };
  }

  factory ClusterUserManagedKeysConfig.fromMap(Map<String, dynamic> map) {
    return ClusterUserManagedKeysConfig(
      aggregationCa: (() {
        final guardedValue = map['aggregationCa'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      clusterCa: (() {
        final guardedValue = map['clusterCa'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      controlPlaneDiskEncryptionKey: (() {
        final guardedValue = map['controlPlaneDiskEncryptionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      etcdApiCa: (() {
        final guardedValue = map['etcdApiCa'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      etcdPeerCa: (() {
        final guardedValue = map['etcdPeerCa'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gkeopsEtcdBackupEncryptionKey: (() {
        final guardedValue = map['gkeopsEtcdBackupEncryptionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceAccountSigningKeys: (() {
        final guardedValue = map['serviceAccountSigningKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      serviceAccountVerificationKeys: (() {
        final guardedValue = map['serviceAccountVerificationKeys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
