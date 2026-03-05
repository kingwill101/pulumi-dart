// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for PyPi repository
class PyPiRepositoryConfigResponse {
  /// Optional. PyPi repository address
  final pulumi.Input<String> pypiRepository;

  /// Creates a new [PyPiRepositoryConfigResponse].
  /// [pypiRepository] Optional. PyPi repository address
  PyPiRepositoryConfigResponse({
    required this.pypiRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pypiRepository': pypiRepository,
    };
  }

  factory PyPiRepositoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return PyPiRepositoryConfigResponse(
      pypiRepository: pulumi.Input.fromValue(map['pypiRepository'] as String),
    );
  }
}

