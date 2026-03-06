// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GdcSparkApplicationSparkSqlApplicationConfigQueryList {
  /// The queries to run.
  final pulumi.Input<List<String>> queries;

  /// Creates a new [GdcSparkApplicationSparkSqlApplicationConfigQueryList].
  /// [queries] The queries to run.
  const GdcSparkApplicationSparkSqlApplicationConfigQueryList({
    required this.queries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queries': queries,
    };
  }

  factory GdcSparkApplicationSparkSqlApplicationConfigQueryList.fromMap(Map<String, dynamic> map) {
    return GdcSparkApplicationSparkSqlApplicationConfigQueryList(
      queries: pulumi.Input.fromValue((map['queries'] as List).cast<String>()),
    );
  }
}

