// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authorized groundstation.
class AuthorizedGroundstationResponse {
  /// Date of authorization expiration.
  final pulumi.Input<String> expirationDate;
  /// Groundstation name.
  final pulumi.Input<String> groundStation;

  /// Creates a new [AuthorizedGroundstationResponse].
  /// [expirationDate] Date of authorization expiration.
  /// [groundStation] Groundstation name.
  AuthorizedGroundstationResponse({
    required this.expirationDate,
    required this.groundStation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationDate': expirationDate,
      'groundStation': groundStation,
    };
  }

  factory AuthorizedGroundstationResponse.fromMap(Map<String, dynamic> map) {
    return AuthorizedGroundstationResponse(
      expirationDate: (map['expirationDate'] as String).input(),
      groundStation: (map['groundStation'] as String).input(),
    );
  }
}

