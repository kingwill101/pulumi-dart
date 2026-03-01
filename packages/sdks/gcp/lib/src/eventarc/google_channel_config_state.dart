// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GoogleChannelConfig resources.
class GoogleChannelConfigState {
  /// Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  final pulumi.Input<String>? cryptoKeyName;
  /// The location for the resource
  final pulumi.Input<String>? location;
  /// Required. The resource name of the config. Must be in the format of, `projects/{project}/locations/{location}/googleChannelConfig`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Output only. The last-modified time.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GoogleChannelConfigState].
  /// [cryptoKeyName] Optional. Resource name of a KMS crypto key (managed by the user) used to encrypt/decrypt their event data. It must match the pattern `projects/*/locations/*/keyRings/*/cryptoKeys/*`.
  /// [location] The location for the resource
  /// [name] Required. The resource name of the config. Must be in the format of, `projects/{project}/locations/{location}/googleChannelConfig`.
  /// [project] The ID of the project in which the resource belongs.
  /// [updateTime] Output only. The last-modified time.
  GoogleChannelConfigState({
    pulumi.Output<String>? cryptoKeyName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? updateTime,
  }) :
      cryptoKeyName = pulumi.Input.asOptionalInput<String>(cryptoKeyName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyName': ?cryptoKeyName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'updateTime': ?updateTime,
    };
  }

  factory GoogleChannelConfigState.fromMap(Map<String, dynamic> map) {
    return GoogleChannelConfigState(
      cryptoKeyName: map['cryptoKeyName'] == null ? null : pulumi.Output.create<String>(map['cryptoKeyName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

