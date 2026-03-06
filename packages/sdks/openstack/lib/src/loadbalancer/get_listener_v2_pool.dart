// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerV2Pool {
  final pulumi.Input<String> id;

  /// Creates a new [GetListenerV2Pool].
  /// [id] Required.
  const GetListenerV2Pool({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetListenerV2Pool.fromMap(Map<String, dynamic> map) {
    return GetListenerV2Pool(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

