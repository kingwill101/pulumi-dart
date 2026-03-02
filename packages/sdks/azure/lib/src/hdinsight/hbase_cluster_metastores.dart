// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hbase_cluster_metastores_ambari.dart';
import 'hbase_cluster_metastores_hive.dart';
import 'hbase_cluster_metastores_oozie.dart';

class HBaseClusterMetastores {
  /// An `ambari` block as defined below.
  final pulumi.Input<HBaseClusterMetastoresAmbari>? ambari;
  /// A `hive` block as defined below.
  final pulumi.Input<HBaseClusterMetastoresHive>? hive;
  /// An `oozie` block as defined below.
  final pulumi.Input<HBaseClusterMetastoresOozie>? oozie;

  /// Creates a new [HBaseClusterMetastores].
  /// [ambari] An `ambari` block as defined below.
  /// [hive] A `hive` block as defined below.
  /// [oozie] An `oozie` block as defined below.
  HBaseClusterMetastores({
    this.ambari,
    this.hive,
    this.oozie,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ambari': ?pulumi.Input.mapOptionalInputValue<HBaseClusterMetastoresAmbari, Map<String, dynamic>>(ambari, (value) => value.toMap()),
      'hive': ?pulumi.Input.mapOptionalInputValue<HBaseClusterMetastoresHive, Map<String, dynamic>>(hive, (value) => value.toMap()),
      'oozie': ?pulumi.Input.mapOptionalInputValue<HBaseClusterMetastoresOozie, Map<String, dynamic>>(oozie, (value) => value.toMap()),
    };
  }

  factory HBaseClusterMetastores.fromMap(Map<String, dynamic> map) {
    return HBaseClusterMetastores(
      ambari: map['ambari'] == null ? null : (HBaseClusterMetastoresAmbari.fromMap((map['ambari'] as Map).cast<String, dynamic>())).input(),
      hive: map['hive'] == null ? null : (HBaseClusterMetastoresHive.fromMap((map['hive'] as Map).cast<String, dynamic>())).input(),
      oozie: map['oozie'] == null ? null : (HBaseClusterMetastoresOozie.fromMap((map['oozie'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

