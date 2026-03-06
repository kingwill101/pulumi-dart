// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecServiceLogDestinationLogtail {
  /// Logtail token.
  final pulumi.Input<String> token;

  /// Creates a new [GetAppSpecServiceLogDestinationLogtail].
  /// [token] Logtail token.
  const GetAppSpecServiceLogDestinationLogtail({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory GetAppSpecServiceLogDestinationLogtail.fromMap(Map<String, dynamic> map) {
    return GetAppSpecServiceLogDestinationLogtail(
      token: pulumi.Input.fromValue(map['token'] as String),
    );
  }
}

