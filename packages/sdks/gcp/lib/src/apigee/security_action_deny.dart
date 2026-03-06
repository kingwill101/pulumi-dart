// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityActionDeny {
  /// The HTTP response code if the Action = DENY.
  final pulumi.Input<int>? responseCode;

  /// Creates a new [SecurityActionDeny].
  /// [responseCode] The HTTP response code if the Action = DENY.
  const SecurityActionDeny({
    this.responseCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'responseCode': ?responseCode,
    };
  }

  factory SecurityActionDeny.fromMap(Map<String, dynamic> map) {
    return SecurityActionDeny(
      responseCode: (() { final guardedValue = map['responseCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

