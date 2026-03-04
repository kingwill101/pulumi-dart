// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkservices_v1beta1_get_lb_route_extension_args_doc}
/// Arguments for getLbRouteExtension.
/// {@endtemplate}
/// {@macro pulumi_networkservices_v1beta1_get_lb_route_extension_args_doc}
class GetLbRouteExtensionArgs {
  final pulumi.Input<String> lbRouteExtensionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLbRouteExtensionArgs].
  /// [lbRouteExtensionId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetLbRouteExtensionArgs({
    required this.lbRouteExtensionId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lbRouteExtensionId': lbRouteExtensionId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetLbRouteExtensionArgs.fromMap(Map<String, dynamic> map) {
    return GetLbRouteExtensionArgs(
      lbRouteExtensionId: pulumi.Input.fromValue(
        map['lbRouteExtensionId'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
