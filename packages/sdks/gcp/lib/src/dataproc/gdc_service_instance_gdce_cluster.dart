// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GdcServiceInstanceGdceCluster {
  /// Gdce cluster resource id.
  final pulumi.Input<String> gdceCluster;

  /// Creates a new [GdcServiceInstanceGdceCluster].
  /// [gdceCluster] Gdce cluster resource id.
  GdcServiceInstanceGdceCluster({required this.gdceCluster});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'gdceCluster': gdceCluster};
  }

  factory GdcServiceInstanceGdceCluster.fromMap(Map<String, dynamic> map) {
    return GdcServiceInstanceGdceCluster(
      gdceCluster: pulumi.Input.fromValue(map['gdceCluster'] as String),
    );
  }
}
