// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lake_metastore.dart';

/// {@template pulumi_dataplex_lake_lake_args_doc}
/// The set of arguments for Lake.
/// {@endtemplate}
/// {@macro pulumi_dataplex_lake_lake_args_doc}
class LakeArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Optional. Description of the lake.
  final pulumi.Input<String>? description;
  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;
  /// Optional. User-defined labels for the lake.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// Optional. Settings to manage lake and Dataproc Metastore service instance association.
  final pulumi.Input<LakeMetastore>? metastore;
  /// The name of the lake.
  ///
  ///
  ///
  /// - - -
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;

  /// Creates a new [LakeArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] Optional. Description of the lake.
  /// [displayName] Optional. User friendly display name.
  /// [labels] Optional. User-defined labels for the lake.
  /// [location] The location for the resource
  /// [metastore] Optional. Settings to manage lake and Dataproc Metastore service instance association.
  /// [name] The name of the lake.
  /// [project] The project for the resource
  const LakeArgs({
    this.deletionPolicy,
    this.description,
    this.displayName,
    this.labels,
    required this.location,
    this.metastore,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': location,
      'metastore': ?pulumi.Input.mapOptionalInputValue<LakeMetastore, Map<String, dynamic>>(metastore, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
    };
  }

  factory LakeArgs.fromMap(Map<String, dynamic> map) {
    return LakeArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      metastore: (() { final guardedValue = map['metastore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LakeMetastore.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
