// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spark_cluster_metastores_ambari.dart';
import 'spark_cluster_metastores_hive.dart';
import 'spark_cluster_metastores_oozie.dart';

class SparkClusterMetastores {
  /// An `ambari` block as defined below.
  final pulumi.Input<SparkClusterMetastoresAmbari>? ambari;
  /// A `hive` block as defined below.
  final pulumi.Input<SparkClusterMetastoresHive>? hive;
  /// An `oozie` block as defined below.
  final pulumi.Input<SparkClusterMetastoresOozie>? oozie;

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
      'ambari': ?pulumi.Input.mapOptionalInputValue<SparkClusterMetastoresAmbari, Map<String, dynamic>>(ambari, (value) => value.toMap()),
      'hive': ?pulumi.Input.mapOptionalInputValue<SparkClusterMetastoresHive, Map<String, dynamic>>(hive, (value) => value.toMap()),
      'oozie': ?pulumi.Input.mapOptionalInputValue<SparkClusterMetastoresOozie, Map<String, dynamic>>(oozie, (value) => value.toMap()),
    };
  }

  factory SparkClusterMetastores.fromMap(Map<String, dynamic> map) {
    return SparkClusterMetastores(
      ambari: map['ambari'] == null ? null : (SparkClusterMetastoresAmbari.fromMap((map['ambari'] as Map).cast<String, dynamic>())).input(),
      hive: map['hive'] == null ? null : (SparkClusterMetastoresHive.fromMap((map['hive'] as Map).cast<String, dynamic>())).input(),
      oozie: map['oozie'] == null ? null : (SparkClusterMetastoresOozie.fromMap((map['oozie'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

