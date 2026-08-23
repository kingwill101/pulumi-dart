// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for PyPi repository
class PyPiRepositoryConfig {
  /// Optional. PyPi repository address
  final pulumi.Input<String>? pypiRepository;

  /// Creates a new [PyPiRepositoryConfig].
  /// [pypiRepository] Optional. PyPi repository address
  const PyPiRepositoryConfig({
    this.pypiRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pypiRepository': ?pypiRepository,
    };
  }

  factory PyPiRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return PyPiRepositoryConfig(
      pypiRepository: (() { final guardedValue = map['pypiRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
