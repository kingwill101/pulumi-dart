// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_get_project_get_project_args_doc}
/// Arguments for getProject.
/// {@endtemplate}
/// {@macro pulumi_identity_get_project_get_project_args_doc}
class GetProjectArgs {
  /// The domain this project belongs to.
  final pulumi.Input<String>? domainId;

  /// Whether the project is enabled or disabled. Valid
  /// values are `true` and `false`.
  final pulumi.Input<bool>? enabled;

  /// Whether this project is a domain. Valid values
  /// are `true` and `false`.
  final pulumi.Input<bool>? isDomain;

  /// The name of the project.
  final pulumi.Input<String>? name;

  /// The parent of this project.
  final pulumi.Input<String>? parentId;

  /// The id of the project. Conflicts with any of the
  /// above arguments.
  final pulumi.Input<String>? projectId;

  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetProjectArgs].
  /// [domainId] The domain this project belongs to.
  /// [enabled] Whether the project is enabled or disabled. Valid
  /// [isDomain] Whether this project is a domain. Valid values
  /// [name] The name of the project.
  /// [parentId] The parent of this project.
  /// [projectId] The id of the project. Conflicts with any of the
  /// [region] The region in which to obtain the V3 Keystone client.
  GetProjectArgs({
    this.domainId,
    this.enabled,
    this.isDomain,
    this.name,
    this.parentId,
    this.projectId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': ?domainId,
      'enabled': ?enabled,
      'isDomain': ?isDomain,
      'name': ?name,
      'parentId': ?parentId,
      'projectId': ?projectId,
      'region': ?region,
    };
  }

  factory GetProjectArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectArgs(
      domainId: (() {
        final guardedValue = map['domainId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      isDomain: (() {
        final guardedValue = map['isDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parentId: (() {
        final guardedValue = map['parentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
