// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'py_pi_repository_config_response.dart';

/// Configuration for dependency repositories
class RepositoryConfigResponse {
  /// Optional. Configuration for PyPi repository.
  final pulumi.Input<PyPiRepositoryConfigResponse> pypiRepositoryConfig;

  /// Creates a new [RepositoryConfigResponse].
  /// [pypiRepositoryConfig] Optional. Configuration for PyPi repository.
  const RepositoryConfigResponse({
    required this.pypiRepositoryConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pypiRepositoryConfig': pulumi.Input.mapInputValue<PyPiRepositoryConfigResponse, Map<String, dynamic>>(pypiRepositoryConfig, (value) => value.toMap()),
    };
  }

  factory RepositoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return RepositoryConfigResponse(
      pypiRepositoryConfig: pulumi.Input.fromValue(PyPiRepositoryConfigResponse.fromMap((map['pypiRepositoryConfig']! as Map).cast<String, dynamic>())),
    );
  }
}

