// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudConfigurationServiceRepository {
  /// Specifies the ID of the Certificate Authority used when retrieving the Git Repository via HTTPS.
  final pulumi.Input<String>? caCertificateId;
  /// Specifies the SSH public key of git repository.
  final pulumi.Input<String>? hostKey;
  /// Specifies the SSH key algorithm of git repository.
  final pulumi.Input<String>? hostKeyAlgorithm;
  /// Specifies the label of the repository.
  final pulumi.Input<String> label;
  /// Specifies the name which should be used for this repository.
  final pulumi.Input<String> name;
  /// Specifies the password of git repository basic auth.
  final pulumi.Input<String>? password;
  /// Specifies the collection of patterns of the repository.
  final pulumi.Input<List<String>> patterns;
  /// Specifies the SSH private key of git repository.
  final pulumi.Input<String>? privateKey;
  /// Specifies a list of searching path of the repository
  final pulumi.Input<List<String>>? searchPaths;
  /// Specifies whether enable the strict host key checking.
  final pulumi.Input<bool>? strictHostKeyChecking;
  /// Specifies the URI of the repository.
  final pulumi.Input<String> uri;
  /// Specifies the username of git repository basic auth.
  final pulumi.Input<String>? username;

  /// Creates a new [SpringCloudConfigurationServiceRepository].
  /// [caCertificateId] Specifies the ID of the Certificate Authority used when retrieving the Git Repository via HTTPS.
  /// [hostKey] Specifies the SSH public key of git repository.
  /// [hostKeyAlgorithm] Specifies the SSH key algorithm of git repository.
  /// [label] Specifies the label of the repository.
  /// [name] Specifies the name which should be used for this repository.
  /// [password] Specifies the password of git repository basic auth.
  /// [patterns] Specifies the collection of patterns of the repository.
  /// [privateKey] Specifies the SSH private key of git repository.
  /// [searchPaths] Specifies a list of searching path of the repository
  /// [strictHostKeyChecking] Specifies whether enable the strict host key checking.
  /// [uri] Specifies the URI of the repository.
  /// [username] Specifies the username of git repository basic auth.
  const SpringCloudConfigurationServiceRepository({
    this.caCertificateId,
    this.hostKey,
    this.hostKeyAlgorithm,
    required this.label,
    required this.name,
    this.password,
    required this.patterns,
    this.privateKey,
    this.searchPaths,
    this.strictHostKeyChecking,
    required this.uri,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caCertificateId': ?caCertificateId,
      'hostKey': ?hostKey,
      'hostKeyAlgorithm': ?hostKeyAlgorithm,
      'label': label,
      'name': name,
      'password': ?password,
      'patterns': patterns,
      'privateKey': ?privateKey,
      'searchPaths': ?searchPaths,
      'strictHostKeyChecking': ?strictHostKeyChecking,
      'uri': uri,
      'username': ?username,
    };
  }

  factory SpringCloudConfigurationServiceRepository.fromMap(Map<String, dynamic> map) {
    return SpringCloudConfigurationServiceRepository(
      caCertificateId: (() { final guardedValue = map['caCertificateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostKey: (() { final guardedValue = map['hostKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostKeyAlgorithm: (() { final guardedValue = map['hostKeyAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: pulumi.Input.fromValue(map['label'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      patterns: pulumi.Input.fromValue((map['patterns'] as List).cast<String>()),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      searchPaths: (() { final guardedValue = map['searchPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      strictHostKeyChecking: (() { final guardedValue = map['strictHostKeyChecking']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      uri: pulumi.Input.fromValue(map['uri'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
