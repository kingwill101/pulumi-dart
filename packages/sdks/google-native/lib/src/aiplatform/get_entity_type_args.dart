// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1_get_entity_type_args_doc}
/// Arguments for getEntityType.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1_get_entity_type_args_doc}
class GetEntityTypeArgs {
  final pulumi.Input<String> entityTypeId;
  final pulumi.Input<String> featurestoreId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEntityTypeArgs].
  /// [entityTypeId] Required.
  /// [featurestoreId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEntityTypeArgs({
    required this.entityTypeId,
    required this.featurestoreId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityTypeId': entityTypeId,
      'featurestoreId': featurestoreId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEntityTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetEntityTypeArgs(
      entityTypeId: pulumi.Input.fromValue(map['entityTypeId'] as String),
      featurestoreId: pulumi.Input.fromValue(map['featurestoreId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
