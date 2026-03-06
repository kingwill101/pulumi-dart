// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_token_authentication_response.dart';

/// The Docker Hub connector environment data
class DockerHubEnvironmentDataResponse {
  /// The Docker Hub organization authentication details
  final pulumi.Input<AccessTokenAuthenticationResponse>? authentication;
  /// The type of the environment data.
  /// Expected value is 'DockerHubOrganization'.
  final pulumi.Input<String> environmentType;
  /// Scan interval in hours (value should be between 1-hour to 24-hours)
  final pulumi.Input<double>? scanInterval;

  /// Creates a new [DockerHubEnvironmentDataResponse].
  /// [authentication] The Docker Hub organization authentication details
  /// [environmentType] The type of the environment data.
  /// [scanInterval] Scan interval in hours (value should be between 1-hour to 24-hours)
  const DockerHubEnvironmentDataResponse({
    this.authentication,
    required this.environmentType,
    this.scanInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<AccessTokenAuthenticationResponse, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'environmentType': environmentType,
      'scanInterval': ?scanInterval,
    };
  }

  factory DockerHubEnvironmentDataResponse.fromMap(Map<String, dynamic> map) {
    return DockerHubEnvironmentDataResponse(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessTokenAuthenticationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentType: pulumi.Input.fromValue(map['environmentType'] as String),
      scanInterval: (() { final guardedValue = map['scanInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

