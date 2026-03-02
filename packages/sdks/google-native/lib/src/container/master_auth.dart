// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_certificate_config.dart';

/// The authentication information for accessing the master endpoint. Authentication can be done using HTTP basic auth or using client certificates.
class MasterAuth {
  /// Configuration for client certificate authentication on the cluster. For clusters before v1.12, if no configuration is specified, a client certificate is issued.
  final pulumi.Input<ClientCertificateConfig>? clientCertificateConfig;
  /// The password to use for HTTP basic authentication to the master endpoint. Because the master endpoint is open to the Internet, you should create a strong password. If a password is provided for cluster creation, username must be non-empty. Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  final pulumi.Input<String>? password;
  /// The username to use for HTTP basic authentication to the master endpoint. For clusters v1.6.0 and later, basic authentication can be disabled by leaving username unspecified (or setting it to the empty string). Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  final pulumi.Input<String>? username;

  /// Creates a new [MasterAuth].
  /// [clientCertificateConfig] Configuration for client certificate authentication on the cluster. For clusters before v1.12, if no configuration is specified, a client certificate is issued.
  /// [password] The password to use for HTTP basic authentication to the master endpoint. Because the master endpoint is open to the Internet, you should create a strong password. If a password is provided for cluster creation, username must be non-empty. Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  /// [username] The username to use for HTTP basic authentication to the master endpoint. For clusters v1.6.0 and later, basic authentication can be disabled by leaving username unspecified (or setting it to the empty string). Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  MasterAuth({
    this.clientCertificateConfig,
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificateConfig': ?pulumi.Input.mapOptionalInputValue<ClientCertificateConfig, Map<String, dynamic>>(clientCertificateConfig, (value) => value.toMap()),
      'password': ?password,
      'username': ?username,
    };
  }

  factory MasterAuth.fromMap(Map<String, dynamic> map) {
    return MasterAuth(
      clientCertificateConfig: map['clientCertificateConfig'] == null ? null : (ClientCertificateConfig.fromMap((map['clientCertificateConfig']! as Map).cast<String, dynamic>())).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

