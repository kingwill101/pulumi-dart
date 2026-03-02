// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// A description of the project.
  final pulumi.Input<String>? description;
  /// The domain this project belongs to.
  final pulumi.Input<String>? domainId;
  /// Whether the project is enabled or disabled. Valid
  /// values are `true` and `false`. Default is `true`.
  final pulumi.Input<bool>? enabled;
  /// Whether this project is a domain. Valid values
  /// are `true` and `false`. Default is `false`. Changing this creates a new
  /// project/domain.
  final pulumi.Input<bool>? isDomain;
  /// The name of the project.
  final pulumi.Input<String>? name;
  /// The parent of this project. Changing this creates
  /// a new project.
  final pulumi.Input<String>? parentId;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new project.
  final pulumi.Input<String>? region;
  /// Tags for the project. Changing this updates the existing
  /// project.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [ProjectState].
  /// [description] A description of the project.
  /// [domainId] The domain this project belongs to.
  /// [enabled] Whether the project is enabled or disabled. Valid
  /// [isDomain] Whether this project is a domain. Valid values
  /// [name] The name of the project.
  /// [parentId] The parent of this project. Changing this creates
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [tags] Tags for the project. Changing this updates the existing
  ProjectState({
    this.description,
    this.domainId,
    this.enabled,
    this.isDomain,
    this.name,
    this.parentId,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'domainId': ?domainId,
      'enabled': ?enabled,
      'isDomain': ?isDomain,
      'name': ?name,
      'parentId': ?parentId,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      domainId: map['domainId'] == null ? null : (map['domainId']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      isDomain: map['isDomain'] == null ? null : (map['isDomain']! as bool).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parentId: map['parentId'] == null ? null : (map['parentId']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as List).cast<String>()).input(),
    );
  }
}

