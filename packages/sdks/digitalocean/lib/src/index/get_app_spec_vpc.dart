// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecVpc {
  /// The ID of the dedicated egress IP.
  final pulumi.Input<String> id;

  /// Creates a new [GetAppSpecVpc].
  /// [id] The ID of the dedicated egress IP.
  GetAppSpecVpc({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetAppSpecVpc.fromMap(Map<String, dynamic> map) {
    return GetAppSpecVpc(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

