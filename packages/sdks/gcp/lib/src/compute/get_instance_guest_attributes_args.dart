// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_instance_guest_attributes_get_instance_guest_attributes_args_doc}
/// Arguments for getInstanceGuestAttributes.
/// {@endtemplate}
/// {@macro pulumi_compute_get_instance_guest_attributes_get_instance_guest_attributes_args_doc}
class GetInstanceGuestAttributesArgs {
  /// The name or self_link of the instance.
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs.
  /// If `self_link` is provided, this value is ignored.  If neither `self_link`
  /// nor `project` are provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Path to query for the guest attributes. Consists of
  /// `namespace` name for the attributes followed with a `/`.
  final pulumi.Input<String>? queryPath;
  final pulumi.Input<String>? region;
  /// Key of a variable to get the value of. Consists of
  /// `namespace` name and `key` name for the variable separated by a `/`.
  final pulumi.Input<String>? variableKey;
  /// The zone of the instance. If `self_link` is provided, this
  /// value is ignored.  If neither `self_link` nor `zone` are provided, the
  /// provider zone is used.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetInstanceGuestAttributesArgs].
  /// [name] The name or self_link of the instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [queryPath] Path to query for the guest attributes. Consists of
  /// [region] Optional.
  /// [variableKey] Key of a variable to get the value of. Consists of
  /// [zone] The zone of the instance. If `self_link` is provided, this
  GetInstanceGuestAttributesArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? queryPath,
    pulumi.Output<String>? region,
    pulumi.Output<String>? variableKey,
    pulumi.Output<String>? zone,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      queryPath = pulumi.Input.asOptionalInput<String>(queryPath),
      region = pulumi.Input.asOptionalInput<String>(region),
      variableKey = pulumi.Input.asOptionalInput<String>(variableKey),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'queryPath': ?queryPath,
      'region': ?region,
      'variableKey': ?variableKey,
      'zone': ?zone,
    };
  }

  factory GetInstanceGuestAttributesArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceGuestAttributesArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      queryPath: map['queryPath'] == null ? null : pulumi.Output.create<String>(map['queryPath'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      variableKey: map['variableKey'] == null ? null : pulumi.Output.create<String>(map['variableKey'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

