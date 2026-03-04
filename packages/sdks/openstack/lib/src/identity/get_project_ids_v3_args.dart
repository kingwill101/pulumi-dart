// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_get_project_ids_v3_get_project_ids_v3_args_doc}
/// Arguments for getProjectIdsV3.
/// {@endtemplate}
/// {@macro pulumi_identity_get_project_ids_v3_get_project_ids_v3_args_doc}
class GetProjectIdsV3Args {
  /// The domain projects belongs to.
  final pulumi.Input<String>? domainId;

  /// Whether the project is enabled or disabled. Valid
  /// values are `true` and `false`. Default is `true`.
  final pulumi.Input<bool>? enabled;
  final pulumi.Input<bool>? isDomain;

  /// The name of the project.
  final pulumi.Input<String>? name;

  /// The regular expression of the name of the project.
  /// Cannot be used simultaneously with `name`. Unlike filtering by `name` the
  /// `name_regex` filtering does by client on the result of OpenStack search
  /// query.
  final pulumi.Input<String>? nameRegex;

  /// The parent of the project.
  final pulumi.Input<String>? parentId;

  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Tags for the project.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [GetProjectIdsV3Args].
  /// [domainId] The domain projects belongs to.
  /// [enabled] Whether the project is enabled or disabled. Valid
  /// [isDomain] Optional.
  /// [name] The name of the project.
  /// [nameRegex] The regular expression of the name of the project.
  /// [parentId] The parent of the project.
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [tags] Tags for the project.
  GetProjectIdsV3Args({
    this.domainId,
    this.enabled,
    this.isDomain,
    this.name,
    this.nameRegex,
    this.parentId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': ?domainId,
      'enabled': ?enabled,
      'isDomain': ?isDomain,
      'name': ?name,
      'nameRegex': ?nameRegex,
      'parentId': ?parentId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetProjectIdsV3Args.fromMap(Map<String, dynamic> map) {
    return GetProjectIdsV3Args(
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
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parentId: (() {
        final guardedValue = map['parentId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
