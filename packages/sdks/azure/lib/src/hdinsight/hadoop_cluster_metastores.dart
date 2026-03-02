// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hadoop_cluster_metastores_ambari.dart';
import 'hadoop_cluster_metastores_hive.dart';
import 'hadoop_cluster_metastores_oozie.dart';

class HadoopClusterMetastores {
  /// An `ambari` block as defined below.
  final pulumi.Input<HadoopClusterMetastoresAmbari>? ambari;
  /// A `hive` block as defined below.
  final pulumi.Input<HadoopClusterMetastoresHive>? hive;
  /// An `oozie` block as defined below.
  final pulumi.Input<HadoopClusterMetastoresOozie>? oozie;

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
      'ambari': ?pulumi.Input.mapOptionalInputValue<HadoopClusterMetastoresAmbari, Map<String, dynamic>>(ambari, (value) => value.toMap()),
      'hive': ?pulumi.Input.mapOptionalInputValue<HadoopClusterMetastoresHive, Map<String, dynamic>>(hive, (value) => value.toMap()),
      'oozie': ?pulumi.Input.mapOptionalInputValue<HadoopClusterMetastoresOozie, Map<String, dynamic>>(oozie, (value) => value.toMap()),
    };
  }

  factory HadoopClusterMetastores.fromMap(Map<String, dynamic> map) {
    return HadoopClusterMetastores(
      ambari: map['ambari'] == null ? null : (HadoopClusterMetastoresAmbari.fromMap((map['ambari']! as Map).cast<String, dynamic>())).input(),
      hive: map['hive'] == null ? null : (HadoopClusterMetastoresHive.fromMap((map['hive']! as Map).cast<String, dynamic>())).input(),
      oozie: map['oozie'] == null ? null : (HadoopClusterMetastoresOozie.fromMap((map['oozie']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

