// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subordinate_config_chain_response.dart';

/// Describes a subordinate CA's issuers. This is either a resource name to a known issuing CertificateAuthority, or a PEM issuer certificate chain.
class SubordinateConfigResponse {
  /// This can refer to a CertificateAuthority that was used to create a subordinate CertificateAuthority. This field is used for information and usability purposes only. The resource name is in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  final pulumi.Input<String> certificateAuthority;
  /// Contains the PEM certificate chain for the issuers of this CertificateAuthority, but not pem certificate for this CA itself.
  final pulumi.Input<SubordinateConfigChainResponse> pemIssuerChain;

  /// Creates a new [SubordinateConfigResponse].
  /// [certificateAuthority] This can refer to a CertificateAuthority that was used to create a subordinate CertificateAuthority. This field is used for information and usability purposes only. The resource name is in the format `projects/*/locations/*/caPools/*/certificateAuthorities/*`.
  /// [pemIssuerChain] Contains the PEM certificate chain for the issuers of this CertificateAuthority, but not pem certificate for this CA itself.
  const SubordinateConfigResponse({
    required this.certificateAuthority,
    required this.pemIssuerChain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': certificateAuthority,
      'pemIssuerChain': pulumi.Input.mapInputValue<SubordinateConfigChainResponse, Map<String, dynamic>>(pemIssuerChain, (value) => value.toMap()),
    };
  }

  factory SubordinateConfigResponse.fromMap(Map<String, dynamic> map) {
    return SubordinateConfigResponse(
      certificateAuthority: pulumi.Input.fromValue(map['certificateAuthority'] as String),
      pemIssuerChain: pulumi.Input.fromValue(SubordinateConfigChainResponse.fromMap((map['pemIssuerChain']! as Map).cast<String, dynamic>())),
    );
  }
}

