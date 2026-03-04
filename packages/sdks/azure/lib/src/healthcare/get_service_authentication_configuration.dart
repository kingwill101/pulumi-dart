// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceAuthenticationConfiguration {
  /// The intended audience to receive authentication tokens for the service.
  final pulumi.Input<String> audience;

  /// The Azure Active Directory (tenant) that serves as the authentication authority to access the service.
  final pulumi.Input<String> authority;

  /// Is the 'SMART on FHIR' option for mobile and web implementations enabled?
  final pulumi.Input<bool> smartProxyEnabled;

  /// Creates a new [GetServiceAuthenticationConfiguration].
  /// [audience] The intended audience to receive authentication tokens for the service.
  /// [authority] The Azure Active Directory (tenant) that serves as the authentication authority to access the service.
  /// [smartProxyEnabled] Is the 'SMART on FHIR' option for mobile and web implementations enabled?
  GetServiceAuthenticationConfiguration({
    required this.audience,
    required this.authority,
    required this.smartProxyEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'authority': authority,
      'smartProxyEnabled': smartProxyEnabled,
    };
  }

  factory GetServiceAuthenticationConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetServiceAuthenticationConfiguration(
      audience: pulumi.Input.fromValue(map['audience'] as String),
      authority: pulumi.Input.fromValue(map['authority'] as String),
      smartProxyEnabled: pulumi.Input.fromValue(
        map['smartProxyEnabled'] as bool,
      ),
    );
  }
}
