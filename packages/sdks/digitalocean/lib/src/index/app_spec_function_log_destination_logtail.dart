// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecFunctionLogDestinationLogtail {
  /// Logtail token.
  final pulumi.Input<String> token;

  /// Creates a new [AppSpecFunctionLogDestinationLogtail].
  /// [token] Logtail token.
  AppSpecFunctionLogDestinationLogtail({required this.token});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'token': token};
  }

  factory AppSpecFunctionLogDestinationLogtail.fromMap(
    Map<String, dynamic> map,
  ) {
    return AppSpecFunctionLogDestinationLogtail(
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}
