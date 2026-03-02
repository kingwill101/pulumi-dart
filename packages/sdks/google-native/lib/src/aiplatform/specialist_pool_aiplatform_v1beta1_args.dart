// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aiplatform_v1beta1_specialist_pool_aiplatform_v1beta1_args_doc}
/// The set of arguments for SpecialistPool.
/// {@endtemplate}
/// {@macro pulumi_aiplatform_v1beta1_specialist_pool_aiplatform_v1beta1_args_doc}
class SpecialistPoolAiplatformV1beta1Args {
  /// The user-defined name of the SpecialistPool. The name can be up to 128 characters long and can consist of any UTF-8 characters. This field should be unique on project-level.
  final pulumi.Input<String> displayName;
  final pulumi.Input<String>? location;
  /// The resource name of the SpecialistPool.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The email addresses of the managers in the SpecialistPool.
  final pulumi.Input<List<String>>? specialistManagerEmails;
  /// The email addresses of workers in the SpecialistPool.
  final pulumi.Input<List<String>>? specialistWorkerEmails;

  /// Creates a new [SpecialistPoolAiplatformV1beta1Args].
  /// [displayName] The user-defined name of the SpecialistPool. The name can be up to 128 characters long and can consist of any UTF-8 characters. This field should be unique on project-level.
  /// [location] Optional.
  /// [name] The resource name of the SpecialistPool.
  /// [project] Optional.
  /// [specialistManagerEmails] The email addresses of the managers in the SpecialistPool.
  /// [specialistWorkerEmails] The email addresses of workers in the SpecialistPool.
  SpecialistPoolAiplatformV1beta1Args({
    required this.displayName,
    this.location,
    this.name,
    this.project,
    this.specialistManagerEmails,
    this.specialistWorkerEmails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': displayName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'specialistManagerEmails': ?specialistManagerEmails,
      'specialistWorkerEmails': ?specialistWorkerEmails,
    };
  }

  factory SpecialistPoolAiplatformV1beta1Args.fromMap(Map<String, dynamic> map) {
    return SpecialistPoolAiplatformV1beta1Args(
      displayName: (map['displayName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      specialistManagerEmails: map['specialistManagerEmails'] == null ? null : ((map['specialistManagerEmails'] as List).cast<String>()).input(),
      specialistWorkerEmails: map['specialistWorkerEmails'] == null ? null : ((map['specialistWorkerEmails'] as List).cast<String>()).input(),
    );
  }
}

