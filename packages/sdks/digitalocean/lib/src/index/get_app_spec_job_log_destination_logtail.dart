// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecJobLogDestinationLogtail {
  /// Logtail token.
  final pulumi.Input<String> token;

  /// Creates a new [GetAppSpecJobLogDestinationLogtail].
  /// [token] Logtail token.
  GetAppSpecJobLogDestinationLogtail({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory GetAppSpecJobLogDestinationLogtail.fromMap(Map<String, dynamic> map) {
    return GetAppSpecJobLogDestinationLogtail(
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}

