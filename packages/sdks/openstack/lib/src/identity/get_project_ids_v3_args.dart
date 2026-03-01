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
    pulumi.Output<String>? domainId,
    pulumi.Output<bool>? enabled,
    pulumi.Output<bool>? isDomain,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? parentId,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? tags,
  }) :
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      isDomain = pulumi.Input.asOptionalInput<bool>(isDomain),
      name = pulumi.Input.asOptionalInput<String>(name),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      parentId = pulumi.Input.asOptionalInput<String>(parentId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags);

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
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      isDomain: map['isDomain'] == null ? null : pulumi.Output.create<bool>(map['isDomain'] as bool),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      parentId: map['parentId'] == null ? null : pulumi.Output.create<String>(map['parentId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<String>>((map['tags'] as List).cast<String>()),
    );
  }
}

