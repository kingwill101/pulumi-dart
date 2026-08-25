// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_connection_properties_kafka_connection_properties_bootstrap_server.dart';

class GoldengateConnectionPropertiesKafkaConnectionProperties {
  /// Kafka bootstrap. Equivalent of bootstrap.servers configuration property
  /// in Kafka: list of KafkaBootstrapServer objects specified by host/port.
  /// Used for establishing the initial connection to the Kafka cluster.
  /// Example: "server1.example.com:9092,server2.example.com:9092"
  /// Structure is documented below.
  final pulumi.Input<List<GoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServer>?>? bootstrapServers;
  /// The OCID of the Kafka cluster being referenced from OCI Streaming with
  /// Apache Kafka.
  final pulumi.Input<String?>? clusterId;
  /// The content of the consumer.properties file.
  final pulumi.Input<String?>? consumerPropertiesFile;
  /// The content of the KeyStore file.
  final pulumi.Input<String?>? keyStoreFile;
  /// Input only. The KeyStore password in plain text.
  final pulumi.Input<String?>? keyStorePassword;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the KeyStore password.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? keyStorePasswordSecretVersion;
  /// Input only. The password for Kafka basic/SASL auth in plain text.
  final pulumi.Input<String?>? password;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password for Kafka basic/SASL auth.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? passwordSecretVersion;
  /// The content of the producer.properties file.
  final pulumi.Input<String?>? producerPropertiesFile;
  /// Security Type for Kafka.
  /// Possible values:
  /// SSL
  /// SASL_SSL
  /// PLAINTEXT
  /// SASL_PLAINTEXT
  final pulumi.Input<String?>? securityProtocol;
  /// Input only. The password for the cert inside of the KeyStore in plain text.
  final pulumi.Input<String?>? sslKeyPassword;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password for the cert inside of the KeyStore.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? sslKeyPasswordSecretVersion;
  /// The OCID of the stream pool being referenced.
  final pulumi.Input<String?>? streamPoolId;
  /// The technology type of KafkaConnection.
  final pulumi.Input<String?>? technologyType;
  /// The content of the TrustStore file.
  final pulumi.Input<String?>? trustStoreFile;
  /// Input only. The TrustStore password in plain text.
  final pulumi.Input<String?>? trustStorePassword;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the TrustStore password.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String?>? trustStorePasswordSecretVersion;
  /// Specifies that the user intends to authenticate to the instance using a
  /// resource principal. Applicable only for OCI Streaming connections.
  final pulumi.Input<bool?>? useResourcePrincipal;
  /// The username Oracle Goldengate uses to connect the associated system of
  /// the given technology.
  final pulumi.Input<String?>? username;

  /// Creates a new [GoldengateConnectionPropertiesKafkaConnectionProperties].
  /// [bootstrapServers] Kafka bootstrap. Equivalent of bootstrap.servers configuration property
  /// [clusterId] The OCID of the Kafka cluster being referenced from OCI Streaming with
  /// [consumerPropertiesFile] The content of the consumer.properties file.
  /// [keyStoreFile] The content of the KeyStore file.
  /// [keyStorePassword] Input only. The KeyStore password in plain text.
  /// [keyStorePasswordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [password] Input only. The password for Kafka basic/SASL auth in plain text.
  /// [passwordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [producerPropertiesFile] The content of the producer.properties file.
  /// [securityProtocol] Security Type for Kafka.
  /// [sslKeyPassword] Input only. The password for the cert inside of the KeyStore in plain text.
  /// [sslKeyPasswordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [streamPoolId] The OCID of the stream pool being referenced.
  /// [technologyType] The technology type of KafkaConnection.
  /// [trustStoreFile] The content of the TrustStore file.
  /// [trustStorePassword] Input only. The TrustStore password in plain text.
  /// [trustStorePasswordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [useResourcePrincipal] Specifies that the user intends to authenticate to the instance using a
  /// [username] The username Oracle Goldengate uses to connect the associated system of
  const GoldengateConnectionPropertiesKafkaConnectionProperties({
    this.bootstrapServers,
    this.clusterId,
    this.consumerPropertiesFile,
    this.keyStoreFile,
    this.keyStorePassword,
    this.keyStorePasswordSecretVersion,
    this.password,
    this.passwordSecretVersion,
    this.producerPropertiesFile,
    this.securityProtocol,
    this.sslKeyPassword,
    this.sslKeyPasswordSecretVersion,
    this.streamPoolId,
    this.technologyType,
    this.trustStoreFile,
    this.trustStorePassword,
    this.trustStorePasswordSecretVersion,
    this.useResourcePrincipal,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootstrapServers': ?pulumi.Input.mapOptionalInputValue<List<GoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServer>, List<Map<String, dynamic>>>(bootstrapServers, (value) => pulumi.Input.encodeList<GoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterId': ?clusterId,
      'consumerPropertiesFile': ?consumerPropertiesFile,
      'keyStoreFile': ?keyStoreFile,
      'keyStorePassword': ?keyStorePassword,
      'keyStorePasswordSecretVersion': ?keyStorePasswordSecretVersion,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'producerPropertiesFile': ?producerPropertiesFile,
      'securityProtocol': ?securityProtocol,
      'sslKeyPassword': ?sslKeyPassword,
      'sslKeyPasswordSecretVersion': ?sslKeyPasswordSecretVersion,
      'streamPoolId': ?streamPoolId,
      'technologyType': ?technologyType,
      'trustStoreFile': ?trustStoreFile,
      'trustStorePassword': ?trustStorePassword,
      'trustStorePasswordSecretVersion': ?trustStorePasswordSecretVersion,
      'useResourcePrincipal': ?useResourcePrincipal,
      'username': ?username,
    };
  }

  factory GoldengateConnectionPropertiesKafkaConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesKafkaConnectionProperties(
      bootstrapServers: (() { final guardedValue = map['bootstrapServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServer>(guardedValue, (value) => GoldengateConnectionPropertiesKafkaConnectionPropertiesBootstrapServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumerPropertiesFile: (() { final guardedValue = map['consumerPropertiesFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyStoreFile: (() { final guardedValue = map['keyStoreFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyStorePassword: (() { final guardedValue = map['keyStorePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyStorePasswordSecretVersion: (() { final guardedValue = map['keyStorePasswordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretVersion: (() { final guardedValue = map['passwordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      producerPropertiesFile: (() { final guardedValue = map['producerPropertiesFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProtocol: (() { final guardedValue = map['securityProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslKeyPassword: (() { final guardedValue = map['sslKeyPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslKeyPasswordSecretVersion: (() { final guardedValue = map['sslKeyPasswordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamPoolId: (() { final guardedValue = map['streamPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustStoreFile: (() { final guardedValue = map['trustStoreFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustStorePassword: (() { final guardedValue = map['trustStorePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustStorePasswordSecretVersion: (() { final guardedValue = map['trustStorePasswordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useResourcePrincipal: (() { final guardedValue = map['useResourcePrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
