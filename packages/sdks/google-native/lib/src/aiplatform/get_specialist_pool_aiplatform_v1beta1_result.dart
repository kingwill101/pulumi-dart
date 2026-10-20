// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSpecialistPool.
class GetSpecialistPoolAiplatformV1beta1Result {
  /// The user-defined name of the SpecialistPool. The name can be up to 128 characters long and can consist of any UTF-8 characters. This field should be unique on project-level.
  final String? displayName;
  /// The resource name of the SpecialistPool.
  final String? name;
  /// The resource name of the pending data labeling jobs.
  final List<String>? pendingDataLabelingJobs;
  /// The email addresses of the managers in the SpecialistPool.
  final List<String>? specialistManagerEmails;
  /// The number of managers in this SpecialistPool.
  final int? specialistManagersCount;
  /// The email addresses of workers in the SpecialistPool.
  final List<String>? specialistWorkerEmails;

  /// Creates a new [GetSpecialistPoolAiplatformV1beta1Result].
  /// [displayName] The user-defined name of the SpecialistPool. The name can be up to 128 characters long and can consist of any UTF-8 characters. This field should be unique on project-level.
  /// [name] The resource name of the SpecialistPool.
  /// [pendingDataLabelingJobs] The resource name of the pending data labeling jobs.
  /// [specialistManagerEmails] The email addresses of the managers in the SpecialistPool.
  /// [specialistManagersCount] The number of managers in this SpecialistPool.
  /// [specialistWorkerEmails] The email addresses of workers in the SpecialistPool.
  const GetSpecialistPoolAiplatformV1beta1Result({
    this.displayName,
    this.name,
    this.pendingDataLabelingJobs,
    this.specialistManagerEmails,
    this.specialistManagersCount,
    this.specialistWorkerEmails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'name': ?name,
      'pendingDataLabelingJobs': ?pendingDataLabelingJobs,
      'specialistManagerEmails': ?specialistManagerEmails,
      'specialistManagersCount': ?specialistManagersCount,
      'specialistWorkerEmails': ?specialistWorkerEmails,
    };
  }

  factory GetSpecialistPoolAiplatformV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetSpecialistPoolAiplatformV1beta1Result(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pendingDataLabelingJobs: (() { final guardedValue = map['pendingDataLabelingJobs']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      specialistManagerEmails: (() { final guardedValue = map['specialistManagerEmails']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      specialistManagersCount: (() { final guardedValue = map['specialistManagersCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      specialistWorkerEmails: (() { final guardedValue = map['specialistWorkerEmails']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
