// ignore_for_file: unused_element, unnecessary_cast


class SecurityActionDeny {
  /// The HTTP response code if the Action = DENY.
  final int? responseCode;

  /// Creates a new [SecurityActionDeny].
  /// [responseCode] The HTTP response code if the Action = DENY.
  SecurityActionDeny({
    this.responseCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'responseCode': ?responseCode,
    };
  }

  factory SecurityActionDeny.fromMap(Map<String, dynamic> map) {
    return SecurityActionDeny(
      responseCode: map['responseCode'] == null ? null : map['responseCode'] as int,
    );
  }
}

