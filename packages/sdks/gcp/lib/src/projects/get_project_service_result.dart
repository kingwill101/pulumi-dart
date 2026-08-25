// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProjectService.
class GetProjectServiceResult {
  final bool? checkIfServiceHasUsageOnDestroy;
  final String? deletionPolicy;
  final bool? disableDependentServices;
  final bool? disableOnDestroy;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? project;
  final String? service;

  /// Creates a new [GetProjectServiceResult].
  /// [checkIfServiceHasUsageOnDestroy] Optional.
  /// [deletionPolicy] Optional.
  /// [disableDependentServices] Optional.
  /// [disableOnDestroy] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Optional.
  /// [service] Optional.
  const GetProjectServiceResult({
    this.checkIfServiceHasUsageOnDestroy,
    this.deletionPolicy,
    this.disableDependentServices,
    this.disableOnDestroy,
    this.id,
    this.project,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkIfServiceHasUsageOnDestroy': ?checkIfServiceHasUsageOnDestroy,
      'deletionPolicy': ?deletionPolicy,
      'disableDependentServices': ?disableDependentServices,
      'disableOnDestroy': ?disableOnDestroy,
      'id': ?id,
      'project': ?project,
      'service': ?service,
    };
  }

  factory GetProjectServiceResult.fromMap(Map<String, dynamic> map) {
    return GetProjectServiceResult(
      checkIfServiceHasUsageOnDestroy: (() { final guardedValue = map['checkIfServiceHasUsageOnDestroy']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disableDependentServices: (() { final guardedValue = map['disableDependentServices']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      disableOnDestroy: (() { final guardedValue = map['disableOnDestroy']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
