// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_token_authentication.dart';

/// The Docker Hub connector environment data
class DockerHubEnvironmentData {
  /// The Docker Hub organization authentication details
  final pulumi.Input<AccessTokenAuthentication?>? authentication;
  /// The type of the environment data.
  /// Expected value is 'DockerHubOrganization'.
  final pulumi.Input<String> environmentType;
  /// Scan interval in hours (value should be between 1-hour to 24-hours)
  final pulumi.Input<double?>? scanInterval;

  /// Creates a new [DockerHubEnvironmentData].
  /// [authentication] The Docker Hub organization authentication details
  /// [environmentType] The type of the environment data.
  /// [scanInterval] Scan interval in hours (value should be between 1-hour to 24-hours)
  const DockerHubEnvironmentData({
    this.authentication,
    required this.environmentType,
    this.scanInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<AccessTokenAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'environmentType': environmentType,
      'scanInterval': ?scanInterval,
    };
  }

  factory DockerHubEnvironmentData.fromMap(Map<String, dynamic> map) {
    return DockerHubEnvironmentData(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccessTokenAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentType: pulumi.Input.fromValue(map['environmentType'] as String),
      scanInterval: (() { final guardedValue = map['scanInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
