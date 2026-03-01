// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dns_get_managed_zone_get_managed_zone_args_doc}
/// Arguments for getManagedZone.
/// {@endtemplate}
/// {@macro pulumi_dns_get_managed_zone_get_managed_zone_args_doc}
class GetManagedZoneArgs {
  /// A unique name for the resource.
  final pulumi.Input<String> name;
  /// The ID of the project for the Google Cloud DNS zone.  If this is not provided the default project will be used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetManagedZoneArgs].
  /// [name] A unique name for the resource.
  /// [project] The ID of the project for the Google Cloud DNS zone.  If this is not provided the default project will be used.
  GetManagedZoneArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
    };
  }

  factory GetManagedZoneArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedZoneArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

