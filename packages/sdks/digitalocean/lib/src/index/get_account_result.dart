// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccount.
class GetAccountResult {
  /// The total number of droplets current user or team may have active at one time.
  final int? dropletLimit;
  /// The email address used by the current user to register for DigitalOcean.
  final String? email;
  /// If true, the user has verified their account via email. False otherwise.
  final bool? emailVerified;
  /// The total number of floating IPs the current user or team may have.
  final int? floatingIpLimit;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// This value is one of "active", "warning" or "locked".
  final String? status;
  /// A human-readable message giving more details about the status of the account.
  final String? statusMessage;
  /// The unique universal identifier for the current user.
  final String? uuid;

  /// Creates a new [GetAccountResult].
  /// [dropletLimit] The total number of droplets current user or team may have active at one time.
  /// [email] The email address used by the current user to register for DigitalOcean.
  /// [emailVerified] If true, the user has verified their account via email. False otherwise.
  /// [floatingIpLimit] The total number of floating IPs the current user or team may have.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [status] This value is one of "active", "warning" or "locked".
  /// [statusMessage] A human-readable message giving more details about the status of the account.
  /// [uuid] The unique universal identifier for the current user.
  const GetAccountResult({
    this.dropletLimit,
    this.email,
    this.emailVerified,
    this.floatingIpLimit,
    this.id,
    this.status,
    this.statusMessage,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropletLimit': ?dropletLimit,
      'email': ?email,
      'emailVerified': ?emailVerified,
      'floatingIpLimit': ?floatingIpLimit,
      'id': ?id,
      'status': ?status,
      'statusMessage': ?statusMessage,
      'uuid': ?uuid,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      dropletLimit: (() { final guardedValue = map['dropletLimit']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return guardedValue as String; })(),
      emailVerified: (() { final guardedValue = map['emailVerified']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      floatingIpLimit: (() { final guardedValue = map['floatingIpLimit']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusMessage: (() { final guardedValue = map['statusMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uuid: (() { final guardedValue = map['uuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
