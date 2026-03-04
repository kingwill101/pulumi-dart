// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppIngressCustomDomain {
  /// The Binding type.
  final pulumi.Input<String>? certificateBindingType;

  /// The ID of the Container App Environment Certificate.
  final pulumi.Input<String>? certificateId;

  /// The name for this Container App. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [AppIngressCustomDomain].
  /// [certificateBindingType] The Binding type.
  /// [certificateId] The ID of the Container App Environment Certificate.
  /// [name] The name for this Container App. Changing this forces a new resource to be created.
  AppIngressCustomDomain({
    this.certificateBindingType,
    this.certificateId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateBindingType': ?certificateBindingType,
      'certificateId': ?certificateId,
      'name': ?name,
    };
  }

  factory AppIngressCustomDomain.fromMap(Map<String, dynamic> map) {
    return AppIngressCustomDomain(
      certificateBindingType: (() {
        final guardedValue = map['certificateBindingType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certificateId: (() {
        final guardedValue = map['certificateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
