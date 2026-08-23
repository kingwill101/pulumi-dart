// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mongodb_source_config_exclude_objects_database.dart';

class StreamSourceConfigMongodbSourceConfigExcludeObjects {
  /// MongoDB databases in the cluster.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase>>? databases;

  /// Creates a new [StreamSourceConfigMongodbSourceConfigExcludeObjects].
  /// [databases] MongoDB databases in the cluster.
  const StreamSourceConfigMongodbSourceConfigExcludeObjects({
    this.databases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase>, List<Map<String, dynamic>>>(databases, (value) => pulumi.Input.encodeList<StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamSourceConfigMongodbSourceConfigExcludeObjects.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfigExcludeObjects(
      databases: (() { final guardedValue = map['databases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase>(guardedValue, (value) => StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabase.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
