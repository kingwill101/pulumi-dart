// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_subordinate_config_pem_issuer_chain.dart';

class AuthoritySubordinateConfig {
  /// This can refer to a CertificateAuthority that was used to create a
  /// subordinate CertificateAuthority. This field is used for information
  /// and usability purposes only. The resource name is in the format
  /// `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  final pulumi.Input<String>? certificateAuthority;
  /// Contains the PEM certificate chain for the issuers of this CertificateAuthority,
  /// but not pem certificate for this CA itself.
  /// Structure is documented below.
  final pulumi.Input<AuthoritySubordinateConfigPemIssuerChain>? pemIssuerChain;

  /// Creates a new [AuthoritySubordinateConfig].
  /// [certificateAuthority] This can refer to a CertificateAuthority that was used to create a
  /// [pemIssuerChain] Contains the PEM certificate chain for the issuers of this CertificateAuthority,
  AuthoritySubordinateConfig({
    this.certificateAuthority,
    this.pemIssuerChain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': ?certificateAuthority,
      'pemIssuerChain': ?pulumi.Input.mapOptionalInputValue<AuthoritySubordinateConfigPemIssuerChain, Map<String, dynamic>>(pemIssuerChain, (value) => value.toMap()),
    };
  }

  factory AuthoritySubordinateConfig.fromMap(Map<String, dynamic> map) {
    return AuthoritySubordinateConfig(
      certificateAuthority: map['certificateAuthority'] == null ? null : (map['certificateAuthority'] as String).input(),
      pemIssuerChain: map['pemIssuerChain'] == null ? null : (AuthoritySubordinateConfigPemIssuerChain.fromMap((map['pemIssuerChain'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

