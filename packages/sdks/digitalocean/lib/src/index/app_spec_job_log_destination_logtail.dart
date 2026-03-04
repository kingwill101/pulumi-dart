// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecJobLogDestinationLogtail {
  /// Logtail token.
  final pulumi.Input<String> token;

  /// Creates a new [AppSpecJobLogDestinationLogtail].
  /// [token] Logtail token.
  AppSpecJobLogDestinationLogtail({required this.token});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'token': token};
  }

  factory AppSpecJobLogDestinationLogtail.fromMap(Map<String, dynamic> map) {
    return AppSpecJobLogDestinationLogtail(
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}
