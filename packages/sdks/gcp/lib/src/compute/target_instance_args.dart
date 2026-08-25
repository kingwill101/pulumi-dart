// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_target_instance_target_instance_args_doc}
/// The set of arguments for TargetInstance.
/// {@endtemplate}
/// {@macro pulumi_compute_target_instance_target_instance_args_doc}
class TargetInstanceArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// The Compute instance VM handling traffic for this target instance.
  /// Accepts the instance self-link, relative path
  /// (e.g. `projects/project/zones/zone/instances/instance`) or name. If
  /// name is given, the zone will default to the given zone or
  /// the provider-default zone and the project will default to the
  /// provider-level project.
  final pulumi.Input<String> instance;
  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// NAT option controlling how IPs are NAT'ed to the instance.
  /// Currently only NO_NAT (default value) is supported.
  /// Default value is `NO_NAT`.
  /// Possible values are: `NO_NAT`.
  final pulumi.Input<String?>? natPolicy;
  /// (Optional, Beta)
  /// The URL of the network this target instance uses to forward traffic. If not specified, the traffic will be forwarded to the network that the default network interface belongs to.
  final pulumi.Input<String?>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// (Optional, Beta)
  /// The resource URL for the security policy associated with this target instance.
  final pulumi.Input<String?>? securityPolicy;
  /// URL of the zone where the target instance resides.
  final pulumi.Input<String?>? zone;

  /// Creates a new [TargetInstanceArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [instance] The Compute instance VM handling traffic for this target instance.
  /// [name] Name of the resource. Provided by the client when the resource is
  /// [natPolicy] NAT option controlling how IPs are NAT'ed to the instance.
  /// [network] (Optional, Beta)
  /// [project] The ID of the project in which the resource belongs.
  /// [securityPolicy] (Optional, Beta)
  /// [zone] URL of the zone where the target instance resides.
  const TargetInstanceArgs({
    this.deletionPolicy,
    this.description,
    required this.instance,
    this.name,
    this.natPolicy,
    this.network,
    this.project,
    this.securityPolicy,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'instance': instance,
      'name': ?name,
      'natPolicy': ?natPolicy,
      'network': ?network,
      'project': ?project,
      'securityPolicy': ?securityPolicy,
      'zone': ?zone,
    };
  }

  factory TargetInstanceArgs.fromMap(Map<String, dynamic> map) {
    return TargetInstanceArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      natPolicy: (() { final guardedValue = map['natPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityPolicy: (() { final guardedValue = map['securityPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
