// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContainersContainer {
  /// The data plane ID of the Storage Container.
  final pulumi.Input<String> dataPlaneId;
  /// The name of this Storage Container.
  final pulumi.Input<String> name;
  /// The resource manager ID of the Storage Container.
  final pulumi.Input<String> resourceManagerId;

  /// Creates a new [GetContainersContainer].
  /// [dataPlaneId] The data plane ID of the Storage Container.
  /// [name] The name of this Storage Container.
  /// [resourceManagerId] The resource manager ID of the Storage Container.
  GetContainersContainer({
    required this.dataPlaneId,
    required this.name,
    required this.resourceManagerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPlaneId': dataPlaneId,
      'name': name,
      'resourceManagerId': resourceManagerId,
    };
  }

  factory GetContainersContainer.fromMap(Map<String, dynamic> map) {
    return GetContainersContainer(
      dataPlaneId: (map['dataPlaneId'] as String).input(),
      name: (map['name'] as String).input(),
      resourceManagerId: (map['resourceManagerId'] as String).input(),
    );
  }
}

