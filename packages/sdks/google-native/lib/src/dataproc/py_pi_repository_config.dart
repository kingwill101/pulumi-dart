// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for PyPi repository
class PyPiRepositoryConfig {
  /// Optional. PyPi repository address
  final pulumi.Input<String>? pypiRepository;

  /// Creates a new [PyPiRepositoryConfig].
  /// [pypiRepository] Optional. PyPi repository address
  PyPiRepositoryConfig({
    this.pypiRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pypiRepository': ?pypiRepository,
    };
  }

  factory PyPiRepositoryConfig.fromMap(Map<String, dynamic> map) {
    return PyPiRepositoryConfig(
      pypiRepository: map['pypiRepository'] == null ? null : (map['pypiRepository']! as String).input(),
    );
  }
}

