// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_authority_config_subject_config.dart';
import 'get_authority_config_subject_key_id.dart';
import 'get_authority_config_x509_config.dart';

class GetAuthorityConfig {
  /// Specifies some of the values in a certificate that are related to the subject.
  final pulumi.Input<List<GetAuthorityConfigSubjectConfig>> subjectConfigs;
  /// When specified this provides a custom SKI to be used in the certificate. This should only be used to maintain a SKI of an existing CA originally created outside CA service, which was not generated using method (1) described in RFC 5280 section 4.2.1.2..
  final pulumi.Input<List<GetAuthorityConfigSubjectKeyId>> subjectKeyIds;
  /// Describes how some of the technical X.509 fields in a certificate should be populated.
  final pulumi.Input<List<GetAuthorityConfigX509Config>> x509Configs;

  /// Creates a new [GetAuthorityConfig].
  /// [subjectConfigs] Specifies some of the values in a certificate that are related to the subject.
  /// [subjectKeyIds] When specified this provides a custom SKI to be used in the certificate. This should only be used to maintain a SKI of an existing CA originally created outside CA service, which was not generated using method (1) described in RFC 5280 section 4.2.1.2..
  /// [x509Configs] Describes how some of the technical X.509 fields in a certificate should be populated.
  const GetAuthorityConfig({
    required this.subjectConfigs,
    required this.subjectKeyIds,
    required this.x509Configs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectConfigs': pulumi.Input.mapInputValue<List<GetAuthorityConfigSubjectConfig>, List<Map<String, dynamic>>>(subjectConfigs, (value) => pulumi.Input.encodeList<GetAuthorityConfigSubjectConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'subjectKeyIds': pulumi.Input.mapInputValue<List<GetAuthorityConfigSubjectKeyId>, List<Map<String, dynamic>>>(subjectKeyIds, (value) => pulumi.Input.encodeList<GetAuthorityConfigSubjectKeyId, Map<String, dynamic>>(value, (value) => value.toMap())),
      'x509Configs': pulumi.Input.mapInputValue<List<GetAuthorityConfigX509Config>, List<Map<String, dynamic>>>(x509Configs, (value) => pulumi.Input.encodeList<GetAuthorityConfigX509Config, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetAuthorityConfig.fromMap(Map<String, dynamic> map) {
    return GetAuthorityConfig(
      subjectConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAuthorityConfigSubjectConfig>(map['subjectConfigs']!, (value) => GetAuthorityConfigSubjectConfig.fromMap((value as Map).cast<String, dynamic>()))),
      subjectKeyIds: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAuthorityConfigSubjectKeyId>(map['subjectKeyIds']!, (value) => GetAuthorityConfigSubjectKeyId.fromMap((value as Map).cast<String, dynamic>()))),
      x509Configs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAuthorityConfigX509Config>(map['x509Configs']!, (value) => GetAuthorityConfigX509Config.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
