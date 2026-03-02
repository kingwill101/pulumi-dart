// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MongoClusterConnectionString {
  /// The description of the connection string.
  final pulumi.Input<String>? description;
  /// The name which should be used for the MongoDB Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The value of the Mongo Cluster connection string. The `<user>:<password>` placeholder returned from API will be replaced by the real `administrator_username` and `administrator_password` if available in the state.
  final pulumi.Input<String>? value;

  /// Creates a new [MongoClusterConnectionString].
  /// [description] The description of the connection string.
  /// [name] The name which should be used for the MongoDB Cluster. Changing this forces a new resource to be created.
  /// [value] The value of the Mongo Cluster connection string. The `<user>:<password>` placeholder returned from API will be replaced by the real `administrator_username` and `administrator_password` if available in the state.
  MongoClusterConnectionString({
    this.description,
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'value': ?value,
    };
  }

  factory MongoClusterConnectionString.fromMap(Map<String, dynamic> map) {
    return MongoClusterConnectionString(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

