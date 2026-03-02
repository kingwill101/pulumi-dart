// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_lb_traffic_extension_args_doc}
/// Arguments for getLbTrafficExtension.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_lb_traffic_extension_args_doc}
class GetLbTrafficExtensionArgs {
  final pulumi.Input<String> lbTrafficExtensionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLbTrafficExtensionArgs].
  /// [lbTrafficExtensionId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetLbTrafficExtensionArgs({
    required this.lbTrafficExtensionId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lbTrafficExtensionId': lbTrafficExtensionId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetLbTrafficExtensionArgs.fromMap(Map<String, dynamic> map) {
    return GetLbTrafficExtensionArgs(
      lbTrafficExtensionId: (map['lbTrafficExtensionId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

