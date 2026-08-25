// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesElasticsearchConnectionProperties {
  /// Authentication type for Elasticsearch.
  /// Possible values:
  /// NONE
  /// BASIC
  final pulumi.Input<String?>? authenticationType;
  /// Fingerprint required by TLS security protocol.
  /// Eg.: '6152b2dfbff200f973c5074a5b91d06ab3b472c07c09a1ea57bb7fd406cdce9c'
  final pulumi.Input<String?>? fingerprint;
  /// Input only. The password Oracle Goldengate uses for Elastic Search connection
  /// in plain text.
  final pulumi.Input<String?>? password;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password Oracle Goldengate uses for Elastic Search connection.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? passwordSecretVersion;
  /// Security protocol for Elasticsearch.
  /// Possible values:
  /// PLAIN
  /// TLS
  final pulumi.Input<String?>? securityProtocol;
  /// Comma separated list of Elasticsearch server addresses, specified as
  /// host:port entries, where :port is optional. If port is not specified, it
  /// defaults to 9200. Example:
  /// "server1.example.com:4000,server2.example.com:4000"
  final pulumi.Input<String?>? servers;
  /// The technology type of ElasticsearchConnection.
  final pulumi.Input<String?>? technologyType;
  /// The username Oracle Goldengate uses to connect the associated system of
  /// the given technology.
  final pulumi.Input<String?>? username;

  /// Creates a new [GoldengateConnectionPropertiesElasticsearchConnectionProperties].
  /// [authenticationType] Authentication type for Elasticsearch.
  /// [fingerprint] Fingerprint required by TLS security protocol.
  /// [password] Input only. The password Oracle Goldengate uses for Elastic Search connection
  /// [passwordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [securityProtocol] Security protocol for Elasticsearch.
  /// [servers] Comma separated list of Elasticsearch server addresses, specified as
  /// [technologyType] The technology type of ElasticsearchConnection.
  /// [username] The username Oracle Goldengate uses to connect the associated system of
  const GoldengateConnectionPropertiesElasticsearchConnectionProperties({
    this.authenticationType,
    this.fingerprint,
    this.password,
    this.passwordSecretVersion,
    this.securityProtocol,
    this.servers,
    this.technologyType,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'fingerprint': ?fingerprint,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'securityProtocol': ?securityProtocol,
      'servers': ?servers,
      'technologyType': ?technologyType,
      'username': ?username,
    };
  }

  factory GoldengateConnectionPropertiesElasticsearchConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesElasticsearchConnectionProperties(
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretVersion: (() { final guardedValue = map['passwordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProtocol: (() { final guardedValue = map['securityProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servers: (() { final guardedValue = map['servers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
