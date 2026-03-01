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
  GetExternalAddressArgs({
    required pulumi.Output<String> externalAddressId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> privateCloudId,
    pulumi.Output<String>? project,
  }) :
      externalAddressId = pulumi.Input.asInput<String>(externalAddressId),
      location = pulumi.Input.asInput<String>(location),
      privateCloudId = pulumi.Input.asInput<String>(privateCloudId),
      project = pulumi.Input.asOptionalInput<String>(project);

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
      externalAddressId: pulumi.Output.create<String>(map['externalAddressId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      privateCloudId: pulumi.Output.create<String>(map['privateCloudId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

