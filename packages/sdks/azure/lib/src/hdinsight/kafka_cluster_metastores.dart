// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kafka_cluster_metastores_ambari.dart';
import 'kafka_cluster_metastores_hive.dart';
import 'kafka_cluster_metastores_oozie.dart';

class KafkaClusterMetastores {
  /// An `ambari` block as defined below.
  final pulumi.Input<KafkaClusterMetastoresAmbari>? ambari;
  /// A `hive` block as defined below.
  final pulumi.Input<KafkaClusterMetastoresHive>? hive;
  /// An `oozie` block as defined below.
  final pulumi.Input<KafkaClusterMetastoresOozie>? oozie;

  /// Creates a new [KafkaClusterMetastores].
  /// [ambari] An `ambari` block as defined below.
  /// [hive] A `hive` block as defined below.
  /// [oozie] An `oozie` block as defined below.
  const KafkaClusterMetastores({
    this.ambari,
    this.hive,
    this.oozie,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ambari': ?pulumi.Input.mapOptionalInputValue<KafkaClusterMetastoresAmbari, Map<String, dynamic>>(ambari, (value) => value.toMap()),
      'hive': ?pulumi.Input.mapOptionalInputValue<KafkaClusterMetastoresHive, Map<String, dynamic>>(hive, (value) => value.toMap()),
      'oozie': ?pulumi.Input.mapOptionalInputValue<KafkaClusterMetastoresOozie, Map<String, dynamic>>(oozie, (value) => value.toMap()),
    };
  }

  factory KafkaClusterMetastores.fromMap(Map<String, dynamic> map) {
    return KafkaClusterMetastores(
      ambari: (() { final guardedValue = map['ambari']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KafkaClusterMetastoresAmbari.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hive: (() { final guardedValue = map['hive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KafkaClusterMetastoresHive.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oozie: (() { final guardedValue = map['oozie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KafkaClusterMetastoresOozie.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

