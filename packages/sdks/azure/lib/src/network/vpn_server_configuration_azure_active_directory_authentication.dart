// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpnServerConfigurationAzureActiveDirectoryAuthentication {
  /// The Audience which should be used for authentication.
  final pulumi.Input<String> audience;
  /// The Issuer which should be used for authentication.
  final pulumi.Input<String> issuer;
  /// The Tenant which should be used for authentication.
  final pulumi.Input<String> tenant;

  /// Creates a new [VpnServerConfigurationAzureActiveDirectoryAuthentication].
  /// [audience] The Audience which should be used for authentication.
  /// [issuer] The Issuer which should be used for authentication.
  /// [tenant] The Tenant which should be used for authentication.
  VpnServerConfigurationAzureActiveDirectoryAuthentication({
    required this.audience,
    required this.issuer,
    required this.tenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'issuer': issuer,
      'tenant': tenant,
    };
  }

  factory VpnServerConfigurationAzureActiveDirectoryAuthentication.fromMap(Map<String, dynamic> map) {
    return VpnServerConfigurationAzureActiveDirectoryAuthentication(
      audience: (map['audience'] as String).input(),
      issuer: (map['issuer'] as String).input(),
      tenant: (map['tenant'] as String).input(),
    );
  }
}

