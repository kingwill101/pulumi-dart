// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contactcenteraiplatform_v1alpha1_get_contact_center_args_doc}
/// Arguments for getContactCenter.
/// {@endtemplate}
/// {@macro pulumi_contactcenteraiplatform_v1alpha1_get_contact_center_args_doc}
class GetContactCenterArgs {
  final pulumi.Input<String> contactCenterId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetContactCenterArgs].
  /// [contactCenterId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetContactCenterArgs({
    required this.contactCenterId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contactCenterId': contactCenterId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetContactCenterArgs.fromMap(Map<String, dynamic> map) {
    return GetContactCenterArgs(
      contactCenterId: pulumi.Input.fromValue(map['contactCenterId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
