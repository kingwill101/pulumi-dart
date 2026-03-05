// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VolumeTypeV3 resources.
class VolumeTypeV3State {
  /// Human-readable description of the port. Changing
  /// this updates the `description` of an existing volume type.
  final pulumi.Input<String>? description;
  /// Key/Value pairs of metadata for the volume type.
  final pulumi.Input<Map<String, String>>? extraSpecs;
  /// Whether the volume type is public. Changing
  /// this updates the `is_public` of an existing volume type.
  final pulumi.Input<bool>? isPublic;
  /// Name of the volume type.  Changing this
  /// updates the `name` of an existing volume type.
  final pulumi.Input<String>? name;
  /// The region in which to create the volume. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new quotaset.
  final pulumi.Input<String>? region;

  /// Creates a new [VolumeTypeV3State].
  /// [description] Human-readable description of the port. Changing
  /// [extraSpecs] Key/Value pairs of metadata for the volume type.
  /// [isPublic] Whether the volume type is public. Changing
  /// [name] Name of the volume type.  Changing this
  /// [region] The region in which to create the volume. If
  VolumeTypeV3State({
    this.description,
    this.extraSpecs,
    this.isPublic,
    this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'extraSpecs': ?extraSpecs,
      'isPublic': ?isPublic,
      'name': ?name,
      'region': ?region,
    };
  }

  factory VolumeTypeV3State.fromMap(Map<String, dynamic> map) {
    return VolumeTypeV3State(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      extraSpecs: (() { final guardedValue = map['extraSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      isPublic: (() { final guardedValue = map['isPublic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

