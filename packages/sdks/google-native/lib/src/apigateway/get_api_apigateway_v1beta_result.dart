// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApi.
class GetApiApigatewayV1betaResult {
  /// Created time.
  final String? createTime;
  /// Optional. Display name.
  final String? displayName;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String>? labels;
  /// Optional. Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed). If not specified, a new Service will automatically be created in the same project as this API.
  final String? managedService;
  /// Resource name of the API. Format: projects/{project}/locations/global/apis/{api}
  final String? name;
  /// State of the API.
  final String? state;
  /// Updated time.
  final String? updateTime;

  /// Creates a new [GetApiApigatewayV1betaResult].
  /// [createTime] Created time.
  /// [displayName] Optional. Display name.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [managedService] Optional. Immutable. The name of a Google Managed Service ( https://cloud.google.com/service-infrastructure/docs/glossary#managed). If not specified, a new Service will automatically be created in the same project as this API.
  /// [name] Resource name of the API. Format: projects/{project}/locations/global/apis/{api}
  /// [state] State of the API.
  /// [updateTime] Updated time.
  const GetApiApigatewayV1betaResult({
    this.createTime,
    this.displayName,
    this.labels,
    this.managedService,
    this.name,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'labels': ?labels,
      'managedService': ?managedService,
      'name': ?name,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory GetApiApigatewayV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetApiApigatewayV1betaResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      managedService: (() { final guardedValue = map['managedService']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
