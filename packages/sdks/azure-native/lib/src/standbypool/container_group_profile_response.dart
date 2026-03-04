// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the ContainerGroupProfile.
class ContainerGroupProfileResponse {
  /// Specifies container group profile id of standby container groups.
  final pulumi.Input<String> id;

  /// Specifies revision of container group profile.
  final pulumi.Input<double>? revision;

  /// Creates a new [ContainerGroupProfileResponse].
  /// [id] Specifies container group profile id of standby container groups.
  /// [revision] Specifies revision of container group profile.
  ContainerGroupProfileResponse({required this.id, this.revision});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'revision': ?revision};
  }

  factory ContainerGroupProfileResponse.fromMap(Map<String, dynamic> map) {
    return ContainerGroupProfileResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      revision: (() {
        final guardedValue = map['revision'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
    );
  }
}
