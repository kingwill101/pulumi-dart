// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_gi_versions_get_gi_versions_args_doc}
/// Arguments for getGiVersions.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_gi_versions_get_gi_versions_args_doc}
class GetGiVersionsArgs {
  /// The Azure Region to query for the GI Versions in.
  final pulumi.Input<String> location;
  /// The model name of the Cloud Exadata Infrastructure resource. Possible values are `ExaDbXS`, `Exadata.X9M`, and `Exadata.X11M`. This is used to filter out the available GI versions compatible with the given model.
  final pulumi.Input<String>? shape;
  /// Indicates the Azure zone for the Cloud Exadata Infrastructure, used to filter the available GI versions within a given zone.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetGiVersionsArgs].
  /// [location] The Azure Region to query for the GI Versions in.
  /// [shape] The model name of the Cloud Exadata Infrastructure resource. Possible values are `ExaDbXS`, `Exadata.X9M`, and `Exadata.X11M`. This is used to filter out the available GI versions compatible with the given model.
  /// [zone] Indicates the Azure zone for the Cloud Exadata Infrastructure, used to filter the available GI versions within a given zone.
  GetGiVersionsArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? shape,
    pulumi.Output<String>? zone,
  }) :
      location = pulumi.Input.asInput<String>(location),
      shape = pulumi.Input.asOptionalInput<String>(shape),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'shape': ?shape,
      'zone': ?zone,
    };
  }

  factory GetGiVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetGiVersionsArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      shape: map['shape'] == null ? null : pulumi.Output.create<String>(map['shape'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

