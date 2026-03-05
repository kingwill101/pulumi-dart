// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PscConfig contains PSC related configuration at a cluster level. NEXT ID: 2
class PscConfigResponse {
  /// Optional. Create an instance that allows connections from Private Service Connect endpoints to the instance.
  final pulumi.Input<bool> pscEnabled;

  /// Creates a new [PscConfigResponse].
  /// [pscEnabled] Optional. Create an instance that allows connections from Private Service Connect endpoints to the instance.
  PscConfigResponse({
    required this.pscEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pscEnabled': pscEnabled,
    };
  }

  factory PscConfigResponse.fromMap(Map<String, dynamic> map) {
    return PscConfigResponse(
      pscEnabled: pulumi.Input.fromValue(map['pscEnabled'] as bool),
    );
  }
}

