// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_cmek_settings.dart';

/// {@template pulumi_observability_bucket_bucket_args_doc}
/// The set of arguments for Bucket.
/// {@endtemplate}
/// {@macro pulumi_observability_bucket_bucket_args_doc}
class BucketArgs {
  /// A client-assigned identifier for the bucket.
  final pulumi.Input<String> bucketId;
  /// Settings for configuring CMEK for a bucket.
  /// Structure is documented below.
  final pulumi.Input<BucketCmekSettings?>? cmekSettings;
  /// Description of the bucket.
  final pulumi.Input<String?>? description;
  /// User friendly display name.
  final pulumi.Input<String?>? displayName;
  /// The location of the bucket.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [BucketArgs].
  /// [bucketId] A client-assigned identifier for the bucket.
  /// [cmekSettings] Settings for configuring CMEK for a bucket.
  /// [description] Description of the bucket.
  /// [displayName] User friendly display name.
  /// [location] The location of the bucket.
  /// [project] The ID of the project in which the resource belongs.
  const BucketArgs({
    required this.bucketId,
    this.cmekSettings,
    this.description,
    this.displayName,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketId': bucketId,
      'cmekSettings': ?pulumi.Input.mapOptionalInputValue<BucketCmekSettings, Map<String, dynamic>>(cmekSettings, (value) => value.toMap()),
      'description': ?description,
      'displayName': ?displayName,
      'location': location,
      'project': ?project,
    };
  }

  factory BucketArgs.fromMap(Map<String, dynamic> map) {
    return BucketArgs(
      bucketId: pulumi.Input.fromValue(map['bucketId'] as String),
      cmekSettings: (() { final guardedValue = map['cmekSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BucketCmekSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
