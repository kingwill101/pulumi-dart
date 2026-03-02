// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HadoopClusterComponentVersion {
  /// The version of Hadoop which should be used for this HDInsight Hadoop Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> hadoop;

  /// Creates a new [HadoopClusterComponentVersion].
  /// [hadoop] The version of Hadoop which should be used for this HDInsight Hadoop Cluster. Changing this forces a new resource to be created.
  HadoopClusterComponentVersion({
    required this.hadoop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hadoop': hadoop,
    };
  }

  factory HadoopClusterComponentVersion.fromMap(Map<String, dynamic> map) {
    return HadoopClusterComponentVersion(
      hadoop: (map['hadoop'] as String).input(),
    );
  }
}

