// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectorSubnet {
  /// Name of the resource.
  ///
  /// - - -
  final pulumi.Input<String> name;

  /// Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued.
  final pulumi.Input<String> projectId;

  /// Creates a new [GetConnectorSubnet].
  /// [name] Name of the resource.
  /// [projectId] Project in which the subnet exists. If not set, this project is assumed to be the project for which the connector create request was issued.
  GetConnectorSubnet({required this.name, required this.projectId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'projectId': projectId};
  }

  factory GetConnectorSubnet.fromMap(Map<String, dynamic> map) {
    return GetConnectorSubnet(
      name: pulumi.Input.fromValue(map['name'] as String),
      projectId: pulumi.Input.fromValue(map['projectId'] as String),
    );
  }
}
