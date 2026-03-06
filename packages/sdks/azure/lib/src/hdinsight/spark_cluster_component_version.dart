// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SparkClusterComponentVersion {
  /// The version of Spark which should be used for this HDInsight Spark Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> spark;

  /// Creates a new [SparkClusterComponentVersion].
  /// [spark] The version of Spark which should be used for this HDInsight Spark Cluster. Changing this forces a new resource to be created.
  const SparkClusterComponentVersion({
    required this.spark,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'spark': spark,
    };
  }

  factory SparkClusterComponentVersion.fromMap(Map<String, dynamic> map) {
    return SparkClusterComponentVersion(
      spark: pulumi.Input.fromValue(map['spark'] as String),
    );
  }
}

