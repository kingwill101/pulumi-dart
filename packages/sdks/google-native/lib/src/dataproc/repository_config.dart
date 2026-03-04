// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'py_pi_repository_config.dart';

/// Configuration for dependency repositories
class RepositoryConfig {
  /// Optional. Configuration for PyPi repository.
  final pulumi.Input<PyPiRepositoryConfig>? pypiRepositoryConfig;

  /// Creates a new [RepositoryConfig].
  /// [pypiRepositoryConfig] Optional. Configuration for PyPi repository.
  RepositoryConfig({this.pypiRepositoryConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pypiRepositoryConfig':
          ?pulumi.Input.mapOptionalInputValue<
            PyPiRepositoryConfig,
            Map<String, dynamic>
          >(pypiRepositoryConfig, (value) => value.toMap()),
    };
  }

  factory RepositoryConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryConfig(
      pypiRepositoryConfig: (() {
        final guardedValue = map['pypiRepositoryConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PyPiRepositoryConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
