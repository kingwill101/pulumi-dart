// ignore_for_file: unused_element, unnecessary_cast

import 'access_token_authentication_response.dart';

/// The Docker Hub connector environment data
class DockerHubEnvironmentDataResponse {
  /// The Docker Hub organization authentication details
  final AccessTokenAuthenticationResponse? authentication;
  /// The type of the environment data.
  /// Expected value is 'DockerHubOrganization'.
  final String environmentType;
  /// Scan interval in hours (value should be between 1-hour to 24-hours)
  final double? scanInterval;

  /// Creates a new [DockerHubEnvironmentDataResponse].
  /// [authentication] The Docker Hub organization authentication details
  /// [environmentType] The type of the environment data.
  /// [scanInterval] Scan interval in hours (value should be between 1-hour to 24-hours)
  DockerHubEnvironmentDataResponse({
    this.authentication,
    required this.environmentType,
    this.scanInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication == null ? null : authentication!.toMap(),
      'environmentType': environmentType,
      'scanInterval': ?scanInterval,
    };
  }

  factory DockerHubEnvironmentDataResponse.fromMap(Map<String, dynamic> map) {
    return DockerHubEnvironmentDataResponse(
      authentication: map['authentication'] == null ? null : AccessTokenAuthenticationResponse.fromMap((map['authentication'] as Map).cast<String, dynamic>()),
      environmentType: map['environmentType'] as String,
      scanInterval: map['scanInterval'] == null ? null : map['scanInterval'] as double,
    );
  }
}

