// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_external_address_args_doc}
/// Arguments for getExternalAddress.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_external_address_args_doc}
class GetExternalAddressArgs {
  final pulumi.Input<String> externalAddressId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetExternalAddressArgs].
  /// [externalAddressId] Required.
  /// [location] Required.
  /// [privateCloudId] Required.
  /// [project] Optional.
  const GetExternalAddressArgs({
    required this.externalAddressId,
    required this.location,
    required this.privateCloudId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalAddressId': externalAddressId,
      'location': location,
      'privateCloudId': privateCloudId,
      'project': ?project,
    };
  }

  factory GetExternalAddressArgs.fromMap(Map<String, dynamic> map) {
    return GetExternalAddressArgs(
      externalAddressId: pulumi.Input.fromValue(map['externalAddressId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      privateCloudId: pulumi.Input.fromValue(map['privateCloudId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
