// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField {
  /// Field name.
  final pulumi.Input<String>? field;

  /// Creates a new [StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField].
  /// [field] Field name.
  StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField({
    this.field,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'field': ?field};
  }

  factory StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigMongodbSourceConfigIncludeObjectsDatabaseCollectionField(
      field: (() {
        final guardedValue = map['field'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
