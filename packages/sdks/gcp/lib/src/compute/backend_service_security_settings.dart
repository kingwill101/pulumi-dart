// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_service_security_settings_aws_v4_authentication.dart';

class BackendServiceSecuritySettings {
  /// The configuration needed to generate a signature for access to private storage buckets that support AWS's Signature Version 4 for authentication.
  /// Allowed only for INTERNET_IP_PORT and INTERNET_FQDN_PORT NEG backends.
  /// Structure is documented below.
  ///
  ///
  /// &lt;a name="nestedSecuritySettingsAwsV4Authentication"&gt;&lt;/a&gt;The `awsV4Authentication` block supports:
  final pulumi.Input<BackendServiceSecuritySettingsAwsV4Authentication?>? awsV4Authentication;
  /// ClientTlsPolicy is a resource that specifies how a client should authenticate
  /// connections to backends of a service. This resource itself does not affect
  /// configuration unless it is attached to a backend service resource.
  final pulumi.Input<String?>? clientTlsPolicy;
  /// A list of alternate names to verify the subject identity in the certificate.
  /// If specified, the client will verify that the server certificate's subject
  /// alt name matches one of the specified values.
  final pulumi.Input<List<String>?>? subjectAltNames;

  /// Creates a new [BackendServiceSecuritySettings].
  /// [awsV4Authentication] The configuration needed to generate a signature for access to private storage buckets that support AWS's Signature Version 4 for authentication.
  /// [clientTlsPolicy] ClientTlsPolicy is a resource that specifies how a client should authenticate
  /// [subjectAltNames] A list of alternate names to verify the subject identity in the certificate.
  const BackendServiceSecuritySettings({
    this.awsV4Authentication,
    this.clientTlsPolicy,
    this.subjectAltNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsV4Authentication': ?pulumi.Input.mapOptionalInputValue<BackendServiceSecuritySettingsAwsV4Authentication, Map<String, dynamic>>(awsV4Authentication, (value) => value.toMap()),
      'clientTlsPolicy': ?clientTlsPolicy,
      'subjectAltNames': ?subjectAltNames,
    };
  }

  factory BackendServiceSecuritySettings.fromMap(Map<String, dynamic> map) {
    return BackendServiceSecuritySettings(
      awsV4Authentication: (() { final guardedValue = map['awsV4Authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendServiceSecuritySettingsAwsV4Authentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      clientTlsPolicy: (() { final guardedValue = map['clientTlsPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subjectAltNames: (() { final guardedValue = map['subjectAltNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
