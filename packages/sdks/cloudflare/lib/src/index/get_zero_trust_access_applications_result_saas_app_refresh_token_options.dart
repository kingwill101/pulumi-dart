// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessApplicationsResultSaasAppRefreshTokenOptions {
  /// How long a refresh token will be valid for after creation. Valid units are m,h,d. Must be longer than 1m.
  final pulumi.Input<String> lifetime;

  /// Creates a new [GetZeroTrustAccessApplicationsResultSaasAppRefreshTokenOptions].
  /// [lifetime] How long a refresh token will be valid for after creation. Valid units are m,h,d. Must be longer than 1m.
  const GetZeroTrustAccessApplicationsResultSaasAppRefreshTokenOptions({
    required this.lifetime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lifetime': lifetime,
    };
  }

  factory GetZeroTrustAccessApplicationsResultSaasAppRefreshTokenOptions.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessApplicationsResultSaasAppRefreshTokenOptions(
      lifetime: pulumi.Input.fromValue(map['lifetime'] as String),
    );
  }
}
