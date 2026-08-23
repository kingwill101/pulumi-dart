// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authority_config_subject_config.dart';
import 'authority_config_subject_key_id.dart';
import 'authority_config_x509_config.dart';

class AuthorityConfig {
  /// Specifies some of the values in a certificate that are related to the subject.
  /// Structure is documented below.
  final pulumi.Input<AuthorityConfigSubjectConfig> subjectConfig;
  /// When specified this provides a custom SKI to be used in the certificate. This should only be used to maintain a SKI of an existing CA originally created outside CA service, which was not generated using method (1) described in RFC 5280 section 4.2.1.2..
  /// Structure is documented below.
  final pulumi.Input<AuthorityConfigSubjectKeyId>? subjectKeyId;
  /// Describes how some of the technical X.509 fields in a certificate should be populated.
  /// Structure is documented below.
  final pulumi.Input<AuthorityConfigX509Config> x509Config;

  /// Creates a new [AuthorityConfig].
  /// [subjectConfig] Specifies some of the values in a certificate that are related to the subject.
  /// [subjectKeyId] When specified this provides a custom SKI to be used in the certificate. This should only be used to maintain a SKI of an existing CA originally created outside CA service, which was not generated using method (1) described in RFC 5280 section 4.2.1.2..
  /// [x509Config] Describes how some of the technical X.509 fields in a certificate should be populated.
  const AuthorityConfig({
    required this.subjectConfig,
    this.subjectKeyId,
    required this.x509Config,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectConfig': pulumi.Input.mapInputValue<AuthorityConfigSubjectConfig, Map<String, dynamic>>(subjectConfig, (value) => value.toMap()),
      'subjectKeyId': ?pulumi.Input.mapOptionalInputValue<AuthorityConfigSubjectKeyId, Map<String, dynamic>>(subjectKeyId, (value) => value.toMap()),
      'x509Config': pulumi.Input.mapInputValue<AuthorityConfigX509Config, Map<String, dynamic>>(x509Config, (value) => value.toMap()),
    };
  }

  factory AuthorityConfig.fromMap(Map<String, dynamic> map) {
    return AuthorityConfig(
      subjectConfig: pulumi.Input.fromValue(AuthorityConfigSubjectConfig.fromMap((map['subjectConfig']! as Map).cast<String, dynamic>())),
      subjectKeyId: (() { final guardedValue = map['subjectKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthorityConfigSubjectKeyId.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      x509Config: pulumi.Input.fromValue(AuthorityConfigX509Config.fromMap((map['x509Config']! as Map).cast<String, dynamic>())),
    );
  }
}
