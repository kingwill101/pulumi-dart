// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_oracle_get_db_system_shapes_get_db_system_shapes_args_doc}
/// Arguments for getDbSystemShapes.
/// {@endtemplate}
/// {@macro pulumi_oracle_get_db_system_shapes_get_db_system_shapes_args_doc}
class GetDbSystemShapesArgs {
  /// The Azure Region to query for the system shapes in.
  final pulumi.Input<String> location;
  /// The Cloud Exadata Infrastructure Azure zone, used to filter out the available DB System Shapes in the specific zone.
  final pulumi.Input<String>? zone;

  /// Creates a new [GetDbSystemShapesArgs].
  /// [location] The Azure Region to query for the system shapes in.
  /// [zone] The Cloud Exadata Infrastructure Azure zone, used to filter out the available DB System Shapes in the specific zone.
  GetDbSystemShapesArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? zone,
  }) :
      location = pulumi.Input.asInput<String>(location),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'zone': ?zone,
    };
  }

  factory GetDbSystemShapesArgs.fromMap(Map<String, dynamic> map) {
    return GetDbSystemShapesArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}

