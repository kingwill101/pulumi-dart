// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayAppTypesListResult {
  /// Identify the type of this application. Multiple applications can share the same type. Refers to the `id` of a returned application type.
  final pulumi.Input<int> applicationTypeId;
  final pulumi.Input<String> createdAt;
  /// Provide a short summary of applications with this type.
  final pulumi.Input<String> description;
  /// Identify this application. Only one application per ID.
  final pulumi.Input<int> id;
  /// Specify the name of the application or application type.
  final pulumi.Input<String> name;

  /// Creates a new [GetZeroTrustGatewayAppTypesListResult].
  /// [applicationTypeId] Identify the type of this application. Multiple applications can share the same type. Refers to the `id` of a returned application type.
  /// [createdAt] Required.
  /// [description] Provide a short summary of applications with this type.
  /// [id] Identify this application. Only one application per ID.
  /// [name] Specify the name of the application or application type.
  const GetZeroTrustGatewayAppTypesListResult({
    required this.applicationTypeId,
    required this.createdAt,
    required this.description,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationTypeId': applicationTypeId,
      'createdAt': createdAt,
      'description': description,
      'id': id,
      'name': name,
    };
  }

  factory GetZeroTrustGatewayAppTypesListResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayAppTypesListResult(
      applicationTypeId: pulumi.Input.fromValue((map['applicationTypeId'] as num).toInt()),
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue((map['id'] as num).toInt()),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
