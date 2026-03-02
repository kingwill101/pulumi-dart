// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_as3_device_information_get_as3_device_information_args_doc}
/// Arguments for getAs3DeviceInformation.
/// {@endtemplate}
/// {@macro pulumi_index_get_as3_device_information_get_as3_device_information_args_doc}
class GetAs3DeviceInformationArgs {
  final pulumi.Input<List<String>>? applications;
  final pulumi.Input<String> tenant;

  /// Creates a new [GetAs3DeviceInformationArgs].
  /// [applications] Optional.
  /// [tenant] Required.
  GetAs3DeviceInformationArgs({
    this.applications,
    required this.tenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applications': ?applications,
      'tenant': tenant,
    };
  }

  factory GetAs3DeviceInformationArgs.fromMap(Map<String, dynamic> map) {
    return GetAs3DeviceInformationArgs(
      applications: map['applications'] == null ? null : ((map['applications']! as List).cast<String>()).input(),
      tenant: (map['tenant'] as String).input(),
    );
  }
}

