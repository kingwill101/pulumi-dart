// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_backend_service_security_setting_aws_v4_authentication.dart';

class GetBackendServiceSecuritySetting {
  /// The configuration needed to generate a signature for access to private storage buckets that support AWS's Signature Version 4 for authentication.
  /// Allowed only for INTERNET_IP_PORT and INTERNET_FQDN_PORT NEG backends.
  final pulumi.Input<List<GetBackendServiceSecuritySettingAwsV4Authentication>> awsV4Authentications;
  /// ClientTlsPolicy is a resource that specifies how a client should authenticate
  /// connections to backends of a service. This resource itself does not affect
  /// configuration unless it is attached to a backend service resource.
  final pulumi.Input<String> clientTlsPolicy;
  /// A list of alternate names to verify the subject identity in the certificate.
  /// If specified, the client will verify that the server certificate's subject
  /// alt name matches one of the specified values.
  final pulumi.Input<List<String>> subjectAltNames;

  /// Creates a new [GetBackendServiceSecuritySetting].
  /// [awsV4Authentications] The configuration needed to generate a signature for access to private storage buckets that support AWS's Signature Version 4 for authentication.
  /// [clientTlsPolicy] ClientTlsPolicy is a resource that specifies how a client should authenticate
  /// [subjectAltNames] A list of alternate names to verify the subject identity in the certificate.
  const GetBackendServiceSecuritySetting({
    required this.awsV4Authentications,
    required this.clientTlsPolicy,
    required this.subjectAltNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsV4Authentications': pulumi.Input.mapInputValue<List<GetBackendServiceSecuritySettingAwsV4Authentication>, List<Map<String, dynamic>>>(awsV4Authentications, (value) => pulumi.Input.encodeList<GetBackendServiceSecuritySettingAwsV4Authentication, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clientTlsPolicy': clientTlsPolicy,
      'subjectAltNames': subjectAltNames,
    };
  }

  factory GetBackendServiceSecuritySetting.fromMap(Map<String, dynamic> map) {
    return GetBackendServiceSecuritySetting(
      awsV4Authentications: pulumi.Input.fromValue(pulumi.Input.decodeList<GetBackendServiceSecuritySettingAwsV4Authentication>(map['awsV4Authentications']!, (value) => GetBackendServiceSecuritySettingAwsV4Authentication.fromMap((value as Map).cast<String, dynamic>()))),
      clientTlsPolicy: pulumi.Input.fromValue(map['clientTlsPolicy'] as String),
      subjectAltNames: pulumi.Input.fromValue((map['subjectAltNames'] as List).cast<String>()),
    );
  }
}
