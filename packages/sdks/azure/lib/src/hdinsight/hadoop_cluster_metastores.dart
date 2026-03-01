// ignore_for_file: unused_element, unnecessary_cast

import 'hadoop_cluster_metastores_ambari.dart';
import 'hadoop_cluster_metastores_hive.dart';
import 'hadoop_cluster_metastores_oozie.dart';

class HadoopClusterMetastores {
  /// An `ambari` block as defined below.
  final HadoopClusterMetastoresAmbari? ambari;
  /// A `hive` block as defined below.
  final HadoopClusterMetastoresHive? hive;
  /// An `oozie` block as defined below.
  final HadoopClusterMetastoresOozie? oozie;

  /// Creates a new [HadoopClusterMetastores].
  /// [ambari] An `ambari` block as defined below.
  /// [hive] A `hive` block as defined below.
  /// [oozie] An `oozie` block as defined below.
  HadoopClusterMetastores({
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

  factory HadoopClusterMetastores.fromMap(Map<String, dynamic> map) {
    return HadoopClusterMetastores(
      ambari: map['ambari'] == null ? null : HadoopClusterMetastoresAmbari.fromMap((map['ambari'] as Map).cast<String, dynamic>()),
      hive: map['hive'] == null ? null : HadoopClusterMetastoresHive.fromMap((map['hive'] as Map).cast<String, dynamic>()),
      oozie: map['oozie'] == null ? null : HadoopClusterMetastoresOozie.fromMap((map['oozie'] as Map).cast<String, dynamic>()),
    );
  }
}

