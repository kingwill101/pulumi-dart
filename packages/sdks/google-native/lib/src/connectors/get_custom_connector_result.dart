// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCustomConnector.
class GetCustomConnectorResult {
  /// Created time.
  final String? createTime;
  /// Type of the custom connector.
  final String? customConnectorType;
  /// Optional. Description of the resource.
  final String? description;
  /// Optional. Display name.
  final String? displayName;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String>? labels;
  /// Launch stage.
  final String? launchStage;
  /// Optional. Logo of the resource.
  final String? logo;
  /// Identifier. Resource name of the CustomConnector. Format: projects/{project}/locations/{location}/customConnectors/{connector}
  final String? name;
  /// Updated time.
  final String? updateTime;

  /// Creates a new [GetCustomConnectorResult].
  /// [createTime] Created time.
  /// [customConnectorType] Type of the custom connector.
  /// [description] Optional. Description of the resource.
  /// [displayName] Optional. Display name.
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [launchStage] Launch stage.
  /// [logo] Optional. Logo of the resource.
  /// [name] Identifier. Resource name of the CustomConnector. Format: projects/{project}/locations/{location}/customConnectors/{connector}
  /// [updateTime] Updated time.
  const GetCustomConnectorResult({
    this.createTime,
    this.customConnectorType,
    this.description,
    this.displayName,
    this.labels,
    this.launchStage,
    this.logo,
    this.name,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'customConnectorType': ?customConnectorType,
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'launchStage': ?launchStage,
      'logo': ?logo,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }

  factory GetCustomConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetCustomConnectorResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customConnectorType: (() { final guardedValue = map['customConnectorType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      launchStage: (() { final guardedValue = map['launchStage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logo: (() { final guardedValue = map['logo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
