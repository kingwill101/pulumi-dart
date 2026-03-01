// ignore_for_file: unused_element, unnecessary_cast


class HostingCustomDomainIssue {
  /// The status code, which should be an enum value of `google.rpc.Code`
  final int? code;
  /// A list of messages that carry the error details.
  final String? details;
  /// Error message
  final String? message;

  /// Creates a new [HostingCustomDomainIssue].
  /// [code] The status code, which should be an enum value of `google.rpc.Code`
  /// [details] A list of messages that carry the error details.
  /// [message] Error message
  HostingCustomDomainIssue({
    this.code,
    this.details,
    this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': ?code,
      'details': ?details,
      'message': ?message,
    };
  }

  factory HostingCustomDomainIssue.fromMap(Map<String, dynamic> map) {
    return HostingCustomDomainIssue(
      code: map['code'] == null ? null : map['code'] as int,
      details: map['details'] == null ? null : map['details'] as String,
      message: map['message'] == null ? null : map['message'] as String,
    );
  }
}

