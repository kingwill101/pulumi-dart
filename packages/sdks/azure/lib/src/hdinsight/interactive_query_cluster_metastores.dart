// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interactive_query_cluster_metastores_ambari.dart';
import 'interactive_query_cluster_metastores_hive.dart';
import 'interactive_query_cluster_metastores_oozie.dart';

class InteractiveQueryClusterMetastores {
  /// An `ambari` block as defined below.
  final pulumi.Input<InteractiveQueryClusterMetastoresAmbari>? ambari;
  /// A `hive` block as defined below.
  final pulumi.Input<InteractiveQueryClusterMetastoresHive>? hive;
  /// An `oozie` block as defined below.
  final pulumi.Input<InteractiveQueryClusterMetastoresOozie>? oozie;

  /// Creates a new [InteractiveQueryClusterMetastores].
  /// [ambari] An `ambari` block as defined below.
  /// [hive] A `hive` block as defined below.
  /// [oozie] An `oozie` block as defined below.
  InteractiveQueryClusterMetastores({
    this.ambari,
    this.hive,
    this.oozie,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ambari': ?pulumi.Input.mapOptionalInputValue<InteractiveQueryClusterMetastoresAmbari, Map<String, dynamic>>(ambari, (value) => value.toMap()),
      'hive': ?pulumi.Input.mapOptionalInputValue<InteractiveQueryClusterMetastoresHive, Map<String, dynamic>>(hive, (value) => value.toMap()),
      'oozie': ?pulumi.Input.mapOptionalInputValue<InteractiveQueryClusterMetastoresOozie, Map<String, dynamic>>(oozie, (value) => value.toMap()),
    };
  }

  factory InteractiveQueryClusterMetastores.fromMap(Map<String, dynamic> map) {
    return InteractiveQueryClusterMetastores(
      ambari: (() { final guardedValue = map['ambari']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InteractiveQueryClusterMetastoresAmbari.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hive: (() { final guardedValue = map['hive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InteractiveQueryClusterMetastoresHive.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      oozie: (() { final guardedValue = map['oozie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InteractiveQueryClusterMetastoresOozie.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

