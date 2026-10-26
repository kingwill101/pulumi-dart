// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExport.
class GetExportResult {
  /// Time the export job was created.
  final String? created;
  /// Name of the datastore that is the destination of the export job [datastore]
  final String? datastoreName;
  /// Description of the export job.
  final String? description;
  /// Error is set when export fails
  final String? error;
  /// Execution time for this export job. If the job is still in progress, it will be set to the amount of time that has elapsed since`created`, in seconds. Else, it will set to (`updated` - `created`), in seconds.
  final String? executionTime;
  /// Display name of the export job.
  final String? name;
  /// Self link of the export job. A URI that can be used to retrieve the status of an export job. Example: `/organizations/myorg/environments/myenv/analytics/exports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`
  final String? self;
  /// Status of the export job. Valid values include `enqueued`, `running`, `completed`, and `failed`.
  final String? state;
  /// Time the export job was last updated.
  final String? updated;

  /// Creates a new [GetExportResult].
  /// [created] Time the export job was created.
  /// [datastoreName] Name of the datastore that is the destination of the export job [datastore]
  /// [description] Description of the export job.
  /// [error] Error is set when export fails
  /// [executionTime] Execution time for this export job. If the job is still in progress, it will be set to the amount of time that has elapsed since`created`, in seconds. Else, it will set to (`updated` - `created`), in seconds.
  /// [name] Display name of the export job.
  /// [self] Self link of the export job. A URI that can be used to retrieve the status of an export job. Example: `/organizations/myorg/environments/myenv/analytics/exports/9cfc0d85-0f30-46d6-ae6f-318d0cb961bd`
  /// [state] Status of the export job. Valid values include `enqueued`, `running`, `completed`, and `failed`.
  /// [updated] Time the export job was last updated.
  const GetExportResult({
    this.created,
    this.datastoreName,
    this.description,
    this.error,
    this.executionTime,
    this.name,
    this.self,
    this.state,
    this.updated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'created': ?created,
      'datastoreName': ?datastoreName,
      'description': ?description,
      'error': ?error,
      'executionTime': ?executionTime,
      'name': ?name,
      'self': ?self,
      'state': ?state,
      'updated': ?updated,
    };
  }

  factory GetExportResult.fromMap(Map<String, dynamic> map) {
    return GetExportResult(
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      datastoreName: (() { final guardedValue = map['datastoreName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return guardedValue as String; })(),
      executionTime: (() { final guardedValue = map['executionTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      self: (() { final guardedValue = map['self']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updated: (() { final guardedValue = map['updated']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
