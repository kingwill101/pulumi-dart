// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCustomConnector.
class GetCustomConnectorResult {
  /// Created time.
  final String createTime;
  /// Type of the custom connector.
  final String customConnectorType;
  /// Optional. Description of the resource.
  final String description;
  /// Optional. Display name.
  final String displayName;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String> labels;
  /// Launch stage.
  final String launchStage;
  /// Optional. Logo of the resource.
  final String logo;
  /// Identifier. Resource name of the CustomConnector. Format: projects/{project}/locations/{location}/customConnectors/{connector}
  final String name;
  /// Updated time.
  final String updateTime;

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
    required this.createTime,
    required this.customConnectorType,
    required this.description,
    required this.displayName,
    required this.labels,
    required this.launchStage,
    required this.logo,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'customConnectorType': customConnectorType,
      'description': description,
      'displayName': displayName,
      'labels': labels,
      'launchStage': launchStage,
      'logo': logo,
      'name': name,
      'updateTime': updateTime,
    };
  }

  factory GetCustomConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetCustomConnectorResult(
      createTime: map['createTime'] as String,
      customConnectorType: map['customConnectorType'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      launchStage: map['launchStage'] as String,
      logo: map['logo'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

