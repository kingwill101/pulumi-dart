// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authority_subordinate_config_pem_issuer_chain.dart';

class GetAuthoritySubordinateConfig {
  /// This can refer to a CertificateAuthority that was used to create a
  /// subordinate CertificateAuthority. This field is used for information
  /// and usability purposes only. The resource name is in the format
  /// 'projects/*/locations/*/caPools/*/certificateAuthorities/*'.
  final pulumi.Input<String> certificateAuthority;
  /// Contains the PEM certificate chain for the issuers of this CertificateAuthority,
  /// but not pem certificate for this CA itself.
  final pulumi.Input<List<GetAuthoritySubordinateConfigPemIssuerChain>> pemIssuerChains;

  /// Creates a new [GetAuthoritySubordinateConfig].
  /// [certificateAuthority] This can refer to a CertificateAuthority that was used to create a
  /// [pemIssuerChains] Contains the PEM certificate chain for the issuers of this CertificateAuthority,
  GetAuthoritySubordinateConfig({
    required this.certificateAuthority,
    required this.pemIssuerChains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateAuthority': certificateAuthority,
      'pemIssuerChains': pulumi.Input.mapInputValue<List<GetAuthoritySubordinateConfigPemIssuerChain>, List<Map<String, dynamic>>>(pemIssuerChains, (value) => pulumi.Input.encodeList<GetAuthoritySubordinateConfigPemIssuerChain, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAuthoritySubordinateConfig.fromMap(Map<String, dynamic> map) {
    return GetAuthoritySubordinateConfig(
      certificateAuthority: pulumi.Input.fromValue(map['certificateAuthority'] as String),
      pemIssuerChains: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAuthoritySubordinateConfigPemIssuerChain>(map['pemIssuerChains']!, (value) => GetAuthoritySubordinateConfigPemIssuerChain.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

