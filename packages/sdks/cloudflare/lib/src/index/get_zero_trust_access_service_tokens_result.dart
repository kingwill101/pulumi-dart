// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessServiceTokensResult {
  /// The Client ID for the service token. Access will check for this value in the `CF-Access-Client-ID` request header.
  final pulumi.Input<String> clientId;
  /// The duration for how long the service token will be valid. Must be in the format `300ms` or `2h45m`, or the special value `forever` for non-expiring tokens. Valid time units are: ns, us (or µs), ms, s, m, h. The default is 1 year in hours (8760h).
  final pulumi.Input<String> duration;
  final pulumi.Input<String> expiresAt;
  /// The ID of the service token.
  final pulumi.Input<String> id;
  /// The name of the service token.
  final pulumi.Input<String> name;

  /// Creates a new [GetZeroTrustAccessServiceTokensResult].
  /// [clientId] The Client ID for the service token. Access will check for this value in the `CF-Access-Client-ID` request header.
  /// [duration] The duration for how long the service token will be valid. Must be in the format `300ms` or `2h45m`, or the special value `forever` for non-expiring tokens. Valid time units are: ns, us (or µs), ms, s, m, h. The default is 1 year in hours (8760h).
  /// [expiresAt] Required.
  /// [id] The ID of the service token.
  /// [name] The name of the service token.
  const GetZeroTrustAccessServiceTokensResult({
    required this.clientId,
    required this.duration,
    required this.expiresAt,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'duration': duration,
      'expiresAt': expiresAt,
      'id': id,
      'name': name,
    };
  }

  factory GetZeroTrustAccessServiceTokensResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessServiceTokensResult(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      duration: pulumi.Input.fromValue(map['duration'] as String),
      expiresAt: pulumi.Input.fromValue(map['expiresAt'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
