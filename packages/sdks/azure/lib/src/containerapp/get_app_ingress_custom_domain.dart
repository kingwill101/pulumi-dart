// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppIngressCustomDomain {
  /// The Binding type.
  final pulumi.Input<String> certificateBindingType;
  /// The ID of the Container App Environment Certificate.
  final pulumi.Input<String> certificateId;
  /// The name of the Container App.
  final pulumi.Input<String> name;

  /// Creates a new [GetAppIngressCustomDomain].
  /// [certificateBindingType] The Binding type.
  /// [certificateId] The ID of the Container App Environment Certificate.
  /// [name] The name of the Container App.
  const GetAppIngressCustomDomain({
    required this.certificateBindingType,
    required this.certificateId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateBindingType': certificateBindingType,
      'certificateId': certificateId,
      'name': name,
    };
  }

  factory GetAppIngressCustomDomain.fromMap(Map<String, dynamic> map) {
    return GetAppIngressCustomDomain(
      certificateBindingType: pulumi.Input.fromValue(map['certificateBindingType'] as String),
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

