// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecWorkerLogDestinationLogtail {
  /// Logtail token.
  final pulumi.Input<String> token;

  /// Creates a new [GetAppSpecWorkerLogDestinationLogtail].
  /// [token] Logtail token.
  GetAppSpecWorkerLogDestinationLogtail({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory GetAppSpecWorkerLogDestinationLogtail.fromMap(Map<String, dynamic> map) {
    return GetAppSpecWorkerLogDestinationLogtail(
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}

