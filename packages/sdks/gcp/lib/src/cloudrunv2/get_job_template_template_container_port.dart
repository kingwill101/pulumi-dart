// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobTemplateTemplateContainerPort {
  /// Port number the container listens on. This must be a valid TCP port number, 0 &lt; containerPort &lt; 65536.
  final pulumi.Input<int> containerPort;
  /// The name of the Cloud Run v2 Job.
  final pulumi.Input<String> name;

  /// Creates a new [GetJobTemplateTemplateContainerPort].
  /// [containerPort] Port number the container listens on. This must be a valid TCP port number, 0 &lt; containerPort &lt; 65536.
  /// [name] The name of the Cloud Run v2 Job.
  const GetJobTemplateTemplateContainerPort({
    required this.containerPort,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPort': containerPort,
      'name': name,
    };
  }

  factory GetJobTemplateTemplateContainerPort.fromMap(Map<String, dynamic> map) {
    return GetJobTemplateTemplateContainerPort(
      containerPort: pulumi.Input.fromValue(map['containerPort'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

