// ignore_for_file: unused_element, unnecessary_cast

import 'spark_cluster_metastores_ambari.dart';
import 'spark_cluster_metastores_hive.dart';
import 'spark_cluster_metastores_oozie.dart';

class SparkClusterMetastores {
  /// An `ambari` block as defined below.
  final SparkClusterMetastoresAmbari? ambari;
  /// A `hive` block as defined below.
  final SparkClusterMetastoresHive? hive;
  /// An `oozie` block as defined below.
  final SparkClusterMetastoresOozie? oozie;

  /// Creates a new [SparkClusterMetastores].
  /// [ambari] An `ambari` block as defined below.
  /// [hive] A `hive` block as defined below.
  /// [oozie] An `oozie` block as defined below.
  SparkClusterMetastores({
    this.ambari,
    this.hive,
    this.oozie,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ambari': ?ambari == null ? null : ambari!.toMap(),
      'hive': ?hive == null ? null : hive!.toMap(),
      'oozie': ?oozie == null ? null : oozie!.toMap(),
    };
  }

  factory SparkClusterMetastores.fromMap(Map<String, dynamic> map) {
    return SparkClusterMetastores(
      ambari: map['ambari'] == null ? null : SparkClusterMetastoresAmbari.fromMap((map['ambari'] as Map).cast<String, dynamic>()),
      hive: map['hive'] == null ? null : SparkClusterMetastoresHive.fromMap((map['hive'] as Map).cast<String, dynamic>()),
      oozie: map['oozie'] == null ? null : SparkClusterMetastoresOozie.fromMap((map['oozie'] as Map).cast<String, dynamic>()),
    );
  }
}

