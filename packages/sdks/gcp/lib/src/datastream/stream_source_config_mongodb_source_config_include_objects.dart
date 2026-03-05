// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_mongodb_source_config_include_objects_database.dart';

class StreamSourceConfigMongodbSourceConfigIncludeObjects {
  /// MongoDB databases in the cluster.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase>>? databases;

  /// Creates a new [StreamSourceConfigMongodbSourceConfigIncludeObjects].
  /// [databases] MongoDB databases in the cluster.
  StreamSourceConfigMongodbSourceConfigIncludeObjects({
    this.databases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databases': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase>, List<Map<String, dynamic>>>(databases, (value) => pulumi.Input.encodeList<StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StreamSourceConfigMongodbSourceConfigIncludeObjects.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfigIncludeObjects(
      databases: (() { final guardedValue = map['databases']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase>(guardedValue, (value) => StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabase.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

