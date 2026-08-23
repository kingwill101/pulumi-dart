// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppSpecWorkerLogDestinationLogtail {
  /// Logtail token.
  final pulumi.Input<String> token;

  /// Creates a new [AppSpecWorkerLogDestinationLogtail].
  /// [token] Logtail token.
  const AppSpecWorkerLogDestinationLogtail({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory AppSpecWorkerLogDestinationLogtail.fromMap(Map<String, dynamic> map) {
    return AppSpecWorkerLogDestinationLogtail(
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}
