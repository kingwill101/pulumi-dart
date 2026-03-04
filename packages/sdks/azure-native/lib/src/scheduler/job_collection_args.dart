// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_collection_properties.dart';

/// {@template pulumi_scheduler_job_collection_args_doc}
/// The set of arguments for JobCollection.
/// {@endtemplate}
/// {@macro pulumi_scheduler_job_collection_args_doc}
class JobCollectionArgs {
  /// The job collection name.
  final pulumi.Input<String>? jobCollectionName;

  /// Gets or sets the storage account location.
  final pulumi.Input<String>? location;

  /// Gets or sets the job collection resource name.
  final pulumi.Input<String>? name;

  /// Gets or sets the job collection properties.
  final pulumi.Input<JobCollectionProperties>? properties;

  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Gets or sets the tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [JobCollectionArgs].
  /// [jobCollectionName] The job collection name.
  /// [location] Gets or sets the storage account location.
  /// [name] Gets or sets the job collection resource name.
  /// [properties] Gets or sets the job collection properties.
  /// [resourceGroupName] The resource group name.
  /// [tags] Gets or sets the tags.
  JobCollectionArgs({
    this.jobCollectionName,
    this.location,
    this.name,
    this.properties,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobCollectionName': ?jobCollectionName,
      'location': ?location,
      'name': ?name,
      'properties':
          ?pulumi.Input.mapOptionalInputValue<
            JobCollectionProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory JobCollectionArgs.fromMap(Map<String, dynamic> map) {
    return JobCollectionArgs(
      jobCollectionName: (() {
        final guardedValue = map['jobCollectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobCollectionProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
