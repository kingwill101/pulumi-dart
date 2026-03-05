// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField {
  /// Field name.
  final pulumi.Input<String>? field;

  /// Creates a new [StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField].
  /// [field] Field name.
  StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField({
    this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'field': ?field,
    };
  }

  factory StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfigExcludeObjectsDatabaseCollectionField(
      field: (() { final guardedValue = map['field']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

