// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier {
  /// The MongoDB collection name.
  final pulumi.Input<String> collection;
  /// The MongoDB database name.
  final pulumi.Input<String> database;

  /// Creates a new [StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier].
  /// [collection] The MongoDB collection name.
  /// [database] The MongoDB database name.
  StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier({
    required this.collection,
    required this.database,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'collection': collection,
      'database': database,
    };
  }

  factory StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier.fromMap(Map<String, dynamic> map) {
    return StreamRuleSetObjectFilterSourceObjectIdentifierMongodbIdentifier(
      collection: pulumi.Input.fromValue(map['collection'] as String),
      database: pulumi.Input.fromValue(map['database'] as String),
    );
  }
}

