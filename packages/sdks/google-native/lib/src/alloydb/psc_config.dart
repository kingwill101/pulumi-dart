// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PscConfig contains PSC related configuration at a cluster level. NEXT ID: 2
class PscConfig {
  /// Optional. Create an instance that allows connections from Private Service Connect endpoints to the instance.
  final pulumi.Input<bool>? pscEnabled;

  /// Creates a new [PscConfig].
  /// [pscEnabled] Optional. Create an instance that allows connections from Private Service Connect endpoints to the instance.
  const PscConfig({
    this.pscEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pscEnabled': ?pscEnabled,
    };
  }

  factory PscConfig.fromMap(Map<String, dynamic> map) {
    return PscConfig(
      pscEnabled: (() { final guardedValue = map['pscEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
