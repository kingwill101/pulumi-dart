// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceTemplateContainerPort {
  /// Port number the container listens on. This must be a valid TCP port number, 0 &lt; containerPort &lt; 65536.
  final pulumi.Input<int> containerPort;
  /// The name of the Cloud Run v2 Service.
  final pulumi.Input<String> name;

  /// Creates a new [GetServiceTemplateContainerPort].
  /// [containerPort] Port number the container listens on. This must be a valid TCP port number, 0 &lt; containerPort &lt; 65536.
  /// [name] The name of the Cloud Run v2 Service.
  GetServiceTemplateContainerPort({
    required this.containerPort,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPort': containerPort,
      'name': name,
    };
  }

  factory GetServiceTemplateContainerPort.fromMap(Map<String, dynamic> map) {
    return GetServiceTemplateContainerPort(
      containerPort: pulumi.Input.fromValue(map['containerPort'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

