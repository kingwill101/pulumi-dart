// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subordinate_config_chain.dart';

/// Describes a subordinate CA's issuers. This is either a resource name to a known issuing CertificateAuthority, or a PEM issuer certificate chain.
class SubordinateConfig {
  /// This can refer to a CertificateAuthority that was used to create a subordinate CertificateAuthority. This field is used for information and usability purposes only. The resource name is in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  final pulumi.Input<String> certificateAuthority;
  /// Contains the PEM certificate chain for the issuers of this CertificateAuthority, but not pem certificate for this CA itself.
  final pulumi.Input<SubordinateConfigChain> pemIssuerChain;

  /// Creates a new [SubordinateConfig].
  /// [certificateAuthority] This can refer to a CertificateAuthority that was used to create a subordinate CertificateAuthority. This field is used for information and usability purposes only. The resource name is in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  /// [pemIssuerChain] Contains the PEM certificate chain for the issuers of this CertificateAuthority, but not pem certificate for this CA itself.
  SubordinateConfig({
    required this.certificateAuthority,
    required this.pemIssuerChain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': certificateAuthority,
      'pemIssuerChain': pulumi.Input.mapInputValue<SubordinateConfigChain, Map<String, dynamic>>(pemIssuerChain, (value) => value.toMap()),
    };
  }

  factory SubordinateConfig.fromMap(Map<String, dynamic> map) {
    return SubordinateConfig(
      certificateAuthority: pulumi.Input.fromValue(map['certificateAuthority'] as String),
      pemIssuerChain: pulumi.Input.fromValue(SubordinateConfigChain.fromMap((map['pemIssuerChain']! as Map).cast<String, dynamic>())),
    );
  }
}

