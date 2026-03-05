// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProjectService.
class GetProjectServiceResult {
  final bool checkIfServiceHasUsageOnDestroy;
  final bool disableDependentServices;
  final bool disableOnDestroy;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? project;
  final String service;

  /// Creates a new [GetProjectServiceResult].
  /// [checkIfServiceHasUsageOnDestroy] Required.
  /// [disableDependentServices] Required.
  /// [disableOnDestroy] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Optional.
  /// [service] Required.
  GetProjectServiceResult({
    required this.checkIfServiceHasUsageOnDestroy,
    required this.disableDependentServices,
    required this.disableOnDestroy,
    required this.id,
    this.project,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkIfServiceHasUsageOnDestroy': checkIfServiceHasUsageOnDestroy,
      'disableDependentServices': disableDependentServices,
      'disableOnDestroy': disableOnDestroy,
      'id': id,
      'project': ?project,
      'service': service,
    };
  }

  factory GetProjectServiceResult.fromMap(Map<String, dynamic> map) {
    return GetProjectServiceResult(
      checkIfServiceHasUsageOnDestroy: map['checkIfServiceHasUsageOnDestroy'] as bool,
      disableDependentServices: map['disableDependentServices'] as bool,
      disableOnDestroy: map['disableOnDestroy'] as bool,
      id: map['id'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      service: map['service'] as String,
    );
  }
}

