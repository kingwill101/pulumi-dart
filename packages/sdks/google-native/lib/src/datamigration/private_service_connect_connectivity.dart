// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// [Private Service Connect connectivity](https://cloud.google.com/vpc/docs/private-service-connect#service-attachments)
class PrivateServiceConnectConnectivity {
  /// A service attachment that exposes a database, and has the following format: projects/{project}/regions/{region}/serviceAttachments/{service_attachment_name}
  final pulumi.Input<String> serviceAttachment;

  /// Creates a new [PrivateServiceConnectConnectivity].
  /// [serviceAttachment] A service attachment that exposes a database, and has the following format: projects/{project}/regions/{region}/serviceAttachments/{service_attachment_name}
  PrivateServiceConnectConnectivity({
    required this.serviceAttachment,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAttachment': serviceAttachment,
    };
  }

  factory PrivateServiceConnectConnectivity.fromMap(Map<String, dynamic> map) {
    return PrivateServiceConnectConnectivity(
      serviceAttachment: pulumi.Input.fromValue(map['serviceAttachment'] as String),
    );
  }
}

