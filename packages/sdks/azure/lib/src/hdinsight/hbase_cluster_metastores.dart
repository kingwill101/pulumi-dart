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
  const HBaseClusterMetastores({
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
      ambari: (() { final guardedValue = map['ambari']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HBaseClusterMetastoresAmbari.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hive: (() { final guardedValue = map['hive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HBaseClusterMetastoresHive.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oozie: (() { final guardedValue = map['oozie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HBaseClusterMetastoresOozie.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
