// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MongoClusterConnectionString {
  /// The description of the connection string.
  final pulumi.Input<String>? description;
  /// The name which should be used for the MongoDB Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The value of the Mongo Cluster connection string. The `&lt;user&gt;:&lt;password&gt;` placeholder returned from API will be replaced by the real `administrator_username` and `administrator_password` if available in the state.
  final pulumi.Input<String>? value;

  /// Creates a new [MongoClusterConnectionString].
  /// [description] The description of the connection string.
  /// [name] The name which should be used for the MongoDB Cluster. Changing this forces a new resource to be created.
  /// [value] The value of the Mongo Cluster connection string. The `&lt;user&gt;:&lt;password&gt;` placeholder returned from API will be replaced by the real `administrator_username` and `administrator_password` if available in the state.
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

