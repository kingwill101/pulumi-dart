// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecVpc {
  /// The ID of the VPC.
  final pulumi.Input<String> id;

  /// Creates a new [AppSpecVpc].
  /// [id] The ID of the VPC.
  AppSpecVpc({required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  factory AppSpecVpc.fromMap(Map<String, dynamic> map) {
    return AppSpecVpc(id: pulumi.Input.fromValue(map['id'] as String));
  }
}
