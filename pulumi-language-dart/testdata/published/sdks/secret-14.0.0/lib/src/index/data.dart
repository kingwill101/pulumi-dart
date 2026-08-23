// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Data {
  final pulumi.Input<String> private;
  final pulumi.Input<String> public;

  /// Creates a new [Data].
  /// [private] Required.
  /// [public] Required.
  const Data({
    required this.private,
    required this.public,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'private': private,
      'public': public,
    };
  }

  factory Data.fromMap(Map<String, dynamic> map) {
    return Data(
      private: pulumi.Input.fromValue(map['private'] as String),
      public: pulumi.Input.fromValue(map['public'] as String),
    );
  }
}
