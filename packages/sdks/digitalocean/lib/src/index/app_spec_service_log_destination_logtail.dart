// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecServiceLogDestinationLogtail {
  /// Logtail token.
  final pulumi.Input<String> token;

  /// Creates a new [AppSpecServiceLogDestinationLogtail].
  /// [token] Logtail token.
  AppSpecServiceLogDestinationLogtail({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory AppSpecServiceLogDestinationLogtail.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceLogDestinationLogtail(
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}

