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
  const GetGiVersionsArgs({
    required this.location,
    this.shape,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'shape': ?shape,
      'zone': ?zone,
    };
  }

  factory GetGiVersionsArgs.fromMap(Map<String, dynamic> map) {
    return GetGiVersionsArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      shape: (() { final guardedValue = map['shape']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

