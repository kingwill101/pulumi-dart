// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_certificate_config_container_v1beta1.dart';

/// The authentication information for accessing the master endpoint. Authentication can be done using HTTP basic auth or using client certificates.
class MasterAuthContainerV1beta1 {
  /// Configuration for client certificate authentication on the cluster. For clusters before v1.12, if no configuration is specified, a client certificate is issued.
  final pulumi.Input<ClientCertificateConfigContainerV1beta1>?
  clientCertificateConfig;
  final pulumi.Input<String>? clusterCaCertificate;

  /// The password to use for HTTP basic authentication to the master endpoint. Because the master endpoint is open to the Internet, you should create a strong password. If a password is provided for cluster creation, username must be non-empty. Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  final pulumi.Input<String>? password;

  /// The username to use for HTTP basic authentication to the master endpoint. For clusters v1.6.0 and later, basic authentication can be disabled by leaving username unspecified (or setting it to the empty string). Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  final pulumi.Input<String>? username;

  /// Creates a new [MasterAuthContainerV1beta1].
  /// [clientCertificateConfig] Configuration for client certificate authentication on the cluster. For clusters before v1.12, if no configuration is specified, a client certificate is issued.
  /// [clusterCaCertificate] Optional.
  /// [password] The password to use for HTTP basic authentication to the master endpoint. Because the master endpoint is open to the Internet, you should create a strong password. If a password is provided for cluster creation, username must be non-empty. Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  /// [username] The username to use for HTTP basic authentication to the master endpoint. For clusters v1.6.0 and later, basic authentication can be disabled by leaving username unspecified (or setting it to the empty string). Warning: basic authentication is deprecated, and will be removed in GKE control plane versions 1.19 and newer. For a list of recommended authentication methods, see: https://cloud.google.com/kubernetes-engine/docs/how-to/api-server-authentication
  MasterAuthContainerV1beta1({
    this.clientCertificateConfig,
    this.clusterCaCertificate,
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientCertificateConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ClientCertificateConfigContainerV1beta1,
            Map<String, dynamic>
          >(clientCertificateConfig, (value) => value.toMap()),
      'clusterCaCertificate': ?clusterCaCertificate,
      'password': ?password,
      'username': ?username,
    };
  }

  factory MasterAuthContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return MasterAuthContainerV1beta1(
      clientCertificateConfig: (() {
        final guardedValue = map['clientCertificateConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClientCertificateConfigContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clusterCaCertificate: (() {
        final guardedValue = map['clusterCaCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
