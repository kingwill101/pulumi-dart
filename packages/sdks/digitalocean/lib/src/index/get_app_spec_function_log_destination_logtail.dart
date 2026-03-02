// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppSpecFunctionLogDestinationLogtail {
  /// Logtail token.
  final pulumi.Input<String> token;

  /// Creates a new [GetAppSpecFunctionLogDestinationLogtail].
  /// [token] Logtail token.
  GetAppSpecFunctionLogDestinationLogtail({
    required this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
    };
  }

  factory GetAppSpecFunctionLogDestinationLogtail.fromMap(Map<String, dynamic> map) {
    return GetAppSpecFunctionLogDestinationLogtail(
      token: (map['token'] as String).input(),
    );
  }
}

