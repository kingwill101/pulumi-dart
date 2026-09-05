// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpringCloudServiceDefaultBuildService {
  /// Specifies the name of the container registry used in the default build service.
  final pulumi.Input<String?>? containerRegistryName;

  /// Creates a new [SpringCloudServiceDefaultBuildService].
  /// [containerRegistryName] Specifies the name of the container registry used in the default build service.
  const SpringCloudServiceDefaultBuildService({
    this.containerRegistryName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryName': ?containerRegistryName,
    };
  }

  factory SpringCloudServiceDefaultBuildService.fromMap(Map<String, dynamic> map) {
    return SpringCloudServiceDefaultBuildService(
      containerRegistryName: (() { final guardedValue = map['containerRegistryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
