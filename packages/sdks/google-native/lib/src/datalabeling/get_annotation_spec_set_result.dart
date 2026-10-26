// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datalabeling_v1beta1_annotation_spec_response.dart';

/// Result data returned by getAnnotationSpecSet.
class GetAnnotationSpecSetResult {
  /// The array of AnnotationSpecs that you define when you create the AnnotationSpecSet. These are the possible labels for the labeling task.
  final List<GoogleCloudDatalabelingV1beta1AnnotationSpecResponse>? annotationSpecs;
  /// The names of any related resources that are blocking changes to the annotation spec set.
  final List<String>? blockingResources;
  /// Optional. User-provided description of the annotation specification set. The description can be up to 10,000 characters long.
  final String? description;
  /// The display name for AnnotationSpecSet that you define when you create it. Maximum of 64 characters.
  final String? displayName;
  /// The AnnotationSpecSet resource name in the following format: "projects/{project_id}/annotationSpecSets/{annotation_spec_set_id}"
  final String? name;

  /// Creates a new [GetAnnotationSpecSetResult].
  /// [annotationSpecs] The array of AnnotationSpecs that you define when you create the AnnotationSpecSet. These are the possible labels for the labeling task.
  /// [blockingResources] The names of any related resources that are blocking changes to the annotation spec set.
  /// [description] Optional. User-provided description of the annotation specification set. The description can be up to 10,000 characters long.
  /// [displayName] The display name for AnnotationSpecSet that you define when you create it. Maximum of 64 characters.
  /// [name] The AnnotationSpecSet resource name in the following format: "projects/{project_id}/annotationSpecSets/{annotation_spec_set_id}"
  const GetAnnotationSpecSetResult({
    this.annotationSpecs,
    this.blockingResources,
    this.description,
    this.displayName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationSpecs': ?(() { final guardedValue = annotationSpecs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GoogleCloudDatalabelingV1beta1AnnotationSpecResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'blockingResources': ?blockingResources,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
    };
  }

  factory GetAnnotationSpecSetResult.fromMap(Map<String, dynamic> map) {
    return GetAnnotationSpecSetResult(
      annotationSpecs: (() { final guardedValue = map['annotationSpecs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudDatalabelingV1beta1AnnotationSpecResponse>(guardedValue, (value) => GoogleCloudDatalabelingV1beta1AnnotationSpecResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      blockingResources: (() { final guardedValue = map['blockingResources']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
