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
  SpringCloudConfigurationServiceRepository({
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
      caCertificateId: map['caCertificateId'] == null ? null : (map['caCertificateId']! as String).input(),
      hostKey: map['hostKey'] == null ? null : (map['hostKey']! as String).input(),
      hostKeyAlgorithm: map['hostKeyAlgorithm'] == null ? null : (map['hostKeyAlgorithm']! as String).input(),
      label: (map['label'] as String).input(),
      name: (map['name'] as String).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      patterns: ((map['patterns'] as List).cast<String>()).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey']! as String).input(),
      searchPaths: map['searchPaths'] == null ? null : ((map['searchPaths']! as List).cast<String>()).input(),
      strictHostKeyChecking: map['strictHostKeyChecking'] == null ? null : (map['strictHostKeyChecking']! as bool).input(),
      uri: (map['uri'] as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

