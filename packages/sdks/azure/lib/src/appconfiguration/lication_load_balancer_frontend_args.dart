// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfiguration_lication_load_balancer_frontend_lication_load_balancer_frontend_args_doc}
/// The set of arguments for LicationLoadBalancerFrontend.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_lication_load_balancer_frontend_lication_load_balancer_frontend_args_doc}
class LicationLoadBalancerFrontendArgs {
  /// The ID of the Application Gateway for Containers. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationLoadBalancerId;
  /// The name which should be used for this Application Gateway for Containers Frontend. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags which should be assigned to the Application Gateway for Containers Frontend.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LicationLoadBalancerFrontendArgs].
  /// [applicationLoadBalancerId] The ID of the Application Gateway for Containers. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Application Gateway for Containers Frontend. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Application Gateway for Containers Frontend.
  const LicationLoadBalancerFrontendArgs({
    required this.applicationLoadBalancerId,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationLoadBalancerId': applicationLoadBalancerId,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory LicationLoadBalancerFrontendArgs.fromMap(Map<String, dynamic> map) {
    return LicationLoadBalancerFrontendArgs(
      applicationLoadBalancerId: pulumi.Input.fromValue(map['applicationLoadBalancerId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

