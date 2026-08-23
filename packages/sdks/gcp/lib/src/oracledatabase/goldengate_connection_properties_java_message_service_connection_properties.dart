// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GoldengateConnectionPropertiesJavaMessageServiceConnectionProperties {
  /// Authentication type for Java Message Service.
  /// Possible values:
  /// NONE
  /// BASIC
  final pulumi.Input<String>? authenticationType;
  /// The Java class implementing javax.jms.ConnectionFactory interface supplied
  /// by the JMS provider.
  final pulumi.Input<String>? connectionFactory;
  /// Connection URL of the Java Message Service, specifying the protocol, host,
  /// and port. e.g.: 'mq://myjms.host.domain:7676'
  final pulumi.Input<String>? connectionUrl;
  /// The Connection Factory can be looked up using this name.
  /// e.g.: 'ConnectionFactory'
  final pulumi.Input<String>? jndiConnectionFactory;
  /// The implementation of javax.naming.spi.InitialContextFactory interface
  /// used to obtain initial naming context.
  final pulumi.Input<String>? jndiInitialContextFactory;
  /// The URL that Java Message Service will use to contact the JNDI provider.
  /// e.g.: 'tcp://myjms.host.domain:61616?jms.prefetchPolicy.all=1000'
  final pulumi.Input<String>? jndiProviderUrl;
  /// The password associated to the principal.
  final pulumi.Input<String>? jndiSecurityCredentialsSecret;
  /// Specifies the identity of the principal (user) to be authenticated.
  final pulumi.Input<String>? jndiSecurityPrincipal;
  /// The content of the KeyStore file.
  final pulumi.Input<String>? keyStoreFile;
  /// Input only. The KeyStore password in plain text.
  final pulumi.Input<String>? keyStorePassword;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the KeyStore password.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String>? keyStorePasswordSecretVersion;
  /// Input only. The password Oracle Goldengate uses to connect the Java Message Service
  /// in plain text.
  final pulumi.Input<String>? password;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password Oracle Goldengate uses to connect the associated Java
  /// Message Service.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String>? passwordSecretVersion;
  /// Security protocol for Java Message Service.
  /// Possible values:
  /// PLAIN
  /// TLS
  /// MTLS
  final pulumi.Input<String>? securityProtocol;
  /// Input only. The password for the cert inside of the KeyStore in plain text.
  final pulumi.Input<String>? sslKeyPassword;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the password for the cert inside of the KeyStore.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String>? sslKeyPasswordSecretVersion;
  /// The technology type of JavaMessageServiceConnection.
  final pulumi.Input<String>? technologyType;
  /// The content of the TrustStore file.
  final pulumi.Input<String>? trustStoreFile;
  /// Input only. The TrustStore password in plain text.
  final pulumi.Input<String>? trustStorePassword;
  /// Input only. The resource name of a secret version in Secret Manager which contains
  /// the TrustStore password.
  /// Format: projects/{project}/secrets/{secret}/versions/{version}.
  final pulumi.Input<String>? trustStorePasswordSecretVersion;
  /// If set to true, Java Naming and Directory Interface (JNDI) properties
  /// should be provided.
  final pulumi.Input<bool>? useJndi;
  /// The username Oracle Goldengate uses to connect to the Java Message
  /// Service.
  final pulumi.Input<String>? username;

  /// Creates a new [GoldengateConnectionPropertiesJavaMessageServiceConnectionProperties].
  /// [authenticationType] Authentication type for Java Message Service.
  /// [connectionFactory] The Java class implementing javax.jms.ConnectionFactory interface supplied
  /// [connectionUrl] Connection URL of the Java Message Service, specifying the protocol, host,
  /// [jndiConnectionFactory] The Connection Factory can be looked up using this name.
  /// [jndiInitialContextFactory] The implementation of javax.naming.spi.InitialContextFactory interface
  /// [jndiProviderUrl] The URL that Java Message Service will use to contact the JNDI provider.
  /// [jndiSecurityCredentialsSecret] The password associated to the principal.
  /// [jndiSecurityPrincipal] Specifies the identity of the principal (user) to be authenticated.
  /// [keyStoreFile] The content of the KeyStore file.
  /// [keyStorePassword] Input only. The KeyStore password in plain text.
  /// [keyStorePasswordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [password] Input only. The password Oracle Goldengate uses to connect the Java Message Service
  /// [passwordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [securityProtocol] Security protocol for Java Message Service.
  /// [sslKeyPassword] Input only. The password for the cert inside of the KeyStore in plain text.
  /// [sslKeyPasswordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [technologyType] The technology type of JavaMessageServiceConnection.
  /// [trustStoreFile] The content of the TrustStore file.
  /// [trustStorePassword] Input only. The TrustStore password in plain text.
  /// [trustStorePasswordSecretVersion] Input only. The resource name of a secret version in Secret Manager which contains
  /// [useJndi] If set to true, Java Naming and Directory Interface (JNDI) properties
  /// [username] The username Oracle Goldengate uses to connect to the Java Message
  const GoldengateConnectionPropertiesJavaMessageServiceConnectionProperties({
    this.authenticationType,
    this.connectionFactory,
    this.connectionUrl,
    this.jndiConnectionFactory,
    this.jndiInitialContextFactory,
    this.jndiProviderUrl,
    this.jndiSecurityCredentialsSecret,
    this.jndiSecurityPrincipal,
    this.keyStoreFile,
    this.keyStorePassword,
    this.keyStorePasswordSecretVersion,
    this.password,
    this.passwordSecretVersion,
    this.securityProtocol,
    this.sslKeyPassword,
    this.sslKeyPasswordSecretVersion,
    this.technologyType,
    this.trustStoreFile,
    this.trustStorePassword,
    this.trustStorePasswordSecretVersion,
    this.useJndi,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'connectionFactory': ?connectionFactory,
      'connectionUrl': ?connectionUrl,
      'jndiConnectionFactory': ?jndiConnectionFactory,
      'jndiInitialContextFactory': ?jndiInitialContextFactory,
      'jndiProviderUrl': ?jndiProviderUrl,
      'jndiSecurityCredentialsSecret': ?jndiSecurityCredentialsSecret,
      'jndiSecurityPrincipal': ?jndiSecurityPrincipal,
      'keyStoreFile': ?keyStoreFile,
      'keyStorePassword': ?keyStorePassword,
      'keyStorePasswordSecretVersion': ?keyStorePasswordSecretVersion,
      'password': ?password,
      'passwordSecretVersion': ?passwordSecretVersion,
      'securityProtocol': ?securityProtocol,
      'sslKeyPassword': ?sslKeyPassword,
      'sslKeyPasswordSecretVersion': ?sslKeyPasswordSecretVersion,
      'technologyType': ?technologyType,
      'trustStoreFile': ?trustStoreFile,
      'trustStorePassword': ?trustStorePassword,
      'trustStorePasswordSecretVersion': ?trustStorePasswordSecretVersion,
      'useJndi': ?useJndi,
      'username': ?username,
    };
  }

  factory GoldengateConnectionPropertiesJavaMessageServiceConnectionProperties.fromMap(Map<String, dynamic> map) {
    return GoldengateConnectionPropertiesJavaMessageServiceConnectionProperties(
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionFactory: (() { final guardedValue = map['connectionFactory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionUrl: (() { final guardedValue = map['connectionUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jndiConnectionFactory: (() { final guardedValue = map['jndiConnectionFactory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jndiInitialContextFactory: (() { final guardedValue = map['jndiInitialContextFactory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jndiProviderUrl: (() { final guardedValue = map['jndiProviderUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jndiSecurityCredentialsSecret: (() { final guardedValue = map['jndiSecurityCredentialsSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jndiSecurityPrincipal: (() { final guardedValue = map['jndiSecurityPrincipal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyStoreFile: (() { final guardedValue = map['keyStoreFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyStorePassword: (() { final guardedValue = map['keyStorePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyStorePasswordSecretVersion: (() { final guardedValue = map['keyStorePasswordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretVersion: (() { final guardedValue = map['passwordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProtocol: (() { final guardedValue = map['securityProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslKeyPassword: (() { final guardedValue = map['sslKeyPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslKeyPasswordSecretVersion: (() { final guardedValue = map['sslKeyPasswordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      technologyType: (() { final guardedValue = map['technologyType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustStoreFile: (() { final guardedValue = map['trustStoreFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustStorePassword: (() { final guardedValue = map['trustStorePassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustStorePasswordSecretVersion: (() { final guardedValue = map['trustStorePasswordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useJndi: (() { final guardedValue = map['useJndi']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
