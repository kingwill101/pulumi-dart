// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateTemplateContainerPort {
  /// Port number the container listens on. This must be a valid TCP port number, 0 &lt; containerPort &lt; 65536.
  final pulumi.Input<int>? containerPort;
  /// If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  final pulumi.Input<String>? name;

  /// Creates a new [JobTemplateTemplateContainerPort].
  /// [containerPort] Port number the container listens on. This must be a valid TCP port number, 0 &lt; containerPort &lt; 65536.
  /// [name] If specified, used to specify which protocol to use. Allowed values are "http1" and "h2c".
  const JobTemplateTemplateContainerPort({
    this.containerPort,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerPort': ?containerPort,
      'name': ?name,
    };
  }

  factory JobTemplateTemplateContainerPort.fromMap(Map<String, dynamic> map) {
    return JobTemplateTemplateContainerPort(
      containerPort: (() { final guardedValue = map['containerPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
