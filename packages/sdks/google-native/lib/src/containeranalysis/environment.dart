// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines an object for the environment field in in-toto links. The suggested fields are "variables", "filesystem", and "workdir".
class Environment {
  final pulumi.Input<Map<String, String>>? customValues;

  /// Creates a new [Environment].
  /// [customValues] Optional.
  Environment({
    this.customValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customValues': ?customValues,
    };
  }

  factory Environment.fromMap(Map<String, dynamic> map) {
    return Environment(
      customValues: map['customValues'] == null ? null : ((map['customValues']! as Map).cast<String, String>()).input(),
    );
  }
}

